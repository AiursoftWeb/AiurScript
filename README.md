<a name="aiur-script-project"></a>
# Aiursoft AiurScript

These are some bash script powers Aiursoft projects on Ubuntu.

## Overview

### What is AiurScript?

AiurScript is a collection of Ubuntu administration scripts for services, packages, networking, databases and common shell tasks. Each catalog entry links to the script that implements the operation.

## Installation

<a name="before-starting"></a>

Use Bash on Ubuntu, with `curl` and `sudo` for the remote helper. Bash is normally installed on Linux; Windows users can obtain a Bash environment [here](https://git-scm.com), but that does not supply the Ubuntu services and package tools required by the administration scripts.

The helper below downloads the selected script and executes it with `sudo bash`. Inspect the script and its arguments before using it on an intended host. Individual operations may install services or change persistent system configuration.

## Usage

<a name="how-to-use"></a>

You can install via the one-line install script. Put the following line to the start of your script.

```bash
aiur() { arg="$( cut -d ' ' -f 2- <<< "$@" )" && curl -sL https://raw.githubusercontent.com/AiursoftWeb/AiurScript/master/$1.sh | sudo bash -s $arg; }

```

Add to call a function, simply write: `aiur func_path/func_name arguments`.

### Examples

```bash
$ aiur caddy/add_proxy arg1 arg2
```

```bash
$ my_port=$(aiur network/get_port)
```

The catalog below uses the actual lowercase paths. `your_arguments` is a placeholder: open the linked implementation to determine its required positional parameters.

### Script catalog

#### caddy/add_file

[View file details](./caddy/add_file.sh)

```bash
$ aiur caddy/add_file your_arguments
```

#### caddy/add_proxy

[View file details](./caddy/add_proxy.sh)

```bash
$ aiur caddy/add_proxy your_arguments
```

#### console/success

[View file details](./console/success.sh)

```bash
$ aiur console/success your_arguments
```

#### dotnet/publish

[View file details](./dotnet/publish.sh)

```bash
$ aiur dotnet/publish your_arguments
```

#### dotnet/seeddb

[View file details](./dotnet/seeddb.sh)

```bash
$ aiur dotnet/seeddb your_arguments
```

#### firewall/enable_firewall

[View file details](./firewall/enable_firewall.sh)

```bash
$ aiur firewall/enable_firewall your_arguments
```

#### firewall/open_port

[View file details](./firewall/open_port.sh)

```bash
$ aiur firewall/open_port your_arguments
```

#### git/clone_to

[View file details](./git/clone_to.sh)

```bash
$ aiur git/clone_to your_arguments
```

#### install/caddy

[View file details](./install/caddy.sh)

```bash
$ aiur install/caddy your_arguments
```

#### install/docker

[View file details](./install/docker.sh)

```bash
$ aiur install/docker your_arguments
```

#### install/dotnet

[View file details](./install/dotnet.sh)

```bash
$ aiur install/dotnet your_arguments
```

#### install/frp_server

[View file details](./install/frp_server.sh)

```bash
$ aiur install/frp_server your_arguments
```

#### install/iperf3_server

[View file details](./install/iperf3_server.sh)

```bash
$ aiur install/iperf3_server your_arguments
```

#### install/jq

[View file details](./install/jq.sh)

```bash
$ aiur install/jq your_arguments
```

#### install/kubectl

[View file details](./install/kubectl.sh)

```bash
$ aiur install/kubectl your_arguments
```

#### install/node

[View file details](./install/node.sh)

```bash
$ aiur install/node your_arguments
```

#### install/python

[View file details](./install/python.sh)

```bash
$ aiur install/python your_arguments
```

#### install/rust

[View file details](./install/rust.sh)

```bash
$ aiur install/rust your_arguments
```

#### install/sql_server

[View file details](./install/sql_server.sh)

```bash
$ aiur install/sql_server your_arguments
```

#### mssql/config_password

[View file details](./mssql/config_password.sh)

```bash
$ aiur mssql/config_password your_arguments
```

#### mssql/create_db

[View file details](./mssql/create_db.sh)

```bash
$ aiur mssql/create_db your_arguments
```

#### mssql/run_sql

[View file details](./mssql/run_sql.sh)

```bash
$ aiur mssql/run_sql your_arguments
```

#### network/enable_bbr

[View file details](./network/enable_bbr.sh)

```bash
$ aiur network/enable_bbr your_arguments
```

#### network/get_port

[View file details](./network/get_port.sh)

```bash
$ aiur network/get_port your_arguments
```

#### network/set_host

[View file details](./network/set_host.sh)

```bash
$ aiur network/set_host your_arguments
```

#### services/register_aspnet_service

[View file details](./services/register_aspnet_service.sh)

```bash
$ aiur services/register_aspnet_service your_arguments
```

#### text/edit_json

[View file details](./text/edit_json.sh)

```bash
$ aiur text/edit_json your_arguments
```

#### uninstall/docker

[View file details](./uninstall/docker.sh)

```bash
$ aiur uninstall/docker your_arguments
```

## Configuration

The remote import function is defined in [import_function.sh](import_function.sh). Its first argument selects the case-sensitive repository path without `.sh`; the rest is passed to that script. The existing helper splits arguments as shell words, so do not assume it preserves opaque whitespace-containing arguments.

There is no shared settings file. Script-specific command arguments, files, prerequisites and side effects are defined in the linked implementation. Installers and service/network/database operations have different requirements; Bash availability alone is insufficient.

## Development

<a name="how-to-build"></a>

The existing `build.sh` generates this README from its static template, the actual helper and discovered script paths. It is not an installer or a package compiler. From the repository root, regenerate and review the result:

```bash
bash build.sh
```

Check changed scripts without executing them:

```bash
bash -n build.sh
bash -n import_function.sh
```

The repository has no CI configuration or automated behavior test suite. Use an appropriate disposable Ubuntu environment when validating administrative behavior; the documentation generator itself does not install or execute the listed operations. Update the existing generator when changing the public chapter structure so regeneration preserves it.

## How to contribute

There are many ways to contribute to the project: logging bugs, submitting pull requests, reporting issues, and creating suggestions.

Even if you have push rights on the repository, you should create a personal fork and create feature branches there when you need them. This keeps the main repository clean and your workflow cruft out of sight.

We're also interested in your feedback on the future of this project. You can submit a suggestion or feature request through the issue tracker. To make this process more effective, we're asking that these include more information to help define them more clearly.



## License

Licensed under the [MIT License](LICENSE).
