# Коннектор

## Endpoints

- ### GET `/api/clients/`

> `/` - на конце важен!

Список клиентов

Response:

```json
{
    "nodes": [
      {
        "id": "UUID",
        "name": "Name 1",
        "tags": ["tag1", "tag2"]
      },
      {
        "id": "UUID",
        "name": "Name 2",
      }
    ]
}
```

- ### GET `/api/clients/:id`

Один клиент

Response:

```json
{
  "node": {
    "id": "UUID",
    "name": "Name 1",
    "tags": ["tag1", "tag2"]
  },
}
```

- ### POST `/api/client/tags/add`

Request:

```json
{
  "tags": ["tag1", "tag2"]
}
```

- ### POST `/api/client/tags/remove`

Request:

```json
{
  "tags": ["tag1", "tag2"]
}
```
