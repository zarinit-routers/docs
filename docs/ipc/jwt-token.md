# JWT токен

## Access token

Payload/Полезная нагрузка:

```json
{
    "username": "user", // Необходимо фронту
    "email": "user@example.com", // Необходимо фронту
    "id": "UUID" // Необходимо беку
}
```

## Refresh token

Payload/Полезная нагрузка:

```json
{
    "id": "UUID" // Необходимо беку
}
```
