
## Install

### Install unison on both client and server.

Run this command on the server and client.

```bash
bash <(curl -s \
"https://raw.githubusercontent.com/pylover/putbox/master/common-install.sh")

```


### Install Server

Let's assume you can connect to SSH server at `example.com` using password
authentication method and sudo access.

#### Password-less authentication

:exclamation: _Skip this section and jump to `Test Connection` if you 
already set up your key pair authentication._


**(Client Side)** Generate a key pair if don't have yet.
```bash
if [ ! -f ${HOME}/.ssh/id_rsa.pub ]; then ssh-keygen ; fi
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

### Install client 


**(Client Side)**
```bash
mkdir ${HOME}/swap
bash <(curl -s \
"https://raw.githubusercontent.com/pylover/putbox/master/client-install.sh")
```


