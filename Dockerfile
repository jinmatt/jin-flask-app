FROM python:3.7.1-alpine3.8

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /app
WORKDIR /app

CMD [ "gunicorn", "-b", "0.0.0.0:5000", "main:app" ]