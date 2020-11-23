
## Install


### Install Server

Let's assume you can connect to `example.com` using SSH and password
authentication method.

#### Password-less authentication

| :exclamation: _Skip this section and jump to `Test Connection` if you 
already set up your key pair authentication._ |
|---|


**(Client Side)** Generate a key pair if don't have yet.
```bash
if [ ! -f ${HOME}/.ssh/id_rsa.pub ]; then ssh-keygen ; fi
```

**(Client Side)**
```bash
ssh-copy-id example.com
```

#### Test Connection

**(Client Side)** Try to connect to the server without password.
```bash
ssh example.com
```

### Install client 

