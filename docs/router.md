# Роутер

## Сервер (API)

### `GET /api/cloud/config`

Возвращает конфиг для подключения к облаку

Response:

```json
{
  "config": {
    "Passphrase": "cool-password",
    "OrganizationId": "",
    "CloudHost": "localhost",
    "WSPort": 8071
  }
}
```

### `POST /api/cloud/config`

Изменяет конфиг для подключения к облаку и возвращает новый конфиг. На данный момент менять можно только `passphrase` и `organizationId`

Request:

```json
{
  "passphrase": "cool-password",
  "organizationId": "",
}
```

Пока конфиг присылается в `UpperCamelCase`, но запрос нужно делать используя `loverCamelCase`

Response: такой же как и в `GET /api/cloud/config`, только с новыми данными

### `POST /api/auth/login`

Авторизация пользователя

Request:

```json
{
  "username": "root",
  "password": "password"
}
```

Response:

```json
{
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiYWRtaW4iOnRydW"
}
```
