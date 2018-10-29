FROM ubuntu:16.04
MAINTAINER menikolenko <menikolenko@gmail.com>
RUN apt-get update && apt-get install -y netcat
WORKDIR /app
COPY ./web-api.sh /app
RUN chmod +x ./web-api.sh
EXPOSE 8001
ENTRYPOINT ["/app/web-api.sh"]
