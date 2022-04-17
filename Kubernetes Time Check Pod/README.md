# Kubernetes Time Check Pod

The Nautilus DevOps team want to create a time check pod in a particular Kubernetes namespace and record the logs. This might be initially used only for testing purposes, but later can be implemented in an existing cluster. Please find more details below about the task and perform it.

* Create a pod called **time-check** in the **datacenter** namespace. This pod should run a container called `time-check`, container should use the `busybox` image with `latest` tag only and remember to mention tag i.e `busybox:latest`.

* Create a config map called **time-config** with the data `TIME_FREQ=8` in the same namespace.

* The **time-check** container should run the command: `while true; do date; sleep $TIME_FREQ;done` and should write the result to the location `/opt/security/time/time-check.log`. 
    
* Remember you will also need to add an environmental variable **TIME_FREQ** in the container, which should pick value from the config map `TIME_FREQ` key.

* Create a volume **log-volume** and mount the same on `/opt/security/time` within the container.

Here find the commands for above tasks

* Create namespace and config map

        kubectl create ns datacenter
        kubectl create cm -n datacenter --from-lateral=TIME_FREQ=8

* Create pod as per spec

        kubectl apply -f time-config.yaml

