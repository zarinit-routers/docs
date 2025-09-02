# Коннектор (cloud-connector)

|||
|-------------|------------------------------------------------|
|Репозиторий  | <https://github.com/zarinit-routers/cloud-connector>|
|_(без)_ Ответственный| Антон <https://github.com/Katy248>           |

Юнит для создания подключения между облаком и роутерами

## Запуск

Для запуска необходимо задать переменные среды:

- `RABBITMQ_URL` **ОБЯЗАТЕЛЬНАЯ**. Пример значения: `amqp://guest:guest@localhost:5672/`.
- `CONNECTOR_GRPC_ADDR` **ОБЯЗАТЕЛЬНАЯ**. Пример значения: `connector:8081`.
- `DATABASE_CONNECTION_STRING` **ОБЯЗАТЕЛЬНАЯ**. Пример значения: `postgres://postgres:postgres@localhost:5432/postgres` или `host='connector-database' user='connector' password='CoolPassword123' port='5432' dbname='connector-db' sslmode=disable`.
- `DATABASE_AUTO_MIGRATE` - если назначена на положительное значение (`1`, `true`, `yes`, в любом регистре) запускает миграцию при подключении к базе данных.
