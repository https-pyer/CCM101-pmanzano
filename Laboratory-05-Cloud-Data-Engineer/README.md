# Laboratory 5: The Cloud Data Engineer

<br>

## 🎯 Mission Overview
 
Congratulations! Your seamless deployment of containerized web servers has caught the attention of 
the senior architects. You have now been temporarily reassigned to the **Cloud Data Engineering Team** at 
CloudNova Technologies. 

In the cloud, data is everything. However, not all data is stored the same way. While traditional 
computers use hard drives (Block Storage) and shared network drives (File Storage), modern cloud applications 
rely heavily on **Object Storage** to store massive amounts of unstructured data like images, videos, and backups. 
The industry standard for this is Amazon S3, but today, you will deploy your very own S3-compatible cloud 
storage server using an open-source tool called **MinIO**. 

Using your KillerCoda Playground, you will combine your new Docker skills with your cloud storage knowledge to 
deploy a live object storage server, create a storage "bucket," and upload data over the web. 

> Remember: A cloud engineer doesn't just store data; they ensure it is scalable, accessible, and secure. 

---

## 📋 Objectives

By completing this laboratory activity, I was able to:

- Differentiate between Block, File, and Object Storage.
- Deploy an S3-compatible Object Storage server (MinIO) using Docker.
- Access a cloud service through a web interface using port forwarding.
- Create a storage bucket and upload objects (files) to the cloud.
- Document cloud storage operations using Markdown.
- Continue expanding a professional GitHub Cloud Computing Portfolio.
# Laboratory 5: The Cloud Data Engineer


## 🛠️ Tools and Technologies

### 1. 🖥️ KillerCoda

KillerCoda is an online learning platform that provides a temporary environment for practicing Linux, Docker, and other cloud technologies. I used its Ubuntu Playground to execute commands and access the MinIO web console.

### 2. 🐳 Docker

Docker is a platform that runs applications inside containers. I used it to launch the storage server, configure port mappings, and set environment variables.

### 3. ☁️ MinIO

MinIO is an S3-compatible object storage server. I used it to create a private bucket named `client-photos` and store sample files. Since the official MinIO images could not be downloaded in my environment, I used the alternative `pgsty/minio` community image.

### 4. 🗂️ GitHub and Markdown

GitHub is a platform for storing and managing project files, while Markdown is used to format documentation. I used these tools to organize my laboratory files and document the steps I completed.

### 5. 🤖 ChatGPT

ChatGPT is an AI assistant that can support research, writing, and technical problem-solving. I used it to understand Docker errors, troubleshoot deployment issues, and improve my laboratory documentation.

## ⚠️ Deployment Notes

The official `minio/minio` and `quay.io/minio/minio` images could not be downloaded in the KillerCoda environment. To continue the activity, I used the alternative `pgsty/minio` community image.

The Docker commands and deployment details should be checked against the actual steps performed in the environment, as the standard MinIO setup may differ from the alternative deployment.

## 💡 Learning Outcomes

This laboratory improved my understanding of cloud storage and the practical uses of Block, File, and Object Storage. I also gained experience running containerized applications with Docker, configuring services, creating storage buckets, and uploading files through a web interface.

In addition, I learned the importance of troubleshooting technical issues and documenting each step clearly using Markdown and GitHub.
