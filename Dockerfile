FROM python:alpine3.7 
COPY . /app
WORKDIR /app
RUN pip install --upgrade pip && \
    pip install -r requirements.txt && \
    python3 -m spacy download en
EXPOSE 5000
ENTRYPOINT [ "python3" ] 
CMD [ "app.py" ] 