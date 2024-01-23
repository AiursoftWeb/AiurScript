
# Aiur Script Project

These are some bash script powers Aiursoft projects on Ubuntu.

## Before starting

You need to have bash installed. For linux, it is installed by default. For Windows, download it [here](https://git-scm.com).

## How to build

Simpliy run the file: `./build.sh`

## How to use

You can install via the one-line install script. Put the following line to the start of your script.

```bash
aiur() { arg="$( cut -d ' ' -f 2- <<< "$@" )" && curl -sL https://gitlab.aiursoft.cn/aiursoft/aiurscript/-/raw/master/$1.sh | sudo bash -s $arg; }
```

Add to call a function, simply write: `aiur func_path/func_name arguments`.

### Examples

```bash
$ aiur Caddy/add_proxy arg1 arg2
```

```bash
$ my_port=$(aiur Network/get_port)
```
### caddy/add_file

[View file details](./caddy/add_file.sh)

```bash
$ aiur caddy/add_file your_arguments
```

### caddy/add_proxy

[View file details](./caddy/add_proxy.sh)

```bash
$ aiur caddy/add_proxy your_arguments
```

### console/success

[View file details](./console/success.sh)

```bash
$ aiur console/success your_arguments
```

### dotnet/publish

[View file details](./dotnet/publish.sh)

```bash
$ aiur dotnet/publish your_arguments
```

### dotnet/seeddb

[View file details](./dotnet/seeddb.sh)

```bash
$ aiur dotnet/seeddb your_arguments
```

### firewall/enable_firewall

[View file details](./firewall/enable_firewall.sh)

```bash
$ aiur firewall/enable_firewall your_arguments
```

### firewall/open_port

[View file details](./firewall/open_port.sh)

```bash
$ aiur firewall/open_port your_arguments
```

### git/clone_to

[View file details](./git/clone_to.sh)

```bash
$ aiur git/clone_to your_arguments
```

### install/caddy

[View file details](./install/caddy.sh)

```bash
$ aiur install/caddy your_arguments
```

### install/docker

[View file details](./install/docker.sh)

```bash
$ aiur install/docker your_arguments
```

### install/dotnet

[View file details](./install/dotnet.sh)

```bash
$ aiur install/dotnet your_arguments
```

### install/frp_server

[View file details](./install/frp_server.sh)

```bash
$ aiur install/frp_server your_arguments
```

### install/iperf3_server

[View file details](./install/iperf3_server.sh)

```bash
$ aiur install/iperf3_server your_arguments
```

### install/jq

[View file details](./install/jq.sh)

```bash
$ aiur install/jq your_arguments
```

### install/kubectl

[View file details](./install/kubectl.sh)

```bash
$ aiur install/kubectl your_arguments
```

### install/node

[View file details](./install/node.sh)

```bash
$ aiur install/node your_arguments
```

### install/python

[View file details](./install/python.sh)

```bash
$ aiur install/python your_arguments
```

### install/rust

[View file details](./install/rust.sh)

```bash
$ aiur install/rust your_arguments
```

### install/sql_server

[View file details](./install/sql_server.sh)

```bash
$ aiur install/sql_server your_arguments
```

### mssql/config_password

[View file details](./mssql/config_password.sh)

```bash
$ aiur mssql/config_password your_arguments
```

### mssql/create_db

[View file details](./mssql/create_db.sh)

```bash
$ aiur mssql/create_db your_arguments
```

### mssql/run_sql

[View file details](./mssql/run_sql.sh)

```bash
$ aiur mssql/run_sql your_arguments
```

### network/enable_bbr

[View file details](./network/enable_bbr.sh)

```bash
$ aiur network/enable_bbr your_arguments
```

### network/get_port

[View file details](./network/get_port.sh)

```bash
$ aiur network/get_port your_arguments
```

### network/set_host

[View file details](./network/set_host.sh)

```bash
$ aiur network/set_host your_arguments
```

### services/register_aspnet_service

[View file details](./services/register_aspnet_service.sh)

```bash
$ aiur services/register_aspnet_service your_arguments
```

### text/edit_json

[View file details](./text/edit_json.sh)

```bash
$ aiur text/edit_json your_arguments
```

### uninstall/docker

[View file details](./uninstall/docker.sh)

```bash
$ aiur uninstall/docker your_arguments
```

