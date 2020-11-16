from nl4dv import NL4DV
from utils import clean_dict
import os
import json

# Initialize an instance of NL4DV
# https://www.cc.gatech.edu/~anarechania3/docs/publications/nl4dv_vis_2020.pdf
# https://nl4dv.github.io/nl4dv/documentation.html
nl4dv_instance = NL4DV(data_url=os.path.join("cars.csv"))

# Set the Dependency Parser to spaCy
dependency_parser_config = {"name": "spacy", "model": "en_core_web_sm", "parser": None}
nl4dv_instance.set_dependency_parser(config=dependency_parser_config)

# Define a query
# query = "create a boxplot of acceleration"
# query = "visualize the relationship between cylinders and mpg"
query = "show me the average mpg in each origin"

# Execute the query
output = nl4dv_instance.analyze_query(query)

# Get the list of corresponding visualizations
vis_list = output["visList"]

for vis_obj in vis_list:
    vl_spec = vis_obj["vlSpec"]
    vl_spec_clean = clean_dict(vl_spec)

    ############################################# DELETE THIS LATER ##############################################
    vl_spec_clean["data"] = {
        "url": "https://raw.githubusercontent.com/shariqak14/graph_nlp_data/main/cars.csv"
    }
    ##############################################################################################################

    vl_spec_json = json.dumps(vl_spec_clean)

    print(vl_spec_json)