# Using NLP for Data Visualization

## Create a virtual environment
```
pip install virtualenv -g
virtualenv ~/.analytics_webservice
source ~/.analytics_webservice/bin/activate
```

## Install the dependencies
```
pip install -r requirements.txt
python -m spacy download en
```

## Start the backend server
```
python app.py
```
