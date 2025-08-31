# Сервер (облако)

Главный юнит/нода

Отвечает за реализацию [RESP API](../api/index.md)

## Запуск

Для запуска необходимо задать переменные среды:

- `RABBITMQ_URL`. Пример значения: `amqp://guest:guest@localhost:5672/`.
- `CONNECTOR_GRPC_ADDR`. Пример значения: `connector:8081`.
