from flask import Flask, request, jsonify

from jsonpath_ng import parse


app = Flask(__name__)



@app.route('/test', methods=['POST'])
def anonymize():
    fhir_data = request.json
    return jsonify(fhir_data)


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)