# ☁️ Cloud Infrastructure Blueprint

## 🎯 Mission Overview

This laboratory activity focused on developing a foundational understanding of **cloud infrastructure** and its core components. Using the **KillerCoda Playground** and **Linux Terminal**, I explored a cloud-based Linux environment, examined its available system resources, identified essential infrastructure components, and researched major cloud service providers.

As part of the activity, I designed a simple cloud infrastructure architecture for a fictional company called **ARK**, illustrating how users, the Internet, networking, compute, and storage resources interact within a cloud environment.

The laboratory also provided practical experience in **technical documentation, Markdown formatting, Git, and GitHub repository management**.

---

## 🎯 Objectives

The primary objectives of this laboratory activity were to:

* ☁️ Understand the fundamental components of cloud infrastructure.
* 🖥️ Investigate hardware and software resources within a Linux environment.
* 💾 Identify compute, storage, and networking resources.
* 🌐 Understand how cloud infrastructure components communicate and work together.
* 🏗️ Design a basic cloud infrastructure architecture diagram.
* 🔍 Compare cloud services offered by **AWS, Microsoft Azure, and Google Cloud Platform (GCP)**.
* 📝 Develop professional technical documentation using Markdown.
* 🗂️ Organize, manage, and maintain laboratory files using Git and GitHub.
* 🚀 Gain practical experience with Linux as an essential technology in cloud computing.

---

## 🧩 Cloud Infrastructure Components

The fictional company **ARK** uses a basic cloud infrastructure consisting of a user, Internet connection, network, compute resource, and storage resource.

| 🔧 **Component**           | 📖 **Description**                                                                            |
| -------------------------- | --------------------------------------------------------------------------------------------- |
| 🖥️ **Compute Resource**   | Provides processing power required to run applications, services, and workloads.              |
| 💾 **Storage Resource**    | Provides space for storing files, databases, application data, and other digital information. |
| 🌐 **Network**             | Connects cloud resources and enables communication between users, applications, and services. |
| 👤 **User**                | Represents an individual or client accessing and interacting with the cloud system.           |
| 🌍 **Internet Connection** | Provides connectivity between users and the cloud infrastructure.                             |

### 🏗️ Basic Architecture

The infrastructure follows this general flow:

```text
        👤 USER
           │
           ▼
      🌐 INTERNET
           │
           ▼
     ☁️ CLOUD NETWORK
        (VPC/VNet)
        ┌────┴────┐
        ▼         ▼
   🖥️ COMPUTE   💾 STORAGE
```

This architecture demonstrates how a user can access cloud resources through the Internet and a cloud network. The **compute resource** handles application processing, while the **storage resource** stores the information required by the application.

---

## 🛠️ Tools and Technologies Used

The following tools and technologies were utilized throughout the laboratory activity:

| 🛠️ **Tool / Technology**    | 📌 **Purpose**                                                                      |
| ---------------------------- | ----------------------------------------------------------------------------------- |
| 🎨 **Canva**                 | Used to design the cloud infrastructure architecture diagram.                       |
| ☁️ **KillerCoda Playground** | Provided a cloud-based Linux environment for performing the laboratory activities.  |
| 💻 **Linux Terminal**        | Used to inspect system resources and execute Linux commands.                        |
| 🐙 **GitHub**                | Used to store, manage, version, and publish laboratory files.                       |
| 📝 **Markdown**              | Used to create structured and professional technical documentation.                 |
| 🌐 **Web Browser**           | Used to access GitHub, cloud provider documentation, and other technical resources. |

---

## 💻 Linux Commands Executed

The following Linux commands were used to inspect the cloud-based Linux environment and gather system information.

| 💻 **Command**               | 📖 **Purpose**                                                                        |
| ---------------------------- | ------------------------------------------------------------------------------------- |
| `cat /etc/os-release`        | Displays information about the installed Linux distribution and operating system.     |
| `uname -r`                   | Displays the current Linux kernel version.                                            |
| `lscpu \| grep "Model name"` | Displays the CPU model or processor information.                                      |
| `lscpu \| grep "^CPU(s):"`   | Displays the number of available CPU processing units.                                |
| `free -h`                    | Displays total, used, and available system memory in a human-readable format.         |
| `df -h`                      | Displays disk usage, available space, and mounted storage in a human-readable format. |
| `findmnt`                    | Displays mounted file systems and their corresponding mount points.                   |
| `hostname`                   | Displays the hostname assigned to the Linux system.                                   |
| `hostname -I`                | Displays the IP address assigned to the system.                                       |
| `ip addr`                    | Displays network interfaces, IP addresses, and network configuration details.         |

### ⚡ Quick System Information Command

The following command can be used to quickly collect several important system details:

```bash
echo "=== OPERATING SYSTEM ==="; cat /etc/os-release; \
echo "=== KERNEL ==="; uname -r; \
echo "=== CPU ==="; lscpu | grep "Model name"; \
echo "=== CPU CORES ==="; lscpu | grep "^CPU(s):"; \
echo "=== RAM ==="; free -h; \
echo "=== DISK ==="; df -h; \
echo "=== MOUNTED FILE SYSTEMS ==="; findmnt; \
echo "=== HOSTNAME ==="; hostname; \
echo "=== IP ADDRESS ==="; hostname -I
```

This shortcut combines multiple Linux commands into a single sequence, making it easier to collect system information during cloud infrastructure investigation.

---

## 🧠 Skills and Knowledge Acquired

Through this laboratory activity, I developed and strengthened the following technical skills:

* ☁️ Identifying the fundamental elements of cloud infrastructure.
* 💻 Investigating Linux server resources through terminal commands.
* 🖥️ Understanding the role of compute resources in cloud environments.
* 💾 Understanding the purpose of cloud storage resources.
* 🌐 Understanding networking and communication between cloud components.
* 🏗️ Designing a basic cloud infrastructure architecture.
* 📝 Creating structured technical documentation using Markdown.
* 🐙 Using Git and GitHub for version control and project management.
* 🔎 Comparing cloud services from major cloud providers.
* 📂 Organizing laboratory files and documentation in a GitHub repository.
* 🐧 Understanding the importance of Linux in modern cloud computing environments.

---

## ⚠️ Challenges Encountered

One challenge I faced was understanding how **compute, storage, networking, and Internet connectivity** work together. I also needed time to become familiar with Linux commands for checking system resources.

Another challenge was choosing the right information from the documentation of **AWS, Azure, and Google Cloud**, since they offer many different services.

Overall, the activity helped me become more comfortable with Linux, cloud infrastructure, and technical documentation.

---

## 🏁 Conclusion

This laboratory gave me a better understanding of **how cloud infrastructure works**. I learned how compute, storage, and networking work together and how to check system information using Linux commands.

I also improved my skills in **Linux, cloud architecture, Markdown, Git, and GitHub**.

> 💡 **Key Takeaway:** Cloud computing connects **compute, storage, and networking** to provide resources that users can access through the Internet.
