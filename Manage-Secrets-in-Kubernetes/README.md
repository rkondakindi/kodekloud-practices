# Manage Secrets in Kubernetes

* We already have a secret key file `media.txt` under `/opt` location on jump host. 
* Create a generic secret named **media**, it should contain the password/license-number present in `media.txt` file.

  Run the following commands to create secret

  - `kubectl create secret generic media --dry-run=client --from-file=/opt/media.txt -oyaml > media.yaml`
  - `kubectl apply -f media.yaml`
  
* Create a pod named **secret-devops** with the following specs.

  - Container name should be **secret-container-devops**, 
  - Image should be **centos** preferably with **latest** tag. 
  - Use **sleep** command for container so that it remains in running state. 
  - Consume the created secret and mount it under `/opt/cluster` within the container.

  Run the following command to create pod
    
    - `kubectl apply -f secret-devops.yaml`