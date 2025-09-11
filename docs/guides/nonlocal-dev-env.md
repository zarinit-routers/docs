# Нелокальная среда разработки

На данный момент сервер для тестирования развёрнут на `79.174.70.81`.
На нём же на порту `:8000` развёрнут сервер документации.

## Подключение роутера

Для подключения "роутера" к серверу склонируйте на ПК репозиторий `router-server` <https://github.com/zarinit-routers/router-server>, перейдите в папку с репозиторием.

Сгенерируйте новый UUID, для этого можно использовать сай <https://guidgenerator.com/> или любой другой генератор UUID. Вставьте сгенерированный UUID в файл `router-config.yml` в поле `device.id`.

Эту процедуру нужно проводить только один раз на устройстве, в ином случае будет создано множество "пустышек на сервере".

В файле `cloud-config.yml` в поле `passphrase` введите любую строку (на данный момент проверка парольной фразы не реализована). `cloud-host` в том же файле замените на `79.174.70.81`. `organization-id` замените на `00000000-0000-0000-0000-000000000000` (дефолтный ID организации, его не стоит генерировать)

Затем запустите сервер:

```bash
go run cmd/server/main.go -dev-test
```

Для доступа к ресурсам используйте JSON Web Token (JWT):

```jwt
eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwidXNlcklkIjoiMDAwMDAwMDAtMDAwMC0wMDAwLTAwMDAtMDAwMDAwMDAwMDAwIiwiZ3JvdXBJZCI6IjAwMDAwMDAwLTAwMDAtMDAwMC0wMDAwLTAwMDAwMDAwMDAwMCIsImlhdCI6MTc1NzIzNjM4MiwiZXhwIjoxNzg4NzcyMzgwLCJyb2xlcyI6WyJhZG1pbiJdfQ.ZV5vg7SgZk-KGCfJPfDyddp4HSf8baRv11mRyB3uhJhhHcyP8ShSoAHxoJswJPAP5KnE0N8Dem7eNqWyOYbq-Q
```

Это токен для пользователя с payload:

```json
{
    "id": "00000000-0000-0000-0000-000000000000`", 
    "organizationId": "00000000-0000-0000-0000-000000000000", 
    "roles": [ "admin" ]
}
```
