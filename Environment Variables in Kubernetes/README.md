# Environment Variables in Kubernetes

Perform the following tasks:

1. Create a pod named **envars**
    * Container name should be `fieldref-container`
    * Image `busybox:latest`
    * Use command `'sh', '-c'` 
    * args should be `'while true; do echo -en '/n'; printenv NODE_NAME POD_NAME; printenv POD_IP POD_SERVICE_ACCOUNT; sleep 10; done;'`
    * Define Four environment variables as mentioned below:
        * The first env should be named as **NODE_NAME**, set valueFrom fieldref and fieldPath should be `spec.nodeName`.
        * The second env should be named as **POD_NAME**, set valueFrom fieldref and fieldPath should be `metadata.name`.
        * The third env should be named as **POD_IP**, set valueFrom fieldref and fieldPath should be `status.podIP`.
        * The fourth env should be named as **POD_SERVICE_ACCOUNT**, set valueFrom fieldref and fieldPath shoulbe be `spec.serviceAccountName`.

    * Set **restart** policy to `Never`.

2. To check the output, exec into the pod and use printenv command.

        kubectl exec envars -- printenv

