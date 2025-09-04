# Организации

Это спецификация к REST API которую должен реализовать микросервис [cloud-organizations](../units/cloud-organizations.md)

## Authorization

Авторизация происходит через JWT токены. Токен должен быть задан в заголовке `Authorization` в формате `Authorization: <token>`. Каждый запрос требует авторизацию, некоторые требуют админских прав.

## Endpoints

- ### `GET /api/organizations/<id>`

_Пользователь должен состоять в организации для получения информации или быть администратором._

Response:

```json
{
    "id": "<id>",
    "name": "<name>",
    "passphrase": "<passphrase>",
    "creationDate": "<creation date>",
    "lastUpdate": "<last update>"
}
```

- ### `GET /api/organizations/`

_Admin only._

Response:

```json
{
    "organizations": [
        {
            "id": "<id>",
            "name": "<name>",
            "passphrase": "<passphrase>",
            "creationDate": "<creation date>",
            "lastUpdate": "<last update>"
        }
    ]
}
```

- ### `POST /api/organizations/update`

_Admin only._

- ### `POST /api/organizations/new`

_Admin only._

- ### `POST /api/organizations/generate-passphrase`

_Admin only._

- ### `POST /api/organizations/delete`

_Admin only._

- ### `POST /api/organizations/add-users`

_Admin only._

- ### `POST /api/organizations/remove-users`

_Admin only._

- ### `POST /api/organizations/authorize-node`

Request:

```json
{
    "id": "<node id>",
    "groupId": "<group id>",
    "passphrase": "<passphrase>"
}
```

Response:

```json
{
    "token": "<token>"
}
```

See [JWT format](../ipc/jwt-token.md#токены-для-нод)
