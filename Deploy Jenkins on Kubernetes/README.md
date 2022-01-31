# Deploy Jenkins on Kubernetes

Perform the following tasks to deploy Jenkins

1. Create a `namespace` **jenkins**
    **Solution:** you can use either of the command

        a. kubectl apply jenkins-ns.yaml

        b. kubectl create namespace jenkins

2. Create a Jenkins deployment under **jenkins** namespace with the following specs.
    * name: **jenkins-deployment**
    * namespace: **jenkins**
    * Add label as `app: jenkins`
    * container name: **jenkins-container**
    * container image: `jenkins/jenkins`
    * containerPort: `8080`
    * replicas: `1`

    **Solution:** apply `jenkins-deployment.yaml`

        kubectl apply -f jenkins-deployment.yaml

3. Create a Service for jenkins deployment with the following specs
    * Service name: **jenkins-service** 
    * namespace: **jenkins**
    * Service type: **NodePort**
    * NodePort: `30008`

    **Solution:** apply `jenkins-service.yaml`

        kubectl apply -f jenkins-service.yaml

4. Make sure to wait for the pods to be in running state and make sure you are able to access the Jenkins login screen in the browser before hitting the Check button.

