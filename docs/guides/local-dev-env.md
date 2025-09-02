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

**Доступ к сервисам:**

- `http://localhost:9090` - `cloud-server

### Роутер

Склонируйте репозиторий <https://github.com/zarinit-routers/router-server>:

```bash
git clone https://github.com/zarinit-routers/router-server.git
```

Перейдите в директорию `router-server`:

```bash
cd router-server
```

Запустите сервер роутера:

```bash
go run cmd/server/main.go -dev-test
```

Если запускать его так, сервер будет использовать нулевые идентифкаторы, это не ломает систему, но не позволяет использовать два и более, поэтому можно запустить второй сервер от имени администратора:

```bash
sudo go run cmd/server/main.go
```

Но с этим нужно быть осторожным, пока никакие команды не реализованы полноценно, но в будущем это позволит серверу менять настройки вашего компьютера.
