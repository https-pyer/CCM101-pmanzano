# ☁️ Checkpoint 2 – Research: Types of Cloud Storage

## 📊 Comparison Table

Cloud storage has three main types: Block Storage, File Storage, and Object Storage. Each stores data differently depending on how it needs to be accessed and managed.

| Storage Type | How It Stores Data | Best Use | Cloud Provider Examples |
|---|---|---|---|
| 🧱 **Block Storage** | Divides data into small, fixed-size blocks. The system manages these blocks like a hard drive. | Databases, operating systems, and virtual machine disks that require fast data access. | Amazon EBS, Azure Managed Disks, Google Persistent Disk |
| 📁 **File Storage** | Stores data as files arranged in folders and subfolders, similar to files on a computer. | Shared documents, team folders, and systems where multiple users need access to the same files. | Amazon EFS, Azure Files, Google Filestore |
| 📦 **Object Storage** | Stores each file as an object with its own unique identifier and metadata, allowing it to be retrieved through an API. | Photos, videos, backups, and large amounts of data that do not need a traditional folder structure. | Amazon S3, Azure Blob Storage, Google Cloud Storage |

## 🔍 Understanding the Differences

- 🧱 **Block Storage:** Think of it as a hard drive. It is suitable for applications that need fast, frequent reading and writing of data, such as databases.
- 📁 **File Storage:** Think of it as a shared computer folder. It makes it easy for multiple users or computers to access and organize files in folders.
- 📦 **Object Storage:** Think of it as a large online warehouse. Each file is stored as a separate object and retrieved using its unique identifier. It is ideal for storing large collections of photos, videos, and backups.

## 💡 Why Object Storage Is the Best Choice for User-Uploaded Images

Object Storage is the best choice for a photo-sharing application because it can handle large numbers of uploaded images and scale as the application grows. Images can be retrieved through URLs or delivered through a Content Delivery Network (CDN) for faster access. The application can store image URLs and related information in its database instead of storing the actual image files there, helping keep the database efficient.
