# 🔐 Security Audit Report

## 📌 Mission Information

- **Course:** CCM101 – Cloud Computing
- **Laboratory:** Activity 8
- **Mission:** The Cloud Security Engineer
- **Environment:** KillerCoda Ubuntu Playground
- **Application:** Nginx Web Server
- **Security Tool:** UFW (Uncomplicated Firewall)

---

## 🎯 1. Security Objectives

- Identify the importance of controlling network access to a cloud server.
- Understand the Principle of Least Privilege (PoLP).
- Explain the attack surface of a virtual machine.
- Apply a Default Deny firewall policy.
- Allow only the network services required by the application.

---

## 🛡️ 2. Security Concepts

### 🔑 Principle of Least Privilege (PoLP)

The Principle of Least Privilege means giving users and services only the permissions they need to perform their assigned tasks. In cloud environments, this reduces the risk of unauthorized access, accidental changes, and misuse of administrative privileges.

### 🌐 Attack Surface

An attack surface refers to the points through which an attacker may attempt to access or compromise a system. For a virtual machine, this can include exposed network ports, running services, vulnerable applications, and accounts with excessive permissions.

### 🚧 Default Deny Policy

A Default Deny policy blocks incoming network traffic unless a specific rule permits it. This is safer than trying to block individual attackers because unknown or unauthorized connections remain blocked unless explicitly allowed.

---

## 🧪 3. Security Audit Plan

The server will be prepared with an Nginx web application running in a Docker container on port `8080`. UFW will then be configured to deny incoming traffic by default, allow SSH for administration, and permit TCP traffic on port `8080` for the web application.

---

## 📋 4. Expected Security Rules

| Service | Port | Protocol | Action |
|---|---:|---|---|
| SSH administration | 22 | TCP | Allow |
| Web application | 8080 | TCP | Allow |
| Other incoming traffic | Any other port | Any | Deny by default |

---

## ✅ 5. Audit Conclusion

A restrictive firewall configuration helps reduce unnecessary network exposure and supports the principle of least privilege. The final configuration and test results should be reviewed alongside the terminal screenshots collected during the laboratory activity.
