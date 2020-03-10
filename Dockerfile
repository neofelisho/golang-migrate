FROM golang:1.14-alpine
WORKDIR /app
RUN apk add --no-cache bash wget tar
RUN wget -c https://github.com/golang-migrate/migrate/releases/download/v4.9.1/migrate.linux-amd64.tar.gz -O - | tar -xz
RUN mv ./migrate.linux-amd64 /bin/migrate