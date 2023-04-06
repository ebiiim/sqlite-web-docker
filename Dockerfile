FROM python:3.11-alpine

RUN apk add --no-cache sqlite

RUN pip install --no-cache-dir sqlite-web==0.4.1

EXPOSE 8080
ENTRYPOINT ["sqlite_web", "--no-browser", "-H", "0.0.0.0"]
