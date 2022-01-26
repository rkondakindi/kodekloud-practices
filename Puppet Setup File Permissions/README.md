# Puppet Setup File Permissions

1. Create a Puppet programming file **beta.pp** under `/etc/puppetlabs/code/environments/production/manifests` directory on the master node i.e Jump Server Using puppet file resource, perform the below mentioned tasks.

    * A file named `official.txt` already exists under `/opt/security` directory on **App Server 2**.

    * Add content **Welcome to xFusionCorp Industries!** in `official.txt` file on **App Server 2**.

    * Set its permissions to **0744**.

2. Apply manifest **beta.pp** from master or run below command from **App server 2**

        sudo puppet agent -t
