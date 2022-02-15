# Set Limits for Resources in Kubernetes

Perform the following tasks:

1. Create a pod with the following specs:
    * Pod name: **httpd-pod**
    * Container name: **httpd-container**
    * Container Image: `httpd:latest`
    * set the following resource limits:
        * Requests: Memory: `15Mi`, CPU: `100m`
        * Limits: Memory: `20Mi`, CPU: `100m`
2. Create the pod:

        kubectl apply -f httpd-pod.yaml

