# Организации

Это спецификация к REST API которую должен реализовать микросервис [cloud-organizations](../units/cloud-organizations.md)

## Authorization

Авторизация происходит через JWT токены. Токен должен быть задан в заголовке `Authorization` в формате `Authorization: <token>`. Каждый запрос требует авторизацию, некоторые требуют админских прав.

## Endpoints

- ### `GET /api/organizations/<id>`

_Not implemented yet._

_Пользователь должен состоять в организации для получения информации или быть администратором._

Response:

```json
{
    "id": "<id>",
    "name": "<name>",
    "passphrase": "<passphrase>",
    "creationDate": "<creation date>",
    "lastUpdate": "<last update>",
    "members": [
        {
            "userId": "<UUID>",
            "createdAt": "<date>"
        }
    ]
}
```

- ### `GET /api/organizations/`

_Not implemented yet._

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

_Not implemented yet._

_Admin only._

Request:

```json
{
    "id": "<id>",
    "name": "<name>",
}
```

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

- ### `POST /api/organizations/new`

_Not implemented yet._

_Admin only._

Request:

```json
{
    "name": "<name>",
}
```

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

- ### `POST /api/organizations/generate-passphrase`

_Not implemented yet._

_Admin only._

Request:

```json
{
    "id": "<id>"
}
```

Response:

```json
{
    "passphrase": "<passphrase>"
}
```

- ### `POST /api/organizations/delete`

_Not implemented yet._

_Admin only._

Request:

```json
{
    "id": "<id>"
}
```

- ### `POST /api/organizations/add-users`

_Not implemented yet._

_Admin only._

Request:

```json
{
    "id": "<id>",
    "users": [ "<user id>", "<user id>" ]
}
```

- ### `POST /api/organizations/remove-users`

_Not implemented yet._

_Admin only._

Request:

```json
{
    "id": "<id>",
    "users": [ "<user id>", "<user id>" ]
}
```

- ### `POST /api/organizations/authorize-node`

_Not for UI usage._

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

- ### `POST /api/organizations/get-user-organization`

_Not for UI usage._

Using for authorize user in cloud. `cloud-auth` will call this endpoint to add organization data to JWT.

**Authorization:**

`cloud-auth` should add JWT to `Authorization` header. JWT should be signed by with default _JWT_SECURITY_KEY_ (currently using as env variable) without any payload.

Request:

```json
{
    "id": "<user id>",
}
```

Response:

```json
{
    "token": "<token>"
}
```
