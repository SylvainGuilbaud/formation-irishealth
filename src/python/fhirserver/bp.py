from hashlib import sha256
import json
import uuid

import iris

from iop import BusinessProcess

class FhirServerProcess(BusinessProcess):

    def on_request(self, request):
      
        requestOscar = request._ConstructClone(1)
        ## copy the quickstream otherwise it will be deleted
        if request.QuickStreamId:
            quickStreamId = request.QuickStreamId
            # change the id of the resource
            quickStreamOscar = self.new_uuid(quickStreamId)

            ## set the quickstream to the request
            requestOscar.QuickStreamId = quickStreamOscar.Id

        request.Request.SessionApplication = "/lorah"

        ## send it to the FHIRServer
        rsp = self.send_request_sync("HS.FHIRServer.Interop.Operation",request)

        whatever = 1

        if whatever :
            self.send_request_sync("HS.FHIRServer.Interop.HTTPOperation",requestOscar)
        
        return rsp

    def new_uuid(self, quick_stream_id)->'iris.HS.SDA3.QuickStream':
        # Open the payload stream
        body = json.loads(self._quick_stream_to_string(quick_stream_id))
        list_of_ids = []
        # check if it's a bundle
        if body.get('resourceType') == 'Bundle':
            for entry in body.get('entry', []):
                if entry.get('resource', {}).get('id'):
                    old_id = entry['resource']['id']
                    new_id = str(uuid.UUID(bytes=sha256(old_id.encode()).digest()[:16]))
                    list_of_ids.append((old_id, new_id))
        else:
            if body.get('id'):
                old_id = body['id']
                new_id = str(uuid.UUID(old_id))
                list_of_ids.append((old_id, new_id))
        # replace the old ids with the new ones
        for old_id, new_id in list_of_ids:
            body = self._replace_id(body, old_id, new_id)

        # save the new payload
        quick_stream = self._string_to_quick_stream(json.dumps(body))
        return quick_stream

    def _replace_id(self, obj, old_id, new_id):
        if isinstance(obj, dict):
            json_string = json.dumps(obj)
            json_string = json_string.replace(old_id, new_id)
            return json.loads(json_string)
        elif isinstance(obj, list):
            return [self._replace_id(item, old_id, new_id) for item in obj]
        else:
            return obj

    def _quick_stream_to_string(self, quick_stream_id) -> str:
        quick_stream = iris.cls('HS.SDA3.QuickStream')._OpenId(quick_stream_id)
        json_payload = ''
        while quick_stream.AtEnd == 0:
            json_payload += quick_stream.Read()

        return json_payload
    
    def _string_to_quick_stream(self, json_string:str):
        quick_stream = iris.cls('HS.SDA3.QuickStream')._New()

        # write the json string to the payload
        n = 3000
        chunks = [json_string[i:i+n] for i in range(0, len(json_string), n)]
        for chunk in chunks:
            quick_stream.Write(chunk)

        quick_stream.Rewind()
        quick_stream._Save()

        return quick_stream
