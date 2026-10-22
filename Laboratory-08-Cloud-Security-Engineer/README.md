# 🛡️ Laboratory 08 — The Cloud Security Engineer

## 🎯 Mission Overview

This laboratory focuses on securing a Linux server using UFW (Uncomplicated Firewall). The mission involves deploying an Nginx web application, reviewing firewall access rules, implementing a Default Deny policy, and allowing only the network services required by the application.

## 🏆 Objectives

- 🔐 Understand the Principle of Least Privilege.
- 🌐 Identify the attack surface of a virtual machine.
- 🔍 Audit the server's network access configuration.
- 🚧 Configure UFW with a Default Deny policy.
- 🔑 Allow SSH for remote administration.
- 🖥️ Permit TCP port 8080 for the web application.
- 📚 Document the configuration and maintain a professional GitHub portfolio.

## 🧰 Tools and Technologies

- 🐧 Ubuntu Linux
- 🐳 Docker
- 🌐 Nginx
- 🔥 UFW Firewall
- 🧪 cURL
- 📝 Markdown
- 🐙 GitHub

## ⚙️ Commands Executed

| Command | Purpose |
|---|---|
| `docker --version` | Checks Docker availability |
| `docker ps` | Lists running containers |
| `curl -i http://localhost:8080` | Tests local web application access |
| `sudo ufw allow ssh` | Allows SSH access |
| `sudo ufw default deny incoming` | Denies incoming traffic by default |
| `sudo ufw default allow outgoing` | Allows outgoing traffic by default |
| `sudo ufw enable` | Enables the firewall |
| `sudo ufw status verbose` | Displays firewall status and policies |
| `sudo ufw allow 8080/tcp` | Allows web application traffic |
| `sudo ufw status numbered` | Displays numbered firewall rules |

## 📸 Screenshots and Evidence

| Evidence | Description |
|---|---|
| `vulnerable-app-running.png` | Shows the running Nginx container and successful HTTP response |
| `firewall-activated.png` | Shows the active UFW firewall and default policies |
| `firewall-port-allowed.png` | Shows numbered firewall rules and the application test |

Screenshots are stored in the `screenshots/` directory.

## 🧠 Skills Learned

- 🔐 Applying basic server security principles.
- 🔥 Configuring host-based firewall rules.
- 🌐 Managing access to specific network ports.
- 🐳 Deploying and testing containerized applications.
- 📝 Writing technical documentation in Markdown.
- 🐙 Organizing and maintaining a GitHub portfolio.

## 📂 Repository Structure

```text
Laboratory-08-Cloud-Security-Engineer/
├── README.md
├── security-audit-report.md
├── firewall-configuration.md
├── reflection.md
└── screenshots/
    ├── vulnerable-app-running.png
    ├── firewall-activated.png
    └── firewall-port-allowed.png
```

## ✅ Mission Completion

The mission is complete when the firewall is configured and verified, the required documentation is prepared, all three screenshots are uploaded, and the changes are committed to the GitHub repository.

**Note:** All results and screenshots should represent the commands actually executed in the laboratory environment.
