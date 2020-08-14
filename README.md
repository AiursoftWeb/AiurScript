
# Aiur Script Project

These are some bash script powers Aiursoft projects on Ubuntu.

## Before starting

You need to have bash installed. For linux, it is installed by default. For Windows, download it [here](https://git-scm.com).

## How to build

Simpliy run the file: `./build_readme.sh`

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
### Caddy/add proxy

[View file details](./Caddy/add_proxy.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Caddy/add_proxy.sh | sudo bash -s www.example.com
```

### Firewall/enable firewall

[View file details](./Firewall/enable_firewall.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Firewall/enable_firewall.sh | sudo bash -s www.example.com
```

### Firewall/open port

[View file details](./Firewall/open_port.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Firewall/open_port.sh | sudo bash -s www.example.com
```

### import function

[View file details](./import_function.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/import_function.sh | sudo bash -s www.example.com
```

### Install/caddy

[View file details](./Install/caddy.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Install/caddy.sh | sudo bash -s www.example.com
```

### Install/dotnet

[View file details](./Install/dotnet.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Install/dotnet.sh | sudo bash -s www.example.com
```

### Install/node

[View file details](./Install/node.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Install/node.sh | sudo bash -s www.example.com
```

### Install/sql server

[View file details](./Install/sql_server.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Install/sql_server.sh | sudo bash -s www.example.com
```

### Network/enable bbr

[View file details](./Network/enable_bbr.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Network/enable_bbr.sh | sudo bash -s www.example.com
```

### Network/get port

[View file details](./Network/get_port.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Network/get_port.sh | sudo bash -s www.example.com
```

### Services/register service

[View file details](./Services/register_service.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Services/register_service.sh | sudo bash -s www.example.com
```

### SQL Server/config_password

[View file details](./SQL_Server/config_password.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/SQL_Server/config_password.sh | sudo bash -s www.example.com
```

### System/set aspnet_prod

[View file details](./System/set_aspnet_prod.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/System/set_aspnet_prod.sh | sudo bash -s www.example.com
```

### Text/edit json

[View file details](./Text/edit_json.sh)

```bash
$ curl -sL https://github.com/AiursoftWeb/AiurScript/raw/master/Text/edit_json.sh | sudo bash -s www.example.com
```

