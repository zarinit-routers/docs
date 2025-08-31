# API

## Endpoints

- ### GET `/api/clients`

Список клиентов,

> ![WARNING] В будущем будет изменён, т.к. получать клиентов нужно по идентификатору группы

Response:

```json
[
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
```
