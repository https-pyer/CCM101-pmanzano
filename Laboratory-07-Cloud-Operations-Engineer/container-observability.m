# 🐳 Checkpoint 3–5: Container Observability Report

This report explains how I deployed the client's Nginx web server using Docker and monitored its performance. It covers generating test website traffic, checking application logs for successful **HTTP 200** and failed **HTTP 404** requests, and monitoring CPU and memory usage with `docker stats`. These steps help verify the container's basic operation and establish a performance baseline before a possible increase in website traffic during the marketing campaign.

---

## 🚀 1. Deploying the Web Container and Generating Traffic

I deployed the Nginx web server in the background using Docker and named the container `client-website`. I also configured port 8080 on the host to connect to port 80 inside the container.

**Command used:**

```bash
docker run -d --name client-website -p 8080:80 nginx
```

**Command explanation:**

- 🐳 `docker run` creates and starts a new container.
- ⚙️ `-d` runs the container in the background.
- 🏷️ `--name client-website` assigns a name to the container.
- 🌐 `-p 8080:80` maps host port 8080 to container port 80.
- 📦 `nginx` specifies the official Nginx image, which Docker downloads if it is not already available locally.

After starting the container, I used `curl` to simulate website visits and verify that the web server was responding.

### ✅ Simulating Three Successful Visits

```bash
curl http://localhost:8080
```

I executed this command three times to simulate three website visits. Each request accessed the Nginx server through port 8080 and returned the default Nginx welcome page.

These requests demonstrated that the container was running and responding to HTTP requests successfully.

### ❌ Simulating a Failed Visit

```bash
curl http://localhost:8080/hidden-admin-page
```

I sent a request to a page that does not exist on the server. Nginx returned a **404 Not Found** response because the requested resource could not be found.

This test helped me understand how failed requests appear in application logs and how they can be identified during troubleshooting.

---

## 📋 2. Checking Application Logs

To review the activities recorded by the container, I executed the following command:

```bash
docker logs client-website
```

This command displays the output produced by the specified container, including available startup messages and request records written to its output streams.

The logs allow me to check whether the server received the test requests and determine which HTTP status codes were returned.

### 🔎 Example of a 404 Error Log

```text
172.17.0.1 - - [15/Oct/2026:14:22:37 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

**Understanding the log entry:**

- 🌐 `172.17.0.1` — The recorded client IP address.
- 🕒 `15/Oct/2026:14:22:37 +0000` — The date and time of the request.
- 📄 `GET /hidden-admin-page` — The HTTP request method and requested path.
- ❌ `404` — The HTTP status code indicating that the requested resource was not found.
- 📦 `153` — The response size in bytes, as recorded in the log.
- 🛠️ `curl/8.5.0` — The client software that sent the request.

### 💡 Importance of Application Logs

Application logs are important because they provide information about requests, response codes, timestamps, and client activity. By examining these records, a cloud operations engineer can identify failed requests, investigate unexpected behavior, and troubleshoot problems more efficiently.

---

## 📊 3. Monitoring Real-Time Container Metrics

To check how much of the host system's resources the Nginx container was consuming, I used the following command:

```bash
docker stats
```

This command displays a continuously updating view of running containers and their resource consumption. It provides information about CPU usage, memory usage, network traffic, block input/output, and the number of running processes.

### 📈 Container Performance Results

The following values were recorded from the `docker stats` screenshot:

| Metric          | Recorded Value                  |
| --------------- | ------------------------------- |
| ⚙️ CPU Usage    | 0.00%                           |
| 🧠 Memory Usage | 2.715 MiB / 1.9 GiB (0.14%)     |
| 🌐 Network I/O  | 3.77 kB received / 5.29 kB sent |
| 💾 Block I/O    | 0 B read / 12.3 kB written      |
| 🔄 PIDs         | 2                               |

### 🩺 Interpreting the Results

At the time of monitoring, the `client-website` container was using **0.00% CPU** and approximately **2.715 MiB of memory**, equivalent to 0.14% of its displayed memory limit or available allocation.

These results indicate that the container was consuming very few resources under the light test workload. The network and block I/O values also provide a record of the traffic and data operations observed during monitoring.

However, these measurements represent only a brief baseline after a small number of test requests. They do not guarantee that the container will remain healthy during thousands of simultaneous visits. Additional load testing and continued monitoring would be necessary to evaluate its behavior under heavy traffic.

---

## 🎯 Conclusion

In Checkpoints 3–5, I learned how to deploy an Nginx web server using Docker, generate successful and unsuccessful HTTP requests, inspect application logs, and monitor container resource usage in real time.

These activities demonstrated how **container deployment, log analysis, and performance monitoring** work together in cloud operations. By establishing a baseline and understanding the collected metrics, an engineer can identify potential issues and prepare the application for increased website traffic during a marketing campaign.
