# Команды

Список поддерживаемых команд для взаимодействия Облака и роутеров

## Формат команд

Формат команды должен выглядеть следующим образом `<версия>/<область>/<команда>`, где:

- `версия` - обозначение версии API, например: `v1`, `v2`. При этом даже если команда первой версии API (`v1`) само обозначение версии не стоит _(не стоит - значит нельзя)_ опускать.
- `область` - область или группа для команд
- `команда` - наименование самой команды для выполнения. Команда должна обозначаться хотя бы одним глаголом, наименования по типу: `status`, `enabled` - недопустимы, весто этого используйте: `get-status`, `is-enabled`

Формат записи слов в команде - `kebab-case`, т.е. если нужно написать команду изменяющую пароль, её нужно записать как `set-password`.

## Актуальные команды

Те команды, которые должны поддерживаться хоть в какой-то версии системы.

- ### `v1/timezone/get`

Request: пустой

Response:

```json
{
  "timezone": "Europe/Moscow"
}
```

- ### `v1/timezone/set`

Request:

```json
{
  "timezone": "Europe/Moscow"
}
```

Response: такой же как и в `v1/timezone/get`

- ### `v1/system/get-os-info`

_Пожалуйста, дополните респонс!._

- ### `v1/system/get-device-info`

Response:

```json
{
  "id": "",
  "manufacturer":    "",
  "model":           "",
  "modelVersion":    "",
  "firmwareVersion": ""
}
```

- ### `v1/ssh/get-status`

Response:

```json
{
  "enabled": true
}
```

- ### `v1/ssh/disable`

Response: такой же как и `v1/ssh/get-status`

- ### `v1/ssh/enable`

Response: такой же как и `v1/ssh/get-status`

- ### `v1/system/reboot`

Из-за специфики выполнения команды она может возвращать только ошибку, но она должна отвечать, во  всяком случае такое поведение закладывалось при реализации команды.

- ### `v1/modems/list`

- ### `v1/modems/enable`

Request:

```json
{
  "modem": "modem1"
}
```

- ### `v1/modems/disable`

Request:

```json
{
  "modem": "modem1"
}
```

- ### `v1/modems/get-signal`

Request:

```json
{
  "modem": "modem1"
}
```

- ### `v1/sim/get`

Request:

```json
{
  "sim": "sim1"
}
```

- ### `v1/journals/get`

Request:

```json
{
  "journal": "<journal>"
}
```

`journal` values:

- `core`
- `system`
- `port-forwarding`
- `connections`

Response:

```json
{
  "journal": "<journal>"
}
```

- ### `v1/wifi-hotspot/get-status`

Response:

```json
{
  "enabled": true,
  "ssid": "",
  "password": "",
  "band": "",
  "channel": "",
  "hidden": false,
}
```

- ### `v1/wifi-hotspot/enable`

Response:

```json
{
  "enabled": true
}
```

- ### `v1/wifi-hotspot/disable`

Response:

```json
{
  "enabled": false
}
```

- ### `v1/wifi-hotspot/set-ssid`

Request:

```json
{
  "ssid": ""
}
```

Response:

```json
{
  "ssid": ""
}
```

- ### `v1/wifi-hotspot/set-ssid-visibility`

Request:

```json
{
  "hidden": true
}
```

Response:

```json
{
  "hidden": true
}
```

- ### `v1/wifi-hotspot/set-password`

Request:

```json
{
  "password": ""
}
```

Response:

```json
{
  "password": ""
}
```

- ### `v1/wifi-hotspot/set-channel`

Request:

```json
{
  "channel": 10
}
```

Response:

```json
{
  "channel": 10
}
```

## Команды, которые должны быть

Можно воспринимать этот список как некое TODO, это те команды, которые обязательно должны быть реализованы.

- firewall
  - enable
  - disable
  - get-status
- wifi
  - [X] enable
  - [X] disable
  - [X] get-status
  - [X] ssid
    - [X] set-visibility
    - [X] set
  - [X] set-password
  - [X] set-channel
  - get-connected-clients
- dhcp
  - enable
  - disable
  - get-status
  - get-ethernet-ports

## Команды на рассмотрении, а также обновление API
