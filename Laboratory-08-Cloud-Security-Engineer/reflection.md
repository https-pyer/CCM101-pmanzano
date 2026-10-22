# 💭 Mission Reflection — The Cloud Security Engineer

Completing Laboratory Activity 8 helped me understand why cloud security is an essential part of managing and maintaining a server. I learned that deploying an application is not enough because the server must also be protected against unauthorized network access.

One of my most important lessons was understanding how a host-based firewall provides an additional layer of security. Even if an organization's external network defenses are breached, a firewall installed on an individual server can still restrict incoming connections based on its configured rules. This demonstrates the importance of defense in depth, where multiple security measures work together to protect systems.

I also learned that managing open network ports is critical to reducing a server's attack surface. Every exposed service can become a potential entry point if it contains vulnerabilities or is configured incorrectly. By allowing only necessary services, such as SSH for administration and TCP port 8080 for the web application, administrators can reduce unnecessary exposure.

Another important lesson concerns database security. Leaving a database port, such as MySQL port 3306, publicly accessible can expose sensitive information to unauthorized users and increase the risk of brute-force attacks or exploitation. In an enterprise environment, database access should be restricted to trusted application servers or authorized networks, with strong authentication and appropriate access controls.

This mission also changed my perspective on how easily a server can become exposed when security configurations are overlooked. Using UFW taught me the importance of setting a Default Deny policy, allowing required traffic explicitly, and verifying the resulting configuration instead of assuming the system is secure.

Finally, completing eight cloud computing missions has helped me build a more organized and professional GitHub portfolio. Documenting my commands, screenshots, configurations, and reflections allows me to demonstrate my progress and communicate technical work more effectively. Overall, this activity strengthened my understanding of practical cloud security and encouraged me to treat security as an ongoing responsibility rather than a one-time task.
