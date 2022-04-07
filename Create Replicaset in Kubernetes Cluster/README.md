# Create Replicaset in Kubernetes Cluster

The Nautilus DevOps team is going to deploy some applications on kubernetes cluster as they are planning to migrate some of their existing applications there. Recently one of the team members has been assigned a task to write a template as per details mentioned below:

* Create a ReplicaSet using `httpd` image with `latest` tag only and remember to mention tag i.e `httpd:latest` and name it as **httpd-replicaset**.

* Labels `app` should be **httpd_app**, labels `type` should be **front-end**. The container should be named as **httpd-container**; also make sure **replicas** counts are `4`.

* apply
        
        kubectl apply -f httpd-rs.yaml

