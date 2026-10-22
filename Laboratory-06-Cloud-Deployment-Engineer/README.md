# 🐳☁️ Laboratory 6: The Cloud Deployment Engineer

<br>

## 🎯 Mission Overview

Congratulations! Your flawless work in deploying data storage solutions has earned you a spot on the Cloud Deployment Team at CloudNova Technologies.

Up until now, you have been deploying single containers (like a standalone web server or a storage bucket). However, real-world enterprise applications are rarely just one container. They are "multi-tier" systems that require a frontend web application communicating seamlessly with a backend database. Deploying these one by one manually is prone to error.

Enter Docker Compose. In this mission, you will transition from manual commands to Infrastructure as Code (IaC). Using a YAML configuration file, you will define a multi-container private cloud storage application (Nextcloud and MariaDB) and deploy the entire stack simultaneously with a single command!

> Remember: A junior engineer deploys servers by typing commands; a senior engineer deploys infrastructure by writing code.

<br>

## 📋 Objectives

At the end of this laboratory activity, you should be able to:

- Explain the concept of a multi-tier application architecture.
- Understand the purpose and structure of a docker-compose.yml file.
- Use a Linux command-line text editor (nano) to create configuration files.
- Deploy a multi-container application (Nextcloud + Database) using Docker Compose.
- Document deployment procedures and Infrastructure as Code (IaC) principles using Markdown.
- Continue expanding your professional GitHub Cloud Computing Portfolio.

---

## 💻 Commands Executed

The following commands were used throughout the deployment process.

| Command | Description |
|---|---|
| 📁 `mkdir nextcloud-deployment` | Creates the project directory. |
| 📂 `cd nextcloud-deployment` | Navigates to the project directory. |
| 📝 `nano docker-compose.yml` | Creates and edits the configuration file. |
| 🔍 `cat docker-compose.yml` | Displays the configuration for verification. |
| 🚀 `docker-compose up -d` | Starts the defined services in the background. |
| ✅ `docker-compose ps` | Checks the status of the containers. |
| 🧹 `docker-compose down` | Stops and removes the containers and project network. |

---

## 🏗️ Application Architecture

The application uses a two-tier architecture consisting of a web application and a database.

<pre>
          👤 USER
             |
             v
       🌐 WEB BROWSER
             |
        Port 8080
             |
             v
    ┌───────────────────┐
    │ 🐳 NEXTCLOUD APP  │
    │   Service: app    │
    └───────────────────┘
             |
             | Private Docker Network
             |
             v
    ┌───────────────────┐
    │ 🗄️ MARIADB        │
    │ Service: database │
    └───────────────────┘
       Port 3306
     Internal Network
</pre>

**How it works:**

- 🌐 **Web tier:** Nextcloud provides the web interface and application features.
- 🗄️ **Database tier:** MariaDB stores database information required by Nextcloud.
- 🔗 **Networking:** Docker Compose allows Nextcloud to locate MariaDB using the service name `database`.
- 🔐 **Port configuration:** Nextcloud is published on port `8080`, while MariaDB is not directly published to the host.

---

## 📸 Deployment Evidence

The following sections document the main stages of my laboratory activity. Add the corresponding screenshots to the `screenshots/` folder in your repository.

### 📝 1. Creating the Configuration File

I used the `nano` text editor to create and configure the `docker-compose.yml` file for Nextcloud and MariaDB.

![Docker Compose configuration in nano](screenshots/nano-editor.png)

<text>**Figure 1.** Creating the Docker Compose configuration using the nano editor.</text>

### 🔍 2. Verifying the Configuration

I used the `cat` command to display the saved file and verify that the YAML structure and indentation were correct.

![Docker Compose file verification](screenshots/compose-file.png)

<text>**Figure 2.** Reviewing the saved configuration in the terminal.</text>

### 🚀 3. Deploying the Containers

I executed `docker-compose up -d` to launch both services and used `docker-compose ps` to verify their status.

![Docker Compose deployment](screenshots/compose-deployment.png)

<text>**Figure 3.** Deploying the services and checking the running containers.</text>

### 🌐 4. Accessing the Nextcloud Interface

After deployment, I opened the Nextcloud setup page through the configured web port to verify that the application was accessible.

![Nextcloud web interface](screenshots/nextcloud-web.png)

<text>**Figure 4.** Accessing the Nextcloud setup page through port 8080.</text>

### 🧹 5. Removing the Deployment

After completing the verification, I ran `docker-compose down` to stop and remove the containers and the default project network.

![Docker Compose teardown](screenshots/compose-teardown.png)

<text>**Figure 5.** Removing the deployed containers and network.</text>

---

## 🛠️ Skills and Knowledge Gained

| Skill | What I Learned |
|---|---|
| 🐳 Docker Compose | Manage multiple containers using one configuration file. |
| 📝 YAML | Create structured configuration files with correct indentation. |
| 🚀 Deployment | Start, verify, and remove containerized services. |
| 🔗 Networking | Connect application and database containers using service names. |
| 🔐 Security | Keep the database port unpublished to the host and protect credentials. |
| 🔍 Troubleshooting | Check container status and verify application accessibility. |
| 📚 Documentation | Organize technical information and deployment evidence using Markdown. |

---

## 📁 Repository Structure

My GitHub repository is organized to separate the technical documentation, personal reflection, and deployment evidence.

```text
Laboratory-6/
├── README.md
├── multi-tier-architecture.md
├── docker-compose-guide.md
├── reflection.md
└── screenshots/
    ├── nano-editor.png
    ├── compose-file.png
    ├── compose-deployment.png
    ├── nextcloud-web.png
    └── compose-teardown.png
```

| File or Folder | Purpose |
|---|---|
| 📘 `README.md` | Main laboratory overview and deployment summary. |
| 🏗️ `multi-tier-architecture.md` | Research and explanation of the application architecture. |
| 🐳 `docker-compose-guide.md` | Technical explanation of the Docker Compose configuration. |
| 💭 `reflection.md` | Personal reflection and learning experience. |
| 📸 `screenshots/` | Evidence of configuration, deployment, verification, and cleanup. |

---

## ✅ Mission Status

**Completed:** Docker Compose configuration, multi-container deployment, application verification, teardown, and technical documentation.

*Cloud Computing Laboratory 6 — Building practical skills in infrastructure automation and cloud deployment.*
