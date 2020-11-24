
# putbox

Another distribution of [unison](https://github.com/bcpierce00/unison) to
easily setup a self-hosted unlimited dropbox-like service.

## Features:

- Transfer over `RSH/SSH`.
- No server setup needed.
- Automaticaly watch filesystem for changes.
- Optional client-side `systemd` or `initd` daemon.
- One line install.


## What you need before setup

- A `SSH` server with key-pair authentication enabled and `sudo` access.
- A Debian linux box as client.


## Server Install


### Prepare Server

Let's assume you can connect to SSH server at `example.com` using password
authentication method and sudo access.

#### Password-less authentication

:exclamation: _Skip this section and jump to `Test Connection` if you 
already set up your key pair authentication._


**(Client Side)** Generate a key pair if don't have yet.
```bash
if [ ! -f ${HOME}/.ssh/id_rsa.pub ]; then ssh-keygen ; fi
```

Edit `~/.ssh/config`

**(Client Side)**
```bash
Host example.com
  HostName example.com
  Port 22
  User foo
```

**(Client Side)**
```bash
ssh-copy-id example.com
```

#### Test Connection

**(Client Side)** Try to connect to the server without password and create 
a directory as remote root.
```bash
ssh example.com "mkdir -p swap"
```

### Install Unison on server

Run this command on the server to clone, build and install unison.

**(Server Side)**
```bash
bash <(curl -s \
"https://raw.githubusercontent.com/pylover/putbox/master/common-install.sh")

```

Test it by:

**(Client Side)**
```bash
ssh example.com "unison -version"
```

### Client Install


**(Client Side)**
```bash
mkdir ${HOME}/swap
bash <(curl -s \
"https://raw.githubusercontent.com/pylover/putbox/master/client-install.sh")
```

You can use:

**(Client Side)**
```bash
service putbox start
service putbox stop
service putbox restart
```

to manage the newly installed service.

Feel free to setup another client! :)

