# ☁️ Infrastructure Report

## 📋 System Overview

This report documents the infrastructure configuration and system resources of the Ubuntu cloud server. The information was collected using standard Linux commands such as `cat`, `uname`, `lscpu`, `free`, `hostname`, `ip`, `df`, and `findmnt`.

---

## 🖥️ 1. Operating System

The server is running **Ubuntu 24.04.4 LTS (Noble Numbat)**.

| 🔍 Property          | 📌 Details         |
| -------------------- | ------------------ |
| **Operating System** | Ubuntu 24.04.4 LTS |
| **Version ID**       | 24.04              |
| **Codename**         | Noble Numbat       |
| **Kernel**           | 6.8.0-138-generic  |
| **System Type**      | Linux              |

### Command Used

```bash
cat /etc/os-release
uname -r
```

### Result

```text
Ubuntu 24.04.4 LTS
Kernel: 6.8.0-138-generic
Codename: noble
```

---

## ⚙️ 2. CPU / Processor

The server uses an **Intel Xeon E312xx (Sandy Bridge)** virtualized processor.

| 🔍 Property                        | 📌 Details                 |
| ---------------------------------- | -------------------------- |
| **Processor**                      | Intel Xeon E312xx          |
| **Architecture Generation**        | Sandy Bridge               |
| **CPU Cores/Processors Available** | 1                          |
| **Reported CPU Frequency**         | 2.0 GHz                    |
| **Virtual BIOS Model**             | RHEL-9.6.0 PC (Q35 + ICH9) |

### Command Used

```bash
lscpu | grep "Model name"
lscpu | grep "^CPU(s):"
```

### Result

```text
Model name: Intel Xeon E312xx (Sandy Bridge, IBRS update)
CPU(s): 1
```

### 💡 Observation

The cloud server has **one virtual CPU**, which is suitable for lightweight workloads, Linux administration activities, development, testing, and basic server applications.

---

## 🧠 3. Memory / RAM

The server has approximately **1.9 GiB of available physical memory** and **1 GiB of swap space**.

| 🔍 Resource       | 📌 Amount |
| ----------------- | --------: |
| **Total RAM**     |   1.9 GiB |
| **Used RAM**      |   608 MiB |
| **Free RAM**      |   645 MiB |
| **Buffer/Cache**  |   818 MiB |
| **Available RAM** |   1.3 GiB |
| **Swap**          |   1.0 GiB |
| **Swap Used**     |       0 B |

### Command Used

```bash
free -h
```

### 💡 Observation

The system has approximately **1.3 GiB of available memory**, while the swap space is currently unused. This indicates that the server is not experiencing significant memory pressure at the time the information was collected.

---

## 🌐 4. Hostname and Network Configuration

The hostname of the server is:

```text
ubuntu
```

### Command Used

```bash
hostname
hostname -I
```

### Network Addresses

| 🔍 Interface / Address | 📌 Details   |
| ---------------------- | ------------ |
| **Hostname**           | `ubuntu`     |
| **Primary Network IP** | `172.30.1.2` |
| **Docker Network IP**  | `172.17.0.1` |
| **Loopback Address**   | `127.0.0.1`  |

---

## 🔌 5. Network Interfaces

The server contains three visible network interfaces.

### `lo` — Loopback

```text
127.0.0.1/8
::1/128
```

The loopback interface is used for communication within the local system.

### `enp1s0` — Primary Network Interface

```text
IPv4: 172.30.1.2/24
Broadcast: 172.30.1.255
MTU: 1450
State: UP
```

This is the primary network interface used by the Ubuntu server.

### `docker0` — Docker Bridge

```text
IPv4: 172.17.0.1/16
State: DOWN
```

The `docker0` interface is associated with Docker container networking.

### Command Used

```bash
ip addr
```

---

## 💾 6. Disk Storage

The server uses an **ext4 filesystem** for its primary root partition.

| 💾 Filesystem |   Size |   Used | Available | Usage |
| ------------- | -----: | -----: | --------: | ----: |
| `/dev/vda1`   |  19 GB | 5.4 GB |     13 GB |   30% |
| `/dev/vda16`  | 881 MB | 117 MB |    703 MB |   15% |
| `/dev/vda15`  | 105 MB | 6.2 MB |     99 MB |    6% |

### Root Filesystem

```text
/dev/vda1
Size: 19G
Used: 5.4G
Available: 13G
Usage: 30%
Mounted: /
Filesystem: ext4
```

### Command Used

```bash
df -h
```

### 💡 Observation

The primary filesystem has approximately **13 GB of available storage**, with only **30% currently utilized**. The server therefore has sufficient remaining disk capacity for additional software, configuration files, logs, and laboratory projects.

---

## 🗂️ 7. Mount Points and Filesystems

The system uses several virtual and physical filesystems.

