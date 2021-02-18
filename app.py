from flask import Flask, jsonify, abort, make_response, request
from flask_cors import cross_origin
from nl4dv import NL4DV
from utils import clean_dict
from get_data import get_parsed_data
import os

app = Flask(__name__)

PORT = 5000
HOST = "0.0.0.0"

@app.route("/")
@cross_origin()
def home():
    abort(404)


@app.route("/graph")
@cross_origin()
def create_dv_from_nl():
    """
    > curl http://localhost:5000/graph?query=create%20a%20boxplot%20of%20acceleration
    
    [x] Run the natural langauge through Jack's parser and get relevant data
    [x] Use the response as the input data for the NL4DV instance
    """

    # Extract query from the request url
    query = str(request.args.get("query"))
    if not query:
        abort(404)

    # Initialize an instance of NL4DV
    nl4dv_instance = NL4DV(data_value=get_parsed_data())

    # Set the Dependency Parser to spaCy
    dependency_parser_config = {
        "name": "spacy",
        "model": "en_core_web_sm",
        "parser": None,
    }
    nl4dv_instance.set_dependency_parser(config=dependency_parser_config)

    # Execute the query
    output = nl4dv_instance.analyze_query(query)

    # Get the list of corresponding visualization(s)
    vis_list = output["visList"]

    # Create a list that stores each preprocessed Vega Lite specification
    vl_spec_arr = []

    for vis_obj in vis_list:
        # Extract the Vega Lite specification of the data visualization and remove unnecessary specifications
        vl_spec = vis_obj["vlSpec"]
        vl_spec_clean = clean_dict(vl_spec)

        # Supply the original data source
        vl_spec_clean["data"] = {"values": get_parsed_data()}

        # Append each preprocessed Vega Lite specification
        vl_spec_arr.append(vl_spec_clean)

    # Return the list of the Vega Lite specifications as a JSON array
    return jsonify(vl_spec_arr)


@app.errorhandler(404)
@cross_origin()
def not_found(error):
    return make_response(jsonify({"error": "Not found"}), 404)


if __name__ == "__main__":
    app.run(debug=True, host=HOST, port=PORT)
