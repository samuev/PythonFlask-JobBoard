#FROM python:3.8.2-alpine
FROM python:3.8.10-alpine3.13

EXPOSE 5000
#ENV APP_DIR /jobs/app/
WORKDIR /jobs

#WORKDIR ${APP_DIR}

COPY ./requirements.txt app.py .

RUN pip install -r requirements.txt && \
    rm requirements.txt
	
CMD ["flask", "run"]

#COPY . .

#RUN addgroup -S projects && adduser -S -H projects -G projects
#RUN chown -R projects:projects /src/app
#USER projects
