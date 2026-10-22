# 🔥 Firewall Configuration Report

## 📌 Overview

This document records the UFW firewall configuration used to secure the `secure-web-app` Nginx container during Laboratory Activity 8. The configuration follows a Default Deny approach for incoming traffic while permitting SSH administration and the web application's designated TCP port.

## 🛠️ 1. Commands Executed

### 🔑 Allow SSH Access

```bash
sudo ufw allow ssh
```

**Purpose:** Permits SSH connections so administrators can remotely manage the server.

### 🚧 Configure the Default Policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

**Purpose:** Blocks incoming traffic unless an explicit rule permits it, while allowing outgoing connections by default.

### 🚀 Enable the Firewall

```bash
sudo ufw enable
```

**Purpose:** Activates the configured firewall rules.

### 🔍 Verify Firewall Status

```bash
sudo ufw status verbose
```

**Purpose:** Displays the firewall's active state, default policies, and configured rules.

### 🌐 Allow Web Application Traffic

```bash
sudo ufw allow 8080/tcp
```

**Purpose:** Permits incoming TCP traffic on port 8080 for the web application.

### 📋 Display Numbered Firewall Rules

```bash
sudo ufw status numbered
```

**Purpose:** Lists the configured firewall rules with numbers for easier inspection and management.

### 🧪 Test Application Access

```bash
curl -i http://localhost:8080
```

**Purpose:** Sends an HTTP request to the locally published web application and displays the response headers and content.

---

## ⚠️ 2. Why SSH Must Be Allowed First

If UFW is enabled before SSH is explicitly allowed, a remote administrator may lose access to the server if the existing firewall policy blocks SSH connections.

---

## 🛡️ 3. Final Firewall Policy

| Configuration | Expected Result |
|---|---|
| Firewall status | Active |
| Default incoming policy | Deny |
| Default outgoing policy | Allow |
| SSH access | Allowed |
| TCP port 8080 | Allowed |

---

## ✅ 4. Security Summary

The firewall configuration reduces unnecessary incoming network access by applying a restrictive default policy and explicitly allowing required services. The final configuration should be verified using UFW status commands and documented with actual terminal screenshots.