| 📁 Mount Point   | 💽 Source    | 🗃️ Filesystem |
| ---------------- | ------------ | -------------- |
| `/`              | `/dev/vda1`  | ext4           |
| `/boot`          | `/dev/vda16` | ext4           |
| `/boot/efi`      | `/dev/vda15` | vfat           |
| `/dev`           | `udev`       | devtmpfs       |
| `/dev/shm`       | `tmpfs`      | tmpfs          |
| `/run`           | `tmpfs`      | tmpfs          |
| `/proc`          | `proc`       | proc           |
| `/sys`           | `sysfs`      | sysfs          |
| `/sys/fs/cgroup` | `cgroup2`    | cgroup2        |

### Command Used

```bash
findmnt
```

---

## 🔐 8. Root Filesystem Configuration

The root filesystem is mounted using the following configuration:

```text
/dev/vda1 on /
Filesystem: ext4
Mount options:
rw,relatime,discard,errors=remount-ro,commit=30
```

### Important Mount Options

| ⚙️ Option           | 📝 Purpose                                                   |
| ------------------- | ------------------------------------------------------------ |
| `rw`                | Allows read and write operations                             |
| `relatime`          | Updates file access times efficiently                        |
| `discard`           | Supports storage discard/TRIM operations                     |
| `errors=remount-ro` | Remounts the filesystem as read-only if serious errors occur |
| `commit=30`         | Controls filesystem journal commit timing                    |

---

## 🐳 9. Docker Infrastructure

A Docker bridge interface is present:

```text
docker0
172.17.0.1/16
```

The interface is currently shown as:

```text
state DOWN
NO-CARRIER
```

This indicates that the Docker bridge exists, but there is currently no active network connection through the bridge.

---

## 📊 10. Infrastructure Summary

| 🧩 Component            | 📌 Configuration           | 🎯 Status   |
| ----------------------- | -------------------------- | ----------- |
| ☁️ **Cloud Server**     | Ubuntu virtual machine     | ✅ Running   |
| 🐧 **Operating System** | Ubuntu 24.04.4 LTS         | ✅ Active    |
| 🔧 **Kernel**           | 6.8.0-138-generic          | ✅ Active    |
| 🧠 **CPU**              | 1 × Intel Xeon virtual CPU | ✅ Available |
| 💾 **RAM**              | 1.9 GiB                    | ✅ Available |
| 🔄 **Swap**             | 1.0 GiB                    | ✅ Available |
| 💽 **Root Storage**     | 19 GB                      | ✅ 30% Used  |
| 🌐 **Network**          | `enp1s0`                   | ✅ UP        |
| 🐳 **Docker Bridge**    | `172.17.0.1/16`            | ⚪ Inactive  |
| 📁 **Root Filesystem**  | ext4                       | ✅ Mounted   |
| 📂 **Boot Filesystem**  | ext4                       | ✅ Mounted   |
| 🔐 **EFI Partition**    | vfat                       | ✅ Mounted   |

---

## 🔍 11. Overall Infrastructure Assessment

The Ubuntu cloud server is configured as a lightweight virtualized Linux environment with **one virtual CPU, approximately 1.9 GiB of RAM, 1 GiB of swap, and a 19 GB primary storage volume**.

The system currently has adequate resources for basic cloud computing laboratory activities, Linux system administration, web development, scripting, file management, and lightweight server applications.

### 📈 Resource Utilization

* 🧠 **Memory:** Approximately 608 MiB used
* 💾 **Root Storage:** 5.4 GB used
* 🔄 **Swap:** 0 B used
* 🌐 **Primary Network:** Active
* 🐳 **Docker Bridge:** Present but inactive
* 💽 **Root Filesystem:** Healthy and mounted as read/write

---

## 📝 12. Conclusion

The infrastructure investigation confirms that the cloud server is running **Ubuntu 24.04.4 LTS** with a Linux 6.8 kernel and a virtualized Intel Xeon processor. The server provides sufficient memory, storage, and networking resources for basic cloud computing and Linux administration tasks.

The primary storage is only **30% utilized**, leaving approximately **13 GB available**, while memory usage remains moderate and swap is unused. The active `enp1s0` interface provides network connectivity, while the Docker bridge is available for container-based workloads.

Overall, the server provides a suitable environment for **Linux system administration, cloud infrastructure practice, scripting, software development, and laboratory exercises**.

---

## 🛠️ Commands Used

```bash
# Operating System
cat /etc/os-release

# Kernel
uname -r

# CPU Information
lscpu | grep "Model name"
lscpu | grep "^CPU(s):"

# Memory Information
free -h

# Hostname
hostname

# IP Addresses
hostname -I

# Network Interfaces
ip addr

# Disk Usage
df -h

# Mounted Filesystems
findmnt
```

---

## 📌 Infrastructure Snapshot

> **Server:** `ubuntu`
> **OS:** Ubuntu 24.04.4 LTS
> **Kernel:** 6.8.0-138-generic
> **CPU:** 1 × Intel Xeon E312xx
> **RAM:** 1.9 GiB
> **Swap:** 1.0 GiB
> **Storage:** 19 GB
> **Storage Used:** 30%
> **Available Storage:** 13 GB
> **Primary IP:** 172.30.1.2
> **Root Filesystem:** ext4
> **Primary Interface:** enp1s0
> **Hostname:** ubuntu
