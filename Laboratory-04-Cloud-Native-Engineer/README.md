# Laboratory Activity 4 — Mission 4: The Cloud-Native Engineer

## 📖 Mission Overview

After completing the previous multi-cloud activities, I continued my journey as a **Cloud-Native Engineer** at CloudNova Technologies.

This laboratory introduced the concept of **containerization** and how it differs from traditional Virtual Machines (VMs). Modern cloud applications commonly use containers because they are lightweight, portable, and can start applications quickly.

Using the **KillerCoda Playground**, I explored the basic concepts of virtualization and containerization, practiced essential Docker commands, and deployed a web server using an Nginx container.

> 💡 **Key Idea:** A traditional system administrator focuses on managing servers, while a cloud-native engineer focuses more on managing the applications and services running within the cloud environment.

---

## 🎯 Objectives

At the end of this laboratory activity, I was able to:

* Explain the differences between Virtual Machines and containers.
* Use the Docker-enabled environment provided by KillerCoda.
* Execute basic Docker Command Line Interface (CLI) commands.
* Download, start, monitor, stop, and remove an Nginx container.
* Document Docker operations using organized Markdown formatting.
* Improve my GitHub Cloud Computing Portfolio through technical documentation.

---

## 💻 Docker Commands Executed

The following Docker commands were used throughout **Checkpoints 3, 4, and 5**.

### Checkpoint 3 — Checking the Docker Installation

| Command                  | Description                                                                                                          |
| ------------------------ | -------------------------------------------------------------------------------------------------------------------- |
| `docker --version`       | Displays the version of Docker installed in the environment.                                                         |
| `docker info`            | Shows detailed information about the Docker system, including containers, images, storage, and system configuration. |

**Result Observed:**

The Docker environment showed **Docker version 29.1.3** running on **Ubuntu 24.04.4 LTS**. Since the environment was newly created, there were initially **0 containers and 0 images**.

**Screenshot Description — Checkpoint 3.1:**
The terminal displayed the installed Docker version, confirming that Docker was successfully installed and available for use.

**Screenshot Description — Checkpoint 3.2:**
The `docker info` command displayed detailed information about the Docker environment, including the operating system, container count, image count, and other Docker system details.

---

### Checkpoint 4 — Deploying the First Container

For this checkpoint, I deployed an **Nginx web server** inside a Docker container.

| Command                                         	 | Description                                                                                                |
| ------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------- |
| `docker pull nginx`                             	 | Downloads the official Nginx image from Docker Hub.                                                        |
| `docker run -d -p 8080:80 --name nginx-server nginx`   | Creates and runs an Nginx container in detached mode while connecting host port 8080 to container port 80. |
| `curl http://localhost:8080`                    	 | Sends a request to the Nginx server to check whether it is running correctly.                              |

**Result Observed:**

The terminal returned the HTML content of the **Nginx Welcome Page**. This confirmed that the Nginx web server was successfully deployed and running inside the Docker container.

---

### Checkpoint 5 — Managing the Container Lifecycle

This checkpoint focused on the basic lifecycle of a Docker container.

| # | Command                | Description                                                                                                  |
| - | ---------------------- | ------------------------------------------------------------------------------------------------------------ |
| 1 | `docker ps`            | Displays the currently running containers and confirms that `my-nginx` is active.                            |
| 2 | `docker stop nginx-server` | Stops the running Nginx container.                                                                           |
| 3 | `docker ps -a`         | Displays all containers, including stopped containers, and confirms that `my-nginx` has exited successfully. |
| 4 | `docker rm nginx-server`   | Removes the stopped Nginx container from the Docker environment.                                             |
| 5 | `docker ps -a`         | Confirms that there are no remaining containers.                                                             |


## 🧠 Skills Learned

Through this lab, I gained several practical cloud skills:

* **Virtualization vs. Containers:** Learned how containers differ from VMs in speed, size, and resource usage.
* **KillerCoda Playground:** Practiced using a cloud-based Docker environment.
* **Docker CLI:** Learned core commands to pull images, run containers, map ports, and inspect the environment.
* **Container Lifecycle:** Practiced creating, tracking, stopping, and removing containers.
* **Web Deployment:** Easily deployed an Nginx web server in a container.
* **Documentation:** Improved my skills in writing clear technical docs using Markdown and GitHub.
* **Troubleshooting:** Learned to access remote KillerCoda ports using its **Traffic** feature when `localhost:8080` isn't reachable locally.
---

## ⚠️ Challenges Encountered

During this activity, one of the main challenges I encountered was understanding the different Docker commands and how they work. At first, I was unfamiliar with commands such as `docker run`, `docker ps`, `docker stop`, and `docker rm`, which made it difficult to manage and monitor containers. 

I overcame this challenge by:
* Carefully following the instructions
* Practicing each command in the **KillerCoda** environment
* Observing the results after executing them

Through this process, I learned the purpose of each command and how they are used to create, view, stop, and remove Docker containers.

> This challenge helped me become more comfortable with the Docker command line and improved my understanding of how containers are managed.
---

## 📚 References

Amazon Web Services. (2025, December 8). *Containers vs virtual machines: Understanding the difference*. AWS Builder Center.
https://builder.aws.com/content/2lngiMeN3ZNKY4AFS5ih5lGVGN0/containers-vs-virtual-machines-understanding-the-difference

CleanStart. (2026, June 9). *Containers vs virtual machines: Architecture, security, and performance compared*.
https://www.cleanstart.com/knowledge-hub/containers-vs-virtual-machines

Docker. (n.d.). *Docker documentation*.
https://docs.docker.com/

KillerCoda. (n.d.). *KillerCoda playgrounds*.
https://killercoda.com/playgrounds

