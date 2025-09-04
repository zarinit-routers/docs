# Организации `(cloud-organizations)`

Реализует [API](../api/organizations.md)

## БД

![cloud-organizations database](cloud-organizations-database.png)

```table
Table organizations {
  id uuid PK
  name varchar(256)
  passphrase varchar(256)
  creation_date timestampz
  last_update timestampz
}

Table org_members {
  user_id uuid PK
  org_id uuid
  creation_date timestampz
}

Ref: org_members.org_id > organizations.id
```
