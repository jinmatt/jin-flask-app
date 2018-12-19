FROM python:3.7.1-alpine3.8

COPY requirements.txt /
RUN pip install -r /requirements.txt

COPY . /app
WORKDIR /app

ENTRYPOINT [ "python" ]

CMD [ "main.py" ]