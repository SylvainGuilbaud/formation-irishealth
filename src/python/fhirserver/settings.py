from bp import FhirServerProcess

CLASSES = {
    "Python.FhirServerProcess": FhirServerProcess
}

PRODUCTIONS = [{
    "FHIRSERVERPKG.FoundationProduction": {
        "@Name": "FHIRSERVERPKG.FoundationProduction",
        "@LogGeneralTraceEvents": "false",
        "Description": "",
        "ActorPoolSize": "1",
        "Item": [
            {
                "@Name": "InteropService",
                "@Category": "",
                "@ClassName": "HS.FHIRServer.Interop.Service",
                "@PoolSize": "0",
                "@Enabled": "true",
                "@Foreground": "false",
                "@Comment": "",
                "@LogTraceEvents": "false",
                "@Schedule": "",
                "Setting": [
                    {
                        "@Target": "Host",
                        "@Name": "TargetConfigName",
                        "#text": "FHIRSERVERPKG.BP.FHIRProcess"
                    },
                    {
                        "@Target": "Host",
                        "@Name": "TraceOperations",
                        "#text": "*FULL*"
                    }
                ]
            },
            {
                "@Name": "HS.FHIRServer.Interop.HTTPOperation",
                "@Category": "",
                "@ClassName": "HS.FHIRServer.Interop.HTTPOperation",
                "@PoolSize": "1",
                "@Enabled": "true",
                "@Foreground": "false",
                "@Comment": "",
                "@LogTraceEvents": "false",
                "@Schedule": "",
                "Setting": {
                    "@Target": "Host",
                    "@Name": "ServiceName",
                    "#text": "oscar"
                }
            },
            {
                "@Name": "HS.FHIRServer.Interop.Operation",
                "@Category": "",
                "@ClassName": "HS.FHIRServer.Interop.Operation",
                "@PoolSize": "1",
                "@Enabled": "true",
                "@Foreground": "false",
                "@Comment": "",
                "@LogTraceEvents": "false",
                "@Schedule": ""
            },
            {
                "@Name": "HS.Util.Trace.Operations",
                "@Category": "",
                "@ClassName": "HS.Util.Trace.Operations",
                "@PoolSize": "1",
                "@Enabled": "true",
                "@Foreground": "false",
                "@Comment": "",
                "@LogTraceEvents": "false",
                "@Schedule": ""
            },
            {
                "@Name": "FHIRSERVERPKG.BP.FHIRProcess",
                "@Category": "",
                "@ClassName": "Python.FhirServerProcess",
                "@PoolSize": "1",
                "@Enabled": "true",
                "@Foreground": "false",
                "@Comment": "",
                "@LogTraceEvents": "false",
                "@Schedule": ""
            }
        ]
    }
}]