# Авторизация `(cloud-auth)`

|||
|-------------|------------------------------------------------|
|Репозиторий  | <https://github.com/zarinit-routers/cloud-auth>|
|Ответственный| Олег <https://github.com/Oleg200606>           |

Отвечает за авторизацию пользователя в системе, посредством _cookie_-файлов

## Запуск

Для запуска необходимо задать переменные среды:

- `FLASK_ENV` - если переменной присвоить `development`, будет использовано окружение разработки
- `SQLALCHEMY_DATABASE_URI` - URL для подключения к postgres. Пример для быстрого старта: `postgresql+psycopg2://auth-db-user:CoolPassword123@cloud-auth-database/auth-db`
- `ROOT_USER_EMAIL` - Пример: `root@admin.com`
- `ROOT_USER_PASSWORD` - Пример: `1`
