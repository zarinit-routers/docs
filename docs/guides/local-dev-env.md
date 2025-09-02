# Локальная среда разработки

Для разворачивания локальной среды разработки необходимо:

- установить `git`
- установить `docker` с плагином `docker-compose`
- установить `go`

## Настройка

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
