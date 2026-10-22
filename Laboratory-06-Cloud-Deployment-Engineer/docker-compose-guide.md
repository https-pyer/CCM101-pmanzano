# 🐳 Checkpoint 6 – Technical Documentation: Docker Compose Guide

## 📘 Introduction

This guide explains how I created and configured the `docker-compose.yml` file to deploy a two-tier application using **Nextcloud** and **MariaDB**.

Docker Compose allows me to define multiple containers in one YAML file and manage them using simple commands. In this activity, Nextcloud serves as the web application, while MariaDB stores the application's database information.

---

## 🛠️ 1. Creating the `docker-compose.yml` File

I created a project directory named `nextcloud-deployment` in the KillerCoda Ubuntu Playground. Inside this directory, I used the `nano` text editor to create and configure the `docker-compose.yml` file.

### 💻 Commands Used

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
nano docker-compose.yml
```

**Explanation:**
- `mkdir` creates a new project directory.
- `cd` opens the project directory.
- `nano` opens a text editor where I can write the Docker Compose configuration.

### 📝 Docker Compose Configuration

The following code defines the Nextcloud application and MariaDB database services.

```yaml
version: '3'

services:
  database:
    image: mariadb:10.6
    environment:
      - MYSQL_ROOT_PASSWORD=cloudnova_root
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user

  app:
    image: nextcloud
    ports:
      - 8080:80
    environment:
      - MYSQL_PASSWORD=cloudnova_pass
      - MYSQL_DATABASE=nextcloud_db
      - MYSQL_USER=nextcloud_user
      - MYSQL_HOST=database
```

### 💾 Checking the Configuration File

After saving the file, I used the `cat` command to display its contents and check whether the configuration and indentation were correct.

```bash
cat docker-compose.yml
```

**Explanation:** This command displays the saved YAML file in the terminal. Proper indentation is important because YAML uses spaces to organize its configuration.

---

## 🏗️ 2. Understanding the Services

The `services:` section defines the containers needed to run the application. My configuration contains two services.

| Service | Docker Image | Purpose |
|---|---|---|
| 🗄️ `database` | `mariadb:10.6` | Stores database information used by Nextcloud, including user and file metadata. |
| 🌐 `app` | `nextcloud` | Runs the Nextcloud web application and provides its user interface. |

Instead of creating each container separately, I defined both services in one configuration file. Docker Compose can then start and manage them together.

---

## 🔗 3. How Nextcloud Connects to MariaDB

Nextcloud connects to the database through the following environment variable:

```yaml
MYSQL_HOST=database
```

The value `database` refers to the name of the MariaDB service in the Compose file.

Docker Compose automatically creates a network for the services. Through Docker's internal DNS, Nextcloud can find MariaDB using its service name without needing to manually specify an IP address.

### 🔐 Environment Variables Explained

| Variable | Explanation |
|---|---|
| `MYSQL_ROOT_PASSWORD` | Sets the MariaDB root account password. |
| `MYSQL_PASSWORD` | Sets the password for the Nextcloud database user. |
| `MYSQL_DATABASE` | Specifies the database name, `nextcloud_db`. |
| `MYSQL_USER` | Defines the database user, `nextcloud_user`. |
| `MYSQL_HOST` | Identifies the database service Nextcloud should connect to. |

### 🌐 Understanding the Port Configuration

```yaml
ports:
  - 8080:80
```

This configuration maps port `8080` on the host to port `80` inside the Nextcloud container.

I can access the Nextcloud web interface through the KillerCoda environment using its exposed port.

The MariaDB service does not have a published `ports:` entry, so it is accessible through the internal Docker network rather than directly through a host-published database port.

During deployment, the Nextcloud setup page displayed an **"Autoconfig file detected"** message, indicating that the application detected its configuration settings.

---

## ⚖️ 4. Difference Between `docker run` and `docker-compose up -d`

Docker provides different ways to start containers. The following table summarizes the main differences.

| Aspect | `docker run` | `docker-compose up -d` |
|---|---|---|
| 📦 Container management | Starts an individual container per command. | Starts the services defined in the Compose file. |
| 🔗 Networking | May require additional configuration. | Creates and manages a project network automatically. |
| 🔄 Reusability | Commands must be entered again when needed. | Reuses the saved YAML configuration. |
| 🧹 Cleanup | Containers are stopped and removed individually. | Services and the project network can be removed together. |

**Simple explanation:** Using `docker run` is like assembling each piece separately, while Docker Compose is like following one complete instruction manual to assemble the entire system.

This approach is an example of **Infrastructure as Code (IaC)** because the application's configuration is written in a reusable file rather than being configured manually every time.

The `-d` option means **detached mode**, which allows the containers to run in the background while the terminal remains available for other commands.

---

## 🚀 5. Deploying and Verifying the Application

After preparing the configuration file, I used the following command to start the services.

```bash
docker-compose up -d
```

**Explanation:** This command creates and starts the containers defined in `docker-compose.yml`. The `-d` flag runs them in the background.

### 🔍 Checking the Container Status

```bash
docker-compose ps
```

This command displays the services and their current status.

During verification, both the Nextcloud application and MariaDB containers showed an `Up` status.

The output also showed the following port information:

- 🌐 **Nextcloud:** `0.0.0.0:8080->80/tcp`
- 🗄️ **MariaDB:** `3306/tcp`

The Nextcloud port mapping indicates that port `8080` is published on the host. MariaDB's `3306/tcp` indicates its container port, which is not published to the host by this configuration.

These results confirmed that both containers were running and that the application port was configured.

---

## 🧹 6. Stopping and Removing the Deployment

After verifying the deployment, I used the following command to stop and remove the Compose services.

```bash
docker-compose down
```

**Explanation:** This command stops and removes the containers and the default project network created by Docker Compose.

It does not normally delete named volumes, and my current configuration does not define a persistent data volume. Therefore, important data should be configured for persistent storage before using this setup for a real deployment.

---

## 🎓 7. Learning Outcomes

Through this activity, I learned how to:

- 🐳 Create a Docker Compose configuration file using the Linux terminal.
- 🏗️ Define a two-tier architecture with Nextcloud and MariaDB.
- 🔗 Connect application and database containers through an internal Docker network.
- 🌐 Configure port mapping to access a web application.
- 🚀 Deploy and verify multiple containers using Docker Compose commands.
- 🧹 Stop and remove containers and networks after testing.
- 📄 Apply the basic principles of Infrastructure as Code by documenting the deployment in a reusable YAML file.

## ✅ Conclusion

This activity helped me understand how Docker Compose simplifies the deployment and management of a multi-container application. By placing the Nextcloud and MariaDB configurations in one file, I could start, inspect, and stop the services using only a few commands.

I also learned the importance of service names, environment variables, port mapping, and proper YAML indentation. These concepts provide a foundation for building and managing more organized cloud application deployments.
