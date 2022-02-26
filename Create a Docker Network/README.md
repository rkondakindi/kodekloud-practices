# Create a Docker Network

1. The Nautilus DevOps team needs to set up several docker environments for different applications. One of the team members has been assigned a ticket where he has been asked to create some docker networks to be used later. Complete the task based on the following ticket description:

    * Create a docker network named as **ecommerce** on `App Server 3` in Stratos DC.
    * Configure it to use **macvlan** drivers.
    * Set it to use subnet `172.28.0.0/24` and iprange `172.28.0.3/24`.

2. Login to `App Server 3` and run below command:

        docker network create -d macvlan ecommerce --subnet 172.28.0.0/24 --ip-range 172.28.0.3/24
