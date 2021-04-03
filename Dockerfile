FROM python:3.8-alpine

ENV PYTHONUNBUFFERED 1

ENV APP_PATH=/app
RUN mkdir ${APP_PATH}
WORKDIR ${APP_PATH}
COPY . ${APP_PATH}

RUN python -m pip install --upgrade pip
RUN pip install -r requirements.txt

# Create user to run the application using Docker
RUN adduser -D myuser
USER myuser
