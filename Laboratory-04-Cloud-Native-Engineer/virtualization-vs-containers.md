# Checkpoint 2 — Research: Virtual Machines vs. Containers

Before deploying containers, it is important to understand how they differ from traditional Virtual Machines (VMs). The following table compares VMs and containers based on their architecture, boot time, resource efficiency, and isolation level.

| Category                | Virtual Machines (VMs)                                                                                 | Containers                                                                                                 |
| ----------------------- | ------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------- |
| **Architecture**        | Each VM has its own **Guest Operating System** and runs on virtualized hardware through a hypervisor.  | Containers share the **Host Operating System** kernel while running applications in isolated environments. |
| **Boot Time**           | Usually takes **minutes** because the complete guest operating system must be started.                 | Usually starts in **seconds** because there is no separate guest operating system to boot.                 |
| **Resource Efficiency** | **Heavy / High RAM usage** because every VM requires its own operating system and allocated resources. | **Lightweight / Low RAM usage** because containers share the host OS kernel and have less overhead.        |
| **Isolation Level**     | Provides **hardware-level isolation**, with each VM operating as an independent virtual machine.       | Provides **process-level isolation**, separating applications while sharing the host kernel.               |

## 📝 Summary

Containers can be considered for web applications because they are lightweight and can start much faster than traditional Virtual Machines. Since containers share the host operating system kernel, they generally require fewer resources and allow more applications to run on the same infrastructure. Containers also package applications and their dependencies together, making them easier to deploy consistently across different environments. These characteristics make containers useful for modern web applications where portability, efficiency, and fast deployment are important.

## 📚 References

CleanStart. (2026). *Containers vs virtual machines: Architecture, security, and performance compared*.
https://www.cleanstart.com/knowledge-hub/containers-vs-virtual-machines

Amazon Web Services. (2025). *Containers vs virtual machines: Understanding the difference*. AWS Builder Center.
https://builder.aws.com/content/2lngiMeN3ZNKY4AFS5ih5lGVGN0/containers-vs-virtual-machines-understanding-the-difference
