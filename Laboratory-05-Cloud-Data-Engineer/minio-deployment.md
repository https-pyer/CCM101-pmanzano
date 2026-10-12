# Checkpoint 5 — Technical Documentation

This documentation presents the procedures I followed to deploy an S3-compatible object storage service using Docker in the KillerCoda Ubuntu Playground. It covers container deployment, web console access, bucket creation, file uploads, and environment variable configuration.

---

## 🐳 A. Docker Deployment

I attempted to download the official `minio/minio` and `quay.io/minio/minio` images, but both attempts were unsuccessful in my KillerCoda environment. As an alternative, I used `pgsty/minio`, a community-maintained fork associated with the SILO object storage server.

**Important Note:** `pgsty/minio` is **not the official MinIO image**. Although it may provide similar S3-compatible storage features, its commands, configuration options, and interface may differ. Therefore, compatibility with the original laboratory instructions should be verified. I used this alternative to continue practicing Docker deployment and basic object storage operations.

### ⚙️ Commands Used

**1. Pull the Docker image**

```bash
docker pull pgsty/minio
```

**2. Create and start the container**

```bash
docker run -d -p 9000:9000 -p 9001:9001 --name minio-server \
-e "MINIO_ROOT_USER=cloudadmin" \
-e "MINIO_ROOT_PASSWORD=CloudNova2026!" \
pgsty/minio server /data --console-address ":9001"
```

**3. Verify the container status**

```bash
docker ps
```

The output helped me verify whether the `minio-server` container was running and whether ports `9000` and `9001` were mapped correctly.

---

## 🌐 B. Accessing the Web Console

I used the **Traffic / Ports** feature in KillerCoda to access the storage web interface. I entered port `9001` and selected **Access** to open the console in a browser tab.

| Item | Details |
|---|---|
| 🖥️ Web Console Port | `9001` |
| 🔌 Storage API Port | `9000` |
| 🧭 Access Procedure | Traffic / Ports → Enter `9001` → Access |

After opening the console, I entered the administrator credentials configured in the Docker command. The interface provided access to the available bucket and file management features.

---

## 📁 C. Creating a Bucket and Uploading Files

To organize sample data for a photo-sharing application, I created a bucket named `client-photos`. I kept the bucket private and uploaded two sample files to test the storage service.

| Item | Details |
|---|---|
| 🗂️ Bucket Name | `client-photos` |
| 🔒 Access Setting | Private |
| 📄 Uploaded File 1 | `App Instructions.txt` |
| 🖼️ Uploaded File 2 | `Reflection.webp` |

This process demonstrated how buckets organize objects in an object storage system and how files can be uploaded through a web-based storage interface. Keeping the bucket private also helped illustrate the importance of controlling access to stored files.

---

## 🔐 D. Environment Variable Configuration

I used environment variables in the Docker command to configure the administrator login credentials when starting the container.

| Environment Variable | Value | Purpose |
|---|---|---|
| `MINIO_ROOT_USER` | `cloudadmin` | Specifies the administrator username. |
| `MINIO_ROOT_PASSWORD` | `CloudNova2026!` | Specifies the administrator password. |

The `-e` option passes each environment variable into the container. These settings were intended to provide the login credentials required to access the storage console.

**🛡️ Security Considerations**

For production deployments, passwords should be managed through a secure secrets-management solution instead of being written directly in commands. Credentials passed through command-line arguments or environment variables may be exposed through shell history, container configuration, or administrative access.

---

## ✅ Conclusion

This laboratory activity improved my understanding of Docker image management, container deployment, port mapping, environment variables, and object storage. By using an alternative storage image, I practiced starting a container, accessing its web console, creating the `client-photos` bucket, and uploading sample files.

I also learned the importance of distinguishing official Docker images from alternative implementations, verifying compatibility with laboratory instructions, and following security best practices when configuring administrator credentials.

Overall, this activity provided practical experience with containerized storage services and the basic operations involved in managing cloud-based objects.
