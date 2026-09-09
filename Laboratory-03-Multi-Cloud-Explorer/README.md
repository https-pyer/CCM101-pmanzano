# 🐧 Checkpoint 7 - Linux Investigation and Cloud Migration

This checkpoint examines the specifications of a Linux server running in the **KillerCoda Ubuntu Playground** and determines which major cloud platforms can support the same server requirements.

---

## 🖥️ 1. Linux Server Specifications

The following information was gathered from the **KillerCoda Ubuntu Playground**. The environment uses a virtualized **Ubuntu 24.04.4 LTS** server with limited computing resources.

| **Specification**       | **Details**                                   |
| ----------------------- | --------------------------------------------- |
| 🐧 **Operating System** | Ubuntu 24.04.4 LTS (Noble Numbat)             |
| 📦 **Distribution**     | Ubuntu                                        |
| 🔢 **Version**          | 24.04                                         |
| 🏗️ **Architecture**    | x86_64                                        |
| ⚙️ **CPU**              | 1 CPU                                         |
| 🧩 **CPU Model**        | Intel Xeon E312xx (Sandy Bridge, IBRS update) |
| 🚀 **CPU Speed**        | 2.0 GHz                                       |
| 🔹 **CPU Cores**        | 1 Core                                        |
| 🧵 **CPU Threads**      | 1 Thread                                      |
| ☁️ **Hypervisor**       | KVM                                           |
| 💻 **Virtualization**   | Full Virtualization                           |
| 🧠 **RAM**              | 1.9 GiB                                       |
| 📊 **RAM Used**         | 410 MiB                                       |
| 🟢 **RAM Available**    | 1.5 GiB                                       |
| 🔄 **Swap Memory**      | 1.0 GiB                                       |
| 💾 **Disk Capacity**    | 19 GB                                         |
| 📈 **Disk Used**        | 5.4 GB                                        |
| 🟢 **Disk Available**   | 13 GB                                         |
| 📊 **Disk Usage**       | 30%                                           |

### 🔎 Server Overview

The Linux environment is a lightweight virtual machine with **1 CPU, 1.9 GiB of RAM, and 19 GB of storage**. These specifications represent the minimum resources that a cloud-based virtual machine would need to provide to host a similar environment.

---

# ☁️ 2. Cloud Services That Could Host the Server

The KillerCoda environment is a **virtualized Ubuntu 24.04.4 LTS server**. Since the major cloud providers support Linux-based virtual machines, the server can be recreated on **AWS, Microsoft Azure, or Google Cloud Platform**.

---

## 🟧 AWS – Amazon EC2

### ☁️ Amazon Elastic Compute Cloud (EC2)

| **Item**                   | **Details**                                                                                                                                                                                                                                                             |
| -------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ☁️ **Cloud Service**       | **Amazon EC2 (Elastic Compute Cloud)**                                                                                                                                                                                                                                  |
| ✅ **Can Host the Server?** | **Yes**                                                                                                                                                                                                                                                                 |
| 💡 **Why?**                | Amazon EC2 supports Linux distributions such as Ubuntu. A small EC2 instance can be configured with CPU and memory resources that are close to the requirements of the KillerCoda server. Additional storage can also be assigned to meet or exceed the required 19 GB. |
| 🎯 **Suitable For**        | Ubuntu servers, websites, applications, development environments, and other Linux workloads.                                                                                                                                                                            |
| 🏁 **Conclusion**          | **Amazon EC2 can successfully host a similar Ubuntu server environment.**                                                                                                                                                                                               |

---

## 🔵 Microsoft Azure – Azure Virtual Machines

### ☁️ Azure Virtual Machines

| **Item**                   | **Details**                                                                                                                                                                                                     |
| -------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ☁️ **Cloud Service**       | **Azure Virtual Machines**                                                                                                                                                                                      |
| ✅ **Can Host the Server?** | **Yes**                                                                                                                                                                                                         |
| 💡 **Why?**                | Azure Virtual Machines supports Ubuntu and other Linux distributions. A suitable VM size can be selected to provide enough CPU and memory, while Azure managed disks can provide the required storage capacity. |
| 🎯 **Suitable For**        | Ubuntu servers, websites, web applications, development environments, and Linux-based services.                                                                                                                 |
| 🏁 **Conclusion**          | **Azure Virtual Machines can successfully host a similar Ubuntu server environment.**                                                                                                                           |

---

## 🔴 GCP – Compute Engine

### ☁️ Google Compute Engine

| **Item**                   | **Details**                                                                                                                                                                                                                  |
| -------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| ☁️ **Cloud Service**       | **Google Compute Engine**                                                                                                                                                                                                    |
| ✅ **Can Host the Server?** | **Yes**                                                                                                                                                                                                                      |
| 💡 **Why?**                | Google Compute Engine supports Ubuntu Linux and allows users to customize virtual machine resources. A VM can be configured with sufficient CPU, RAM, and disk space to reproduce the requirements of the KillerCoda server. |
| 🎯 **Suitable For**        | Ubuntu servers, websites, applications, development environments, and Linux workloads.                                                                                                                                       |
| 🏁 **Conclusion**          | **Google Compute Engine can successfully host a similar Ubuntu server environment.**                                                                                                                                         |

---

# 📊 3. Final Cloud Comparison

All three major cloud providers can support the requirements of the KillerCoda Ubuntu server. Each platform provides virtual machine services that allow users to configure CPU, memory, storage, and operating systems according to their needs.

| **Cloud Provider**     | **Cloud Service**      | **Ubuntu Support** | **Can Match Server Requirements?** |
| ---------------------- | ---------------------- | ------------------ | ---------------------------------- |
| 🟧 **AWS**             | Amazon EC2             | ✅ Yes              | ✅ Yes                              |
| 🔵 **Microsoft Azure** | Azure Virtual Machines | ✅ Yes              | ✅ Yes                              |
| 🔴 **GCP**             | Google Compute Engine  | ✅ Yes              | ✅ Yes                              |

---

## 🏆 Final Conclusion

The **KillerCoda Ubuntu server can be migrated or recreated on any of the three major cloud platforms**. AWS, Azure, and GCP all provide virtual machine services capable of supporting Ubuntu Linux and the required computing resources.

### 🎯 Key Findings

* 🟧 **AWS EC2** → Suitable for flexible and scalable Linux server deployments.
* 🔵 **Azure Virtual Machines** → A strong option for organizations already using Microsoft technologies.
* 🔴 **Google Compute Engine** → Suitable for customizable Linux environments and development workloads.

> 💡 **Key Takeaway:** Cloud migration provides a way to move a virtualized Linux environment from a temporary playground into a scalable cloud infrastructure. The final choice between AWS, Azure, and GCP should depend on factors such as **cost, performance, existing technology, scalability, management requirements, and organizational goals**.
