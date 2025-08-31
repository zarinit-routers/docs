# IPC

IPC (Inter-Process Communication) is a mechanism for exchanging data between processes. It is used in many applications, including web browsers, operating systems, and game engines.

Здесь будет описаны механизмы IPC, которые будут использоваться в проекте. Думаю не имеет смысла описывать gRPC.

## Облако и ноды

Облако и ноды будут общаться друг с другом через Websocket шину, используя специальные [сообщения](./messages/connector-node.md)

### Подключение ноды к облаку

Подключение Websocket инициализируется по `ws://cloud.com/api/ipc/connect`. При этом должны быть переданы следующие заголовки:

- `Authorization` - парольная фраза группы
- `X-Group-ID` - идентификатор группы
- `X-Router-ID` - идентификатор ноды
