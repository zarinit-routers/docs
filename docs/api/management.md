# Управление

Основные ендпоинты, которые реализует/обрабатывает [Облачный сервер](../units/server.md)

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

- ### POST `/api/cmd/:cmd`

Выполнение команды на ноде (роутере).

Смотри список доступных команд в [списке](../ipc/commands.md)

Пример ссылки запроса для команды [`v1/timezone/get`](../ipc/commands.md): `/api/cmd/v1/timezone/get`

Request ([согласно](../ipc/messages/cloud-connector.md#request)):

```json
{
  "nodeId": "UUID",
  "args": {
    "timezone": "Europe/Moscow"
  }
}
```

Response ([согласно](../ipc/messages/cloud-connector.md#response)):

```json
{
    "requestError": "",
    "commandError": "",
    "data": {}
}
```
