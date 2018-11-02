FROM ubuntu
MAINTAINER menikolenko <menikolenko@gmail.com>
RUN apt-get update && apt-get install -y netcat
WORKDIR /app
COPY ./web-api.sh /app
RUN chmod +x ./web-api.sh
ENTRYPOINT ["/app/web-api.sh"]
