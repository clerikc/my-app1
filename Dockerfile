# Базовый образ Go
FROM golang:1.21-alpine AS builder

# Установка рабочей директории
WORKDIR /app

# Копирование исходного кода
COPY . .

# Компиляция приложения
RUN go build -o hello-world

# Финальный образ
FROM alpine:latest

WORKDIR /app

# Копирование бинарника из builder
COPY --from=builder /app/hello-world .

# Команда для запуска приложения
CMD ["./hello-world"]
