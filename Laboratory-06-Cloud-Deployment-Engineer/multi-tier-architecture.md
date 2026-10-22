# 📘 Checkpoint 2 – Research: Multi-Tier Architecture

Before starting the deployment, it is important to understand what a multi-tier architecture is and how it helps organize an application. This research focuses on the two-tier architecture, explains the responsibilities of each tier, and discusses why separating the web application and database into different containers improves system organization, security, and maintainability.

---

## 🏗️ What Is a Two-Tier Architecture?

A **Two-Tier Architecture** is a system design that separates an application into two main components: the application tier and the database tier. These components communicate with each other to process requests and manage information.

In this deployment, **Nextcloud** serves as the web application, while **MariaDB** manages the database. Docker Compose connects the two containers so they can communicate within the same application environment.

This approach keeps application services organized by assigning different responsibilities to separate components, making the system easier to configure, maintain, and troubleshoot.

### 🔄 How It Works

1. 👤 **User:** Opens Nextcloud through a web browser.
2. 🌐 **Nextcloud:** Receives the request and processes the required application operations.
3. 🗄️ **MariaDB:** Stores, retrieves, or updates the necessary database information.
4. 📤 **Response:** Nextcloud returns the requested information to the user's browser.

---

## 🌐 The Web / Application Tier

The Web/Application Tier is the component that users interact with when accessing the system. It provides the interface and processes requests sent through a web browser.

In this project, **Nextcloud** serves as the application tier and is accessible through port `8080`. It handles functions such as displaying the login page, managing file operations, and processing user requests.

Nextcloud also communicates with MariaDB whenever it needs to read or update database records. Although it manages application operations, Nextcloud relies on persistent storage for files and database information to ensure that data remains available after a restart.

**Key responsibilities:**

- 🖥️ Displays the web interface to users.
- 📩 Receives and processes HTTP requests.
- 📂 Manages application features, including file management.
- 🔗 Communicates with the database when information is needed.

Think of this tier as a receptionist who assists visitors and coordinates with the appropriate department to retrieve information.

---

## 🗄️ The Database Tier

The Database Tier is responsible for storing, organizing, and retrieving structured information required by the application.

In this deployment, **MariaDB** acts as the database server. It manages information such as user account records, file metadata, permissions, and other application-related details. The actual file contents are typically stored separately in Nextcloud's file storage.

The database runs in its own container and communicates with Nextcloud through the Docker network. It should not be exposed directly to the public internet, and database access should be restricted to authorized services.

**Key responsibilities:**

- 💾 Stores and retrieves application records.
- 🔄 Processes database queries and updates.
- 🔐 Supports controlled access to stored information.
- 🛡️ Helps maintain data consistency and integrity.

Think of the database tier as a secure records room where information is stored and retrieved only by authorized personnel.

---

## ⚙️ Why Separate the Web Application and Database?

Running Nextcloud and MariaDB in separate containers offers several advantages over combining both services into a single container.

### ✅ Main Benefits

- 🧩 **Better Organization:** Each container has a specific responsibility, making the system easier to understand and manage.
- 🔧 **Simpler Maintenance:** The application and database can be configured, updated, and troubleshot independently, with appropriate compatibility checks.
- 📈 **Scalability:** Resources can be allocated to individual services according to their workload. Additional application instances can also be deployed when needed.
- 🔒 **Improved Security:** The database can remain on a private Docker network without direct public exposure.
- ♻️ **Easier Recovery:** Services can be restarted independently, while persistent volumes help protect stored data from container replacement.
- 📦 **Portability:** Docker Compose makes it easier to define and reproduce the application's environment on another compatible system.

Separating the services does not automatically guarantee complete security or prevent data loss. Proper network configuration, access controls, backups, and persistent storage are still necessary.

### 💡 Personal Reflection

Before studying this architecture, I thought running the entire application in one container would be the easiest approach. However, I learned that separating the web application and database makes the system more organized and easier to maintain. Each service can focus on its own responsibilities, while Docker Compose helps manage their communication.

This architecture also demonstrates how real-world applications can be designed for better security, reliability, and future expansion.
