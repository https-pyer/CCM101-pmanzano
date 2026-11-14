The following is a manual made for the cloud architecture that is made.

# Root user (typically)
- cloudnova-admin
- newpassword-2_true

# SSH
In order to SSH into the server, you must use the following credentials:
- use command `ssh vboxuser@[VM.LOCAL.IP]`
    - you can change the ip to your vm's own local ip depending on the network you used
- password: password123

It is highly recommended to do so the moment the Ubuntu Server is open. This provides full control, as the VM only exists to provide the service.

Remember that if you have transferred the VM to a different device/changed the network, you may have to add these within your hosts (in windows, its in `System32/devices/etc/hosts`, be admin to modify) file in order to access the containers without needing to change your DNS:

- `[VM.LOCAL.IP]`  vault.cloudnova.server
- `[VM.LOCAL.IP]`  gitea.cloudnova.server
- `[VM.LOCAL.IP]`  pihole.cloudnova.server

However, if possible, just use the DNS server. You may look at the Pi-hole section in order to find more regarding this edge case.

---
The following architecture has these containers:
- Gitea
- Vaultwarden
- Pihole
- Nginx
- PostgreSQL

# Gitea
Gitea doesn't need as much maintaining or operation. It is meant to provide an alternative to Github for development projects. Most of the maintenance happens within the root account for clearing unused accounts, deleting repositories, and more. As such, most of the operation is on maintenance while employees use the service for development projects.

root account:
- rootaccount
- QWxxLUcwiJ4naH

test account:
- John_Doe
- testpassword

# Vaultwarden
If you need to make a new account on vaultwarden, you can set `SIGNUPS_ALLOWED` to true. However, for this setup, it is set to false to only allow the root account to store passwords. Vaultwarden allows for employees and personnels to store passwords and information.

- root@cloudnova.server
- newpassword-2_true

# Pihole
Pihole is a DNS sink that works both as an adblocker and a way to access the server in the first place through the server's DNS. This ensures that the server is not accessible through the public internet, and ensures that it only exists within the network.

- Password: newpassword-2_true

When the network is switched over to something else, you will have to modify the custom DNS resolution in order to fit the IP of the VM. In this edge case, you are allowed to add port `8081:80` within the docker configuration *temporarily* to modify the custom DNS resolution.

# Nginx
This is used for reverse proxies within the server, and thus allows Pihole to provide proper custom domain names. Most of the operation here is done within the nginx.conf AND renewing certs using OpenSSL. This also ensures that HTTPS encryption is available.

If ever certs expire (perhaps cron-job went inactive for example), remember to use OpenSSL to renew these certificates. If ever they were moves, open Nginx's config file to change the path of these certificates.

# PostgreSQL
This is used as a database for Vaultwarden and Gitea to function. While there is an initialization file for having a database for Gitea (Shown as init-db.sh for the docker-compose.yml file) you are able to get in postgreSQL and run `CREATE DATABASE [name]`. Alternatively, if you wish to get in a database, you may run `docker exec -it [postgre-container] psql -U [user] -d postgres bash`.