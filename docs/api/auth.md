# Авторизация

## Auth Endpoints

### `POST /api/auth/login`

Request:

```json
{
  "email": "user@example.com",
  "password": "password"
}
```

Response `200`:

```json
{
  "token": "",
}
```

## User Endpoints

### `GET /api/auth/users/me`

Response `200`:

```json
{
    "user": {
        "id": "UUID",
        "username": "John Doe",
        "email": "user@example.com",
        "role": "admin"
    },
}
```

Возвращает информацию о текущем пользователе.

### `GET /api/auth/users/:id`

Возвращает информацию о пользователе с указанным ID.

Response `200`:

```json
{
    "user": {
        "id": "UUID",
        "username": "John Doe",
        "email": "user@example.com",
        "role": "admin"
    },
}
```

### `GET /api/auth/users`

_Только для админов._ Возвращает список всех пользователей.

Response:

```json
{
    "users": [
        {
            "id": "UUID",
            "username": "John Doe",
            "email": "user@example.com",
            "role": "admin"
        },
    ]
}
```

### `POST /api/auth/users/:id`

Обновляет информацию о пользователе с указанным ID.

Request:

```json
{
    "username": "John Doe",
    "email": "user@example.com",
    "password": "password",
}
```

### `POST /api/auth/users`

Создает нового пользователя.

Request:

```json
{
    "username": "John Doe",
    "email": "user@example.com",
    "password": "password",
}
```

## Role Endpoints

_Roles currently not implemented._

### `GET /api/role/list`

### `GET /api/role/:id`

### `POST /api/role/create`

### `DELETE /api/role/delete`
