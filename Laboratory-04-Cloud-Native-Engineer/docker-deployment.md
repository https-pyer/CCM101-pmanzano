# 🐳 Docker Container Lifecycle

This document explains the basic commands used to manage a Docker container, including listing, stopping, verifying, and removing a running container.

<br>

## Container Lifecycle Commands

### 1. List Running Containers

**Command:**

```bash
docker ps
```

**What it does:**
Displays all currently running containers, including their container ID, image, command, creation time, status, ports, and container name. This confirms which containers are currently active.

**Terminal Output:**

```text
CONTAINER ID   IMAGE   COMMAND                  STATUS         PORTS                  NAMES
xxxxxxxxxxxx   nginx   "/docker-entrypoint..."  Up             0.0.0.0:8080->80/tcp   my-nginx
```

The output confirms that the **`my-nginx`** container is currently running.

💡 **Tip:** Use `docker ps -a` to display **all containers**, including both running and stopped containers.

---

<br>

### 2. Stop the Running Container

**Command:**

```bash
docker stop my-nginx
```

**What it does:**
Stops the specified running container gracefully. Docker sends a termination signal to allow the application inside the container to shut down properly.

**Terminal Output:**

```text
my-nginx
```

The output confirms that the **`my-nginx`** container was successfully stopped.

---

<br>

### 3. Verify It Is Stopped

**Command:**

```bash
docker ps -a
```

**What it does:**
Lists all containers, including stopped containers. This allows me to verify that `my-nginx` is no longer running and has an **Exited (0)** status.

**Terminal Output:**

```text
CONTAINER ID   IMAGE   COMMAND                  STATUS                     PORTS   NAMES
xxxxxxxxxxxx   nginx   "/docker-entrypoint..."  Exited (0) ...                    my-nginx
```

The **Exited (0)** status confirms that the container stopped successfully.

💡 **Tip:** Running `docker ps` without `-a` would not display the stopped container because it only shows currently running containers.

---

<br>

### 4. Remove the Container Completely

**Command:**

```bash
docker rm my-nginx
```

**What it does:**
Removes the stopped `my-nginx` container from the Docker environment, including its container metadata and writable container layer.

**Terminal Output:**

```text
my-nginx
```

The output confirms that the container was successfully removed.

To verify that no containers remain, I used:

```bash
docker ps -a
```

**Terminal Output:**

```text
CONTAINER ID   IMAGE   COMMAND   CREATED   STATUS   PORTS   NAMES
```

The empty container list confirms that **`my-nginx` has been completely removed** from the system.

---

<br>

## 📝 Summary

| # | Command                | Purpose                          | Result                              |
| - | ---------------------- | -------------------------------- | ----------------------------------- |
| 1 | `docker ps`            | List running containers          | `my-nginx` shown as **Up**          |
| 2 | `docker stop my-nginx` | Gracefully stop the container    | Container stopped                   |
| 3 | `docker ps -a`         | Verify the container is stopped  | Status shows **Exited (0)**         |
| 4 | `docker rm my-nginx`   | Permanently remove the container | Container deleted and list is empty |

Managing the Docker container lifecycle is an important skill for a **Cloud-Native Engineer**. These four commands provide a simple workflow for managing containers: **list → stop → verify → remove**.
