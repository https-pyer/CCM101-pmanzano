# 🤔 Reflection — The Cloud-Native Engineer

This mission was a great learning experience for me because I was able to actually work with **Docker containers** instead of just reading about them. At first, I was a little confused about the difference between Virtual Machines and containers, but after doing the comparison and running Docker commands, I understood that containers are lighter, faster, and use fewer resources than VMs.

I also enjoyed trying the Docker commands myself. I used `docker --version` and `docker info` to check the environment, then downloaded the Nginx image and created my first container using `docker run -d -p 8080:80 --name nginx-server nginx`. Seeing the Nginx welcome page after running `curl http://localhost:8080` gave me a sense of accomplishment because I was able to deploy a working web server using just a few commands.

One challenge I experienced was accessing the Nginx page through my browser. I initially tried using `localhost:8080`, but I learned that KillerCoda runs on a remote cloud environment. After discovering and using the **Traffic** feature, I was finally able to access the web server. This helped me understand how ports and remote cloud environments work in practice.

I also learned how to manage the **container lifecycle** by using commands such as `docker ps`, `docker stop nginx-server`, `docker ps -a`, and `docker rm nginx-server`. Going through the process of running, stopping, checking, and removing my container made Docker feel much easier and more understandable.

Overall, I feel that this mission improved my confidence in using Docker and working with cloud-based environments. I also enjoyed documenting what I learned in Markdown and adding it to my GitHub portfolio. This activity showed me that cloud computing is not only about learning concepts but also about actually practicing them, troubleshooting problems, and learning from the experience.
