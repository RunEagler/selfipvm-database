
# selfipvm-databse

## Install

1. install goose

```
$ go get bitbucket.org/liamstask/goose/cmd/goose
```

## Usage

### How to migrate

0. current directory

```
cd /path/to/selfipvm-database
```

1. Create migrate file.

```
goose create [filename] sql
```
create `selfipvm-database/db/migrations/yyyymmddhhmmss_[filename].sql`

2.Additionally write sql for Up,Down command
ex)
```
-- +goose Up
-- SQL in section 'Up' is executed when this migration is applied
CREATE TABLE users (
    id varchar(255) NOT NULL,
    name varchar(255) NOT NULL,
    PRIMARY KEY(id)
);


-- +goose Down
-- SQL section 'Down' is executed when this migration is rolled back
DROP TABLE users

```

3-1. Up command
```
$ goose up
goose: migrating db environment 'development', current version: 20161027112322, target: 20161104023332
OK    20161104023332_createUsers.sql
```

3-2. Down command
```
$ goose down
goose: migrating db environment 'development', current version: 20161104023332, target: 20161027112322
OK    20161104023332_createTable.sql
```

## Others

### migration confirmation

```
$ goose status
goose: status for environment 'development'
Applied At Migration
=======================================
Wed Jun 25 20:39:22 2014 -- 20140625151938_create_cards.sql
``

