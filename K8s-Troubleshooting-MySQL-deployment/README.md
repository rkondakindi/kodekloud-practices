# K8s-Troubleshooting-MySQL-deployment

One of the Nautilus DevOps team members was working on to update an existing Kubernetes template. Somehow, he made some mistakes in the template and it is failing while applying. We need to fix this as soon as possible, so take a look into it and make sure you are able to apply it without any issues. Also, do not remove any component from the template like pods/deployments/volumes etc.

1. Fix `/home/thor/mysql_deployment.yml` is the template that needs to be fixed.

2. Refer the attached `mysql-deployment.yml` for correct template file.

Note: The kubectl utility on jump_host has been configured to work with the kubernetes cluster.

