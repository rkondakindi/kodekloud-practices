# Deploy MySQL on Kubernetes

A new MySQL server needs to be deployed on Kubernetes cluster. 
The Nautilus DevOps team was working on to gather the requirements. 
Recently they were able to finalize the requirements and shared them with the team members to start working on it.

1. Below you can find the details:

    a. Create a **PersistentVolume** named: `mysql-pv`, its capacity should be `250Mi`, set other parameters as per your preference.

    b. Create a **PersistentVolumeClaim** to request this PersistentVolume storage. Name it as `mysql-pv-claim` and request a `250Mi` of storage. Set other parameters as per your preference.

    c. Create secrets as below:

      * secret named **mysql-root-pass** having a key pair value, where key is `password` and its value is `YUIidhb667`.
      * secret named **mysql-user-pass** having some key pair values, where frist key is `username` and its value is `kodekloud_aim`, second key is `password` and value is `TmPcZjtRQx`.
      * secret named **mysql-db-url**, key name is `database` and value is `kodekloud_db9`.

    d. Create a **NodePort** type service named `mysql` and set nodePort to `30007`.

    e. Create a **deployment** named `mysql-deployment`, use any `mysql` image as per your preference. Mount the PersistentVolume at mount path `/var/lib/mysql`.

    f. Define some Environment variables within the container:

      * name: **MYSQL_ROOT_PASSWORD**, should pick value from `secretKeyRef` name: `mysql-root-pass` and key: `password`.
      * name: **MYSQL_DATABASE**, should pick value from `secretKeyRef` name: `mysql-db-url` and key: `database`.
      * name: **MYSQL_USER**, should pick value from `secretKeyRef` name: `mysql-user-pass` key: `username`.
      * name: **MYSQL_PASSWORD**, should pick value from `secretKeyRef` name: `mysql-user-pass` and key: `password`

2. Deploy K8s resources
  
    a. Deploy **PersistentVolume**

        kubectl apply -f mysql-pv.yaml
    b. Deploy **PersistentVolumeClaim**

        kubectl apply -f mysql-pv-claim.yaml

    c. Deploy Secrets. You can use either yaml or interactive mode

      * Secret: **mysql-root-pass** (`mysql-secrets.yaml`)

            kubectl create secret generic mysql-root-pass --from-literal=password=YUIidhb667

      * Secret: **mysql-user-pass** (`mysql-secrets.yaml`)

            kubectl create secret generic mysql-user-pass --from-literal=username=kodekloud_aim --from-literal=password=YUIidhb667

      * Secret: **mysql-db-url** (`mysql-secrets.yaml`)

            kubectl create secret generic mysql-db-url --from-literal=database=kodekloud_db9

    d. Deploy Service

        kubectl apply -f mysql-service.yaml
    e. Deploy deployment: `mysql-deployment`
    
        kubectl apply -f mysql-deployment.yaml

