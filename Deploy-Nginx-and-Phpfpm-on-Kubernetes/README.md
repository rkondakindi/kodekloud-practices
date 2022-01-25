# Deploy Nginx and Phpfpm on Kubernetes

Perform the following tasks:

1. Create a config map name: `nginx-config` for `nginx.conf` as we want to add some custom settings for nginx.conf.
    * Change default port **80** to **8092** in `nginx.conf`.
    * Change default document root `/usr/share/nginx` to `/var/www/html` in `nginx.conf`.
    * Update directory index to **index index.html index.htm index.php** in `nginx.conf`.

    **NOTE:** Use the below command to create ConfigMap as per above specs

        kubectl apply -f nginx-config-cm.yaml

2. Create a pod named **nginx-phpfpm** with the following specs:
    * Nginx container should be named as **nginx-container** and it should use **nginx:latest** image. 
    * PhpFPM container should be named as **php-fpm-container** and it should use **php:7.3-fpm** image.
    * Create a shared volume **shared-files** that will be used by both containers (nginx and phpfpm) also it should be a **emptyDir** volume.
    * Map the ConfigMap we declared above as a volume for nginx container. Name the volume as **nginx-config-volume**, mount path should be `/etc/nginx/nginx.conf` and subPath should be `nginx.conf`
    * The shared volume **shared-files** should be mounted at `/var/www/html` location in both containers. 

    **NOTE:** Use the below command to create Pod as per above specs

        kubectl apply -f nginx-phpfpm-pod.yaml

3. Create a service to expose this app, the service type must be **NodePort**, nodePort should be **30012**.

    **NOTE:** Use the below command to create Pod as per above specs

        kubectl apply -f nginx-service.yaml

4. Testing:

    * Copy `/opt/index.php` from jump host to the nginx document root inside nginx container, once done you can access the app using App button on the top bar.

    **NOTE:** Use below command to copy the file

        kubectl cp /opt/index.php nginx-phpfpm:/var/www/html -c nginx-container
