# Portainer Playground
## How to get this working?

Create `.env` file and enter your hetzner cloud key id. You don't need to take care about the sevrer ip, 
since one of the scripts will set it for you.

```shell
mv .env.dist .env
nano .env # change this line HETZNER_CLOUD_KEY_ID=test@example.com
```

Create a hetzner cloud instance, to have a server where portainer is running on.
```shell
bin/create-hetzner-cloud-instance.sh
# This will update .env with the IP of the server
```

Provision with ansible to install portainer and dependencies
```shell
bin/provision.sh
```

Then you can visit portainer on [https://[env:HETZNER_CLOUD_INSTANCE_IP]:9443](https://[env:HETZNER_CLOUD_INSTANCE_IP]:9443)

## Additional scripts
Ssh to the server using the ip from the `.env`
```shell
bin/shell.sh
```