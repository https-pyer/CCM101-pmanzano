
# 📘 Checkpoint 2: System Baseline Report

## 🧠 1. Memory (RAM) Usage

I used the `free -h` command to check the server's memory. It displays the total RAM, the amount currently in use, and the memory available for running applications.

### 📊 Results

- **Total RAM:** 1.9 GiB
- **RAM in use:** 426 MiB
- **Available RAM:** 1.4 GiB

The results show that most of the server's memory remains available for other processes.

---

## 💾 2. Disk Storage Capacity

I ran the `df -h` command to check the server's disk usage. It displays the total filesystem size, used storage, available space, and percentage of storage currently occupied.

### 📊 Results for the root (`/`) filesystem

- **Total storage:** 19 GiB
- **Used storage:** 5.5 GiB
- **Available storage:** 13 GiB
- **Storage used:** 30%

This means that approximately 30% of the root filesystem is being used, while around 13 GiB of storage remains available.

---

## ⚙️ 3. Running Processes and CPU Load

The `top` command provides a live view of active processes and CPU activity. I used it to inspect the server's workload and monitor its performance.

### 🔎 Observations

- **Total tasks:** 129
- **Running tasks:** 1
- **Sleeping tasks:** 128
- **CPU usage:** 0.0% user and 0.0% system
- **CPU idle:** 99.7%
- **Load average:** 0.00, 0.00, 0.00

The CPU was idle during the observation, and the load average was very low, indicating that the server was handling little to no processing workload at that time.

---

## 🚦 Why Checking Disk Space Matters Before a Traffic Surge

Checking disk space before a sudden increase in traffic helps prevent service interruptions. Server logs, temporary files, cached data, and container images can consume storage quickly. If the disk becomes full, applications may fail to save data, and services may slow down or stop working.

---

## 🧾 Summary Table

| Resource           | Total Capacity | Used                    | Available / Status             |
| ------------------ | -------------- | ----------------------- | ------------------------------ |
| 🧠 RAM             | 1.9 GiB        | 426 MiB                 | 1.4 GiB available              |
| 💾 Root disk (`/`) | 19 GiB         | 5.5 GiB                 | 13 GiB available (30% used)    |
| ⚙️ CPU             | —              | 0.0% user / 0.0% system | 100.0% idle; load average 0.00 |

> **✅ Baseline summary:** The server had 1.4 GiB of available RAM, 13 GiB of available root storage, and an idle CPU during the check. These values provide a baseline for comparing resource usage during future workloads.
