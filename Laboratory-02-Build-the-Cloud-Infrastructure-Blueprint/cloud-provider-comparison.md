# ☁️ Checkpoint 4 – Major Cloud Provider Comparison

Cloud providers offer similar infrastructure capabilities, but each provider uses different service names and technologies. This comparison focuses on four major infrastructure components: **Compute, Storage, Networking, and Identity and Access Management (IAM)**.

The three providers compared are:

* ☁️ **Amazon Web Services (AWS)**
* 🔷 **Microsoft Azure**
* 🌐 **Google Cloud Platform (GCP)**

---

## 📊 Cloud Provider Service Comparison

| 🏗️ Infrastructure Component              | ☁️ **Amazon Web Services (AWS)**                                                                       | 🔷 **Microsoft Azure**                                                                                             | 🌐 **Google Cloud Platform (GCP)**                                                                        |
| ----------------------------------------- | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------------- |
| **💻 Compute**                            | **Amazon EC2** – Provides scalable virtual servers for running applications and workloads.             | **Azure Virtual Machines** – Provides scalable virtual machines for Windows and Linux workloads.                   | **Compute Engine** – Provides customizable virtual machines for different workloads.                      |
| **💾 Storage**                            | **Amazon S3** – Object storage for data, backups, applications, and archives.                          | **Azure Blob Storage** – Object storage for large amounts of unstructured data.                                    | **Cloud Storage** – Secure and scalable object storage for applications and data.                         |
| **🌐 Networking**                         | **Amazon VPC** – Creates an isolated virtual network for AWS resources.                                | **Azure Virtual Network (VNet)** – Provides private networking and connectivity between Azure resources.           | **Virtual Private Cloud (VPC)** – Provides networking for Compute Engine, GKE, and other cloud workloads. |
| **🔐 Identity & Access Management (IAM)** | **AWS IAM** – Controls authentication, authorization, users, roles, and permissions for AWS resources. | **Microsoft Entra ID + Azure RBAC** – Manages identities, authentication, authorization, and resource permissions. | **Google Cloud IAM** – Controls access to Google Cloud resources through roles and permissions.           |

### 🔎 Service Equivalents

| Category        | AWS        | Azure                           | GCP              |
| --------------- | ---------- | ------------------------------- | ---------------- |
| Compute         | Amazon EC2 | Azure Virtual Machines          | Compute Engine   |
| Object Storage  | Amazon S3  | Azure Blob Storage              | Cloud Storage    |
| Virtual Network | Amazon VPC | Azure Virtual Network           | Google Cloud VPC |
| IAM             | AWS IAM    | Microsoft Entra ID / Azure RBAC | Google Cloud IAM |

AWS documentation describes EC2 as a flexible compute service and Amazon VPC as a customizable networking environment. AWS IAM controls authentication and authorization for AWS resources.

Azure Virtual Machines provide virtualized computing for Windows and Linux workloads, while Azure Virtual Network provides private networking between Azure resources, the internet, and on-premises networks. Microsoft Entra ID provides cloud-based identity and access management, with Azure RBAC used to control access to Azure resources.

Google Cloud provides Compute Engine for virtual machines, Cloud Storage for object storage, and VPC for networking. Google Cloud IAM uses roles and permissions to control access to cloud resources.

---

# 📝 Guide Questions

## 1. Which cloud provider offers the broadest range of services? Explain your answer.

**Amazon Web Services (AWS)** is generally recognized as having one of the broadest and deepest selections of cloud services. Its portfolio covers compute, storage, networking, databases, analytics, security, AI/ML, containers, IoT, and many other areas, giving organizations a wide range of options for different workloads.

## 2. Which cloud platform would you recommend for an organization that primarily uses Microsoft products? Why?

**Microsoft Azure** would be a strong recommendation for an organization that primarily uses Microsoft products. Azure integrates closely with Microsoft technologies such as **Microsoft 365, Windows Server, SQL Server, and Microsoft Entra ID**, which can simplify identity management, authentication, and integration with existing Microsoft environments.

## 3. Which platform is widely recognized for Artificial Intelligence (AI), Machine Learning (ML), and Kubernetes services?

**Google Cloud Platform (GCP)** is widely recognized for its strong capabilities in **AI, Machine Learning, and Kubernetes**. Google Cloud provides AI/ML technologies and services, while **Google Kubernetes Engine (GKE)** provides a managed environment for running containerized applications.

## 4. What similarities did you observe among the three cloud providers?

All three providers offer equivalent core infrastructure services for **compute, storage, networking, and identity/access management**, although the service names and implementation details differ. They also provide scalable, secure, and highly available infrastructure that allows organizations to deploy applications without maintaining all physical infrastructure themselves.

---

# 📚 Official Documentation References

* **AWS Documentation** – [AWS Documentation](https://docs.aws.amazon.com/?utm_source=chatgpt.com)
* **Microsoft Azure Documentation** – [Microsoft Learn – Azure](https://learn.microsoft.com/en-us/azure/?utm_source=chatgpt.com)
* **Google Cloud Documentation** – [Google Cloud Documentation](https://cloud.google.com/docs?utm_source=chatgpt.com)

---

## ✅ Conclusion

AWS, Azure, and GCP provide comparable core cloud infrastructure services, but they differ in naming, architecture, and areas of strength. Understanding these service equivalents helps cloud engineers transfer their knowledge between platforms and select the provider that best matches an organization's technical requirements.
