# Управление

Основные ендпоинты, которые реализует/обрабатывает [Облачный сервер](../units/server.md)

## Endpoints

- ### POST `/api/cmd/`

_`/` на конце обязателен!_

Выполнение команды на ноде (роутере).

Смотри список доступных команд в [списке](../ipc/commands.md)

Пример ссылки запроса для команды [`v1/timezone/get`](../ipc/commands.md): `/api/cmd/v1/timezone/get`

Request ([согласно](../ipc/messages/cloud-connector.md#request)):

```json
{   
  "command": "v1/timezone/set",
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
