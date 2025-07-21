# Базовый образ Go
FROM golang:1.21-alpine AS builder

# Установка рабочей директории
WORKDIR /app

# Копирование исходного кода
COPY . .

# Компиляция приложения (без модулей)
RUN GO111MODULE=off go build -o hello-world

# Финальный образ
FROM alpine:latest
WORKDIR /app
COPY --from=builder /app/hello-world .
CMD ["./hello-world"]
