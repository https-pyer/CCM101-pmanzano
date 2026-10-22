# 🐳 Checkpoint 3–5: Container Observability Report

This report documents how I deployed the client's Nginx web server using Docker and monitored its performance. It covers container deployment, website accessibility testing, application log inspection, and real-time resource monitoring using `docker stats`. These activities help evaluate the web server's behavior under light load and establish a baseline for future monitoring.

---

## 🚀 1. Deploying the Web Container and Testing Website Access

I started the client's Nginx web server in the background and assigned it the container name `client-website`. I also mapped port `8080` on the host machine to port `80` inside the container.

### 💻 Deployment Command

```bash
docker run -d --name client-website -p 8080:80 nginx
```

### 💡 Command Explanation

- `-d` — Runs the container in the background.
- `--name client-website` — Assigns a name to the container.
- `-p 8080:80` — Maps host port `8080` to container port `80`.
- `nginx` — Specifies the official Nginx image.

This command downloads the Nginx image if it is not already available locally and starts the web server inside a Docker container.

**📝 Figure 1 — Nginx Deployment**

The terminal displays the Docker command used to launch the Nginx container, followed by the container ID confirming that Docker created it.

### 🌐 Testing Successful Website Requests

To verify website accessibility, I executed the following command three times:

```bash
curl http://localhost:8080
```

The `curl` command sends an HTTP request to the local web server and displays the response. Because Nginx was running correctly, each request returned the default Nginx welcome page.

**📝 Figure 2 — Successful Website Requests**

The terminal shows three requests to `http://localhost:8080`. Each request displays the Nginx welcome page, confirming that the server responds to normal HTTP requests.

### ⚠️ Testing an Invalid Page Request

Next, I requested a page that does not exist on the server:

```bash
curl http://localhost:8080/hidden-admin-page
```

Because the requested resource was unavailable, Nginx returned a `404 Not Found` response. This generated a failed request that could be identified by examining the application logs.

**📝 Figure 3 — Failed Website Request**

The terminal displays the response from Nginx after requesting `/hidden-admin-page`. The server returns a `404 Not Found` error because the requested resource does not exist.

---

## 📋 2. Checking Application Logs

After generating the test requests, I used the following command to inspect the container's logs:

```bash
docker logs client-website
```

This command displays the output produced by the specified container. Depending on the logging configuration, the output may include startup messages and HTTP request records.

**📝 Figure 4 — Docker Application Logs**

The terminal displays the output of `docker logs client-website`, including records of successful requests and the failed request to `/hidden-admin-page`.

### 🔎 Sample Error Log

The following example illustrates a log entry for a failed request:

```text
172.17.0.1 - - [15/Oct/2026:14:22:37 +0000] "GET /hidden-admin-page HTTP/1.1" 404 153 "-" "curl/8.5.0" "-"
```

The log indicates that the client requested `/hidden-admin-page` using the HTTP `GET` method. The server returned status code `404`, meaning that the requested resource could not be found.

*Note: Use the actual log entry from your terminal screenshot if its timestamp, client address, or response details differ from this example.*

### 🛠️ Importance of Application Logs in Troubleshooting

Application logs help developers and system administrators understand what happens inside an application. They provide useful details such as requested URLs, response status codes, timestamps, and client information. By reviewing these records, engineers can identify errors, investigate unusual requests, and troubleshoot problems more efficiently.

---

## 📊 3. Monitoring Real-Time Container Metrics

To observe the container's resource consumption, I executed the following command:

```bash
docker stats
```

The `docker stats` command provides continuously updated information about running containers. It displays CPU usage, memory consumption, network traffic, block input/output, and the number of running processes.

**📝 Figure 5 — Container Resource Monitoring**

The terminal displays the live resource statistics for `client-website`, including CPU percentage, memory usage, network activity, block I/O, and process count.

### 📈 Recorded Container Metrics

The following values were observed in the monitoring screenshot:

| 📌 Metric | 📊 Recorded Value |
|---|---|
| 🖥️ CPU Usage | 0.00% |
| 🧠 Memory Usage | 2.715 MiB / 1.9 GiB (0.14%) |
| 🌐 Network I/O | 3.77 kB received / 5.29 kB sent |
| 💾 Block I/O | 0 B read / 12.3 kB written |
| ⚙️ PIDs | 2 |

At the time of observation, the container consumed approximately `2.715 MiB` of memory and reported `0.00%` CPU usage. These results indicate low resource consumption during the observed period.

However, these measurements represent a small test involving four HTTP requests. They do not establish how the container would perform under heavy traffic or thousands of simultaneous users. Additional load testing and continuous monitoring would be necessary to evaluate its performance during a major increase in website visitors.

---

## 🎯 Conclusion

Through this activity, I learned how to deploy an Nginx web server using Docker, test website accessibility, inspect application logs, and monitor container resource usage.

The successful HTTP requests confirmed that the server was responding correctly, while the `404` response demonstrated how an invalid request could be identified in the logs. The `docker stats` output also provided a snapshot of the container's resource consumption.

These monitoring techniques are important in cloud operations because they help engineers identify application errors, evaluate resource usage, and establish a baseline for future performance comparisons. They also help determine whether additional resources or optimization may be needed as website traffic increases.
