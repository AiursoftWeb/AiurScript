
# Aiur Script Project

These are some bash script powers Aiursoft projects on Ubuntu.

## Before starting

You need to have bash installed. For linux, it is installed by default. For Windows, download it [here](https://git-scm.com).

## How to build

Simpliy run the file: `./build.sh`

## How to use

Executing the following command to trigger the functions in this repo.

Or you can use our one-line script import. Put the following line to the start of your script.

```bash
aiur() { arg="$( cut -d ' ' -f 2- <<< "$@" )" && curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/$1.sh | sudo bash -s $arg; }
```

Add to call a function, simply write: `aiur func_path/func_name arguments`.

### Examples

```bash
$ aiur Caddy/add_proxy arg1 arg2
```

```bash
$ my_port=$(aiur Network/get_port)
```
### build

[View file details](./build.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/build.sh | sudo bash -s your_arguments
```

```bash
$ aiur build your_arguments
```

### caddy/add_proxy

[View file details](./caddy/add_proxy.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/caddy/add_proxy.sh | sudo bash -s your_arguments
```

```bash
$ aiur caddy/add_proxy your_arguments
```

### firewall/enable_firewall

[View file details](./firewall/enable_firewall.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/firewall/enable_firewall.sh | sudo bash -s your_arguments
```

```bash
$ aiur firewall/enable_firewall your_arguments
```

### firewall/open_port

[View file details](./firewall/open_port.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/firewall/open_port.sh | sudo bash -s your_arguments
```

```bash
$ aiur firewall/open_port your_arguments
```

### import_function

[View file details](./import_function.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/import_function.sh | sudo bash -s your_arguments
```

```bash
$ aiur import_function your_arguments
```

### mssql/config_password

[View file details](./mssql/config_password.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/mssql/config_password.sh | sudo bash -s your_arguments
```

```bash
$ aiur mssql/config_password your_arguments
```

### mssql/create_db

[View file details](./mssql/create_db.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/mssql/create_db.sh | sudo bash -s your_arguments
```

```bash
$ aiur mssql/create_db your_arguments
```

### network/enable_bbr

[View file details](./network/enable_bbr.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/network/enable_bbr.sh | sudo bash -s your_arguments
```

```bash
$ aiur network/enable_bbr your_arguments
```

### network/get_port

[View file details](./network/get_port.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/network/get_port.sh | sudo bash -s your_arguments
```

```bash
$ aiur network/get_port your_arguments
```

### package/caddy

[View file details](./package/caddy.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/package/caddy.sh | sudo bash -s your_arguments
```

```bash
$ aiur package/caddy your_arguments
```

### package/dotnet

[View file details](./package/dotnet.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/package/dotnet.sh | sudo bash -s your_arguments
```

```bash
$ aiur package/dotnet your_arguments
```

### package/node

[View file details](./package/node.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/package/node.sh | sudo bash -s your_arguments
```

```bash
$ aiur package/node your_arguments
```

### package/sql_server

[View file details](./package/sql_server.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/package/sql_server.sh | sudo bash -s your_arguments
```

```bash
$ aiur package/sql_server your_arguments
```

### services/register_service

[View file details](./services/register_service.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/services/register_service.sh | sudo bash -s your_arguments
```

```bash
$ aiur services/register_service your_arguments
```

### system/set_aspnet_prod

[View file details](./system/set_aspnet_prod.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/system/set_aspnet_prod.sh | sudo bash -s your_arguments
```

```bash
$ aiur system/set_aspnet_prod your_arguments
```

### text/edit_json

[View file details](./text/edit_json.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/text/edit_json.sh | sudo bash -s your_arguments
```

```bash
$ aiur text/edit_json your_arguments
```

