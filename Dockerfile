FROM eu.gcr.io/connect-f7e5b/elective/python37-with-spacy

EXPOSE 80

# Add app
COPY ./electiveGroupCvParser /electiveGroupCvParser

WORKDIR /electiveGroupCvParser

CMD ["gunicorn", "-b", "0.0.0.0:80", "--reload", "main:electiveGroupCvParser"]
