FROM python:3.8.2-alpine

ENV APP_DIR /src/app/
WORKDIR /src/app/
EXPOSE 80

RUN mkdir -p $APP_DIR

COPY ./requirements.txt ${APP_DIR}

WORKDIR ${APP_DIR}
COPY ./requirements.txt .

RUN ["pip", "install", "-r", "./requirements.txt"]

#COPY . .

#RUN addgroup -S projects && adduser -S -H projects -G projects
#RUN chown -R projects:projects /src/app
#USER projects
