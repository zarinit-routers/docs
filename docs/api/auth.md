# Авторизация

Документация к API поставляющемся [Авторизацией](../units/cloud-auth.md)

## Endpoints

### Аутентификация

- #### POST `/auth/login`

Аутентификация пользователя в системе

Request (form-data):

```toml
email: user@example.com
password: password123
```

Response (редирект):

- Успех: редирект на `/auth/dashboard`
- Ошибка: редирект на `/auth/login` с flash-сообщением

- #### GET `/auth/logout`

Выход пользователя из системы

Response (редирект):
Редирект на `/auth/login`

### Пользовательские данные

- #### GET `/auth/api/check-auth`

Проверка статуса авторизации текущего пользователя

Response:

```json
{
  "authenticated": true,
  "user": {
    "id": 1,
    "username": "admin",
    "email": "admin@example.com",
    "role": "admin"
  }
}
```

- #### GET/POST `/auth/profile`

Просмотр и редактирование профиля пользователя

Request (POST, form-data):

```
username: new_username
email: new_email@example.com
password: new_password (optional)
```

### Административные endpoints

- #### GET `/auth/admin/users`

Получение списка всех пользователей (требует прав admin)

Response (HTML): страница со списком пользователей

- #### GET/POST `/auth/admin/create-user`

Создание нового пользователя (требует прав admin)

Request (POST, form-data):

```
username: new_user
email: user@example.com
password: password123
role: user|admin
```

- #### GET/POST `/auth/admin/edit-user/<int:user_id>`

Редактирование пользователя (требует прав admin)

Request (POST, form-data):

```
username: updated_username
email: updated@example.com
password: new_password (optional)
role: user|admin
```

- #### GET `/auth/admin/delete-user/<int:user_id>`

Удаление пользователя (требует прав admin)

Response (редирект): редирект на `/auth/admin/users`

### Управление группами

- #### GET `/auth/admin/groups`

Получение списка всех групп (требует прав admin)

Response (HTML): страница со списком групп

- #### GET/POST `/auth/admin/create-group`

Создание новой группы (требует прав admin)

Request (POST, form-data):

```
name: group_name
description: Group description
```

- #### GET/POST `/auth/admin/edit-group/<int:group_id>`

Редактирование группы (требует прав admin)

Request (POST, form-data):

```
name: updated_group_name
description: Updated description
```

- #### GET `/auth/admin/delete-group/<int:group_id>`

Удаление группы (требует прав admin)

Response (редирект): редирект на `/auth/admin/groups`

### API для работы с группами

- #### POST `/auth/api/check-group`

Проверка существования группы и валидности пароля

Request:

```json
{
  "group_name": "admin_group",
  "password_phrase": "secret_password"
}
```

Response:

```json
{
  "exists": true,
  "valid_password": true,
  "group_description": "Administrators group",
  "message": "Password correct",
  "error": null
}
```

- #### POST `/auth/api/generate-password`

Генерация пароля для группы (требует прав admin)

Request:

```json
{
  "group_name": "admin_group"
}
```

Response:

```json
{
  "success": true,
  "password": "aB3$fG7@kL2!",
  "error": ""
}
```

- #### POST `/auth/admin/generate-group-password/<int:group_id>`

Генерация парольной фразы для конкретной группы (требует прав admin)

Response:

```json
{
  "success": true,
  "password": "random_generated_password"
}
```

- #### POST `/auth/admin/clear-group-password/<int:group_id>`

Очистка парольной фразы группы (требует прав admin)

Response:

```json
{
  "success": true
}
```

### Управление членством в группами

- #### POST `/auth/admin/add-user-to-group`

Добавление пользователя в группу (требует прав admin)

Request (form-data):

```
user_id: 1
group_id: 1
```

- #### GET `/auth/admin/remove-user-from-group/<int:user_group_id>`

Удаление пользователя из группы (требует прав admin)

Response (редирект): редирект на `/auth/admin/groups`

## Модели данных

### User

```python
{
  "id": "Integer",
  "username": "String",
  "email": "String",
  "password_hash": "String",
  "role": "String (user|admin)"
}
```

### Group

```python
{
  "id": "Integer",
  "name": "String",
  "description": "Text",
  "password_phrase": "String (optional)"
}
```

### UserGroup (связь многие-ко-многим)

```python
{
  "id": "Integer",
  "user_id": "Integer (ForeignKey)",
  "group_id": "Integer (ForeignKey)"
}
```
