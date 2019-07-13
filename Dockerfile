FROM python:3.7-alpine3.9

RUN apk update && apk add postgresql-dev gcc python3-dev musl-dev

WORKDIR /app

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY ./src /app

CMD [ 'python' ]
