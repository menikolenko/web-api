FROM ubuntu:16.04
MAILTAINER menikolenko <menikolenko@gmail.com>
WORKDIR /app
COPY ./web-api /app
ENTRYPOINT ["/app/web-api.sh"]
