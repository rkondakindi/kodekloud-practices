# Puppet Manage Services

Perform the following tasks:

1. Create a Puppet programming file `news.pp` under `/etc/puppetlabs/code/environments/production/manifests` directory on **master node** i.e **Jump Host** to perform the below given tasks.

    * Install package **nginx** using `puppet` package resource 
    * Start its service using puppet `service` resource on Puppet agent node 3 i.e **App Server 3**.

2. Test the manifest file: `news.pp`
    * Login to **App Server 3** and run the below command:
        
            sudo puppet agent -t

