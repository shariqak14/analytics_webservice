# Using NLP for Data Visualization

## Clone the repository
```
git clone https://github.com/shariqak14/analytics_webservice.git
cd analytics_webservice/
```

## Install virtualenv
```
pip install virtualenv
```

## Activate the virtual environment
### MacOS/Linux
```
virtualenv ~/.analytics
source ~/.analytics/bin/activate
```
### Windows
```
virtualenv C:\.analytics
C:\.analytics\Scripts\activate.bat
```

## Install the dependencies
```
cd analytics/app
pip install -r requirements.txt
python -m nltk.downloader popular
python -m spacy download en_core_web_sm
```

## Start the backend server
```
python main.py
```
