# ☁️🛠️ Laboratory 7: The Cloud Operations Engineer

## 🎯 Mission Overview

Congratulations! Your ability to deploy multi-tier architectures has proven your technical capabilities. You have now been promoted to the Cloud Operations Team (often referred to in the industry as Site Reliability Engineering, or SRE) at CloudNova Technologies.

Deploying a cloud application is only the first step; keeping it running smoothly is the real challenge. When a server crashes or a web page takes ten seconds to load, you cannot simply guess what is wrong. You must rely on Observability and Monitoring to see inside your infrastructure.

Using the KillerCoda Playground, you will step into the role of a Cloud Operations Engineer. You will establish a performance baseline for your Linux server, deploy a containerized application, generate artificial web traffic, and hunt down performance metrics and system logs to prove the application is healthy.

> Remember: A developer hopes the application works; a Site Reliability Engineer uses metrics and logs to prove it.


<br>

## 📋 Objectives

At the end of this laboratory activity, you should be able to:

- Utilize native Linux command-line tools to monitor host CPU, Memory, and Disk capacity.
- Deploy a web container and track its real-time performance using Docker metrics.
- Generate web traffic and extract application access logs for analysis.
- Translate raw performance data into a readable technical report using Markdown.
- Continue expanding a professional GitHub Cloud Computing Portfolio.

<br>

## 💻 Monitoring Commands Executed

The following commands were used to inspect the Linux host, deploy the Nginx web server, simulate website traffic, review application logs, and monitor container performance.

| Command | Purpose |
| :--- | :--- |
| `free -h` | 🧠 Checked the host's total, used, and available RAM. |
| `df -h /` | 💾 Examined the capacity and available space of the root filesystem. |
| `top` | ⚙️ Monitored running processes, CPU activity, and memory usage. |
| `docker run -d --name client-website -p 8080:80 nginx` | 🐳 Started the Nginx container in the background and mapped host port 8080 to container port 80. |
| `curl http://localhost:8080` | 🌐 Sent three test requests to simulate normal website visits. |
| `curl http://localhost:8080/hidden-admin-page` | 🚫 Requested a nonexistent page to test the server's 404 response. |
| `docker logs client-website` | 📋 Reviewed the Nginx logs for successful requests and missing-page errors. |
| `docker stats` | 📊 Monitored the container's live CPU, memory, and network usage. |

---

## 📋 Lab Results and Observations

### 🧠 1. Host Memory Check

The `free -h` command displayed the server's total, used, free, and available memory. These details helped establish the host's memory status before deploying the Nginx container.

### 💾 2. Disk Storage Check

The `df -h /` command showed the root filesystem's total capacity, used storage, and remaining space. This information helped evaluate whether sufficient disk space was available for system operations.

### ⚙️ 3. CPU and Process Monitoring

The `top` command provided a live overview of running processes, CPU activity, and memory consumption. It helped identify resource-intensive processes and assess the server's current workload.

### 🐳 4. Nginx Container Deployment

The Docker command launched the `client-website` container using the Nginx image. By mapping host port 8080 to container port 80, the web server became accessible through `http://localhost:8080`.

### 🌐 5. Successful Website Requests

Three requests were sent using `curl` to simulate regular website visits. The successful responses demonstrated that the Nginx server could receive and process basic HTTP requests.

### 🚫 6. Missing-Page Request

The `/hidden-admin-page` URL was requested to test the server's handling of unavailable resources. Nginx returned a `404 Not Found` response because the requested page did not exist.

### 📋 7. Application Log Inspection

The `docker logs client-website` command displayed the web server's recorded activity. The logs helped verify the successful requests and the missing-page request, demonstrating how application logs support troubleshooting and error identification.

### 📊 8. Container Resource Monitoring

The `docker stats` command displayed real-time CPU usage, memory consumption, and network input/output. These measurements helped evaluate the container's resource usage while the web server was running.

---

## 🛠️ Skills Learned

- 🧠 **Server Resource Monitoring:** Learned to inspect RAM availability, disk capacity, CPU activity, and running processes using Linux commands.
- 🐳 **Docker Container Deployment:** Practiced deploying an Nginx web server in a container and making it accessible through a mapped port.
- 🌐 **Website Testing:** Used `curl` to simulate user visits and test the server's responses to existing and nonexistent pages.
- 📋 **Log Analysis:** Learned to examine Docker logs to verify HTTP requests and identify errors.
- 📊 **Real-Time Performance Monitoring:** Used `docker stats` to observe container CPU, memory, and network usage.
- 📝 **Technical Documentation:** Improved the ability to organize commands, document observations, and present laboratory results in a clear Markdown format.
