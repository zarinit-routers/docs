# Локальная среда разработки

Для разворачивания локальной среды разработки необходимо:

- установить `git`
- установить `docker` с плагином `docker-compose`
- установить `go`

## Настройка

### Облако

Склонируйте репозиторий <https://github.com/zarinit-routers/cloud-compose>:

```bash
git clone https://github.com/zarinit-routers/cloud-compose.git
```

Перейдите в директорию `cloud-compose`:

```bash
cd cloud-compose
```

Запустите `docker compose`:

```bash
docker compose up --build
```

### Роутер

Склонируйте репозиторий <https://github.com/zarinit-routers/router-server>:

```bash
git clone https://github.com/zarinit-routers/router-server.git
```

Перейдите в директорию `router-server`:

```bash
cd router-server
```

Сгенерируйте новый UUID, для этого можно использовать сай <https://guidgenerator.com/> или любой другой генератор UUID. Вставьте сгенерированный UUID в файл `router-config.yml` в поле `device.id`.

Эту процедуру нужно проводить только один раз на устройстве, в ином случае будет создано множество "пустышек на сервере".

В файле `cloud-config.yml` в поле `passphrase` введите любую строку (на данный момент проверка парольной фразы не реализована). `cloud-host` в том же файле замените на `79.174.70.81`. `organization-id` замените на `00000000-0000-0000-0000-000000000000` (дефолтный ID организации, его не стоит генерировать)

Запустите сервер роутера:

```bash
go run cmd/server/main.go -dev-test
```
