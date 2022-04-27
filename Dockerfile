FROM eu.gcr.io/connect-f7e5b/elective/python37-with-spacy

EXPOSE 80

# Add app
COPY ./pyresparser /pyresparser

WORKDIR /pyresparser

CMD ["gunicorn", "-b", "0.0.0.0:80", "--reload", "main:pyresparser"]
