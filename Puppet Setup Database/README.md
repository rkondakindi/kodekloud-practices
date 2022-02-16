# Puppet Setup Database

The Nautilus DevOps team had a meeting with development team last week to discuss about some new requirements for an application deployment. Team is working on to setup a **mariadb** database server on `Nautilus DB Server` in Stratos Datacenter. They want to setup the same using Puppet. Below you can find more details about the requirements:

1. Create a puppet programming file `beta.pp` under `/etc/puppetlabs/code/environments/production/manifests` directory on **puppet master** node i.e on Jump Server. Define a class **mysql_database** in puppet programming code and perform below mentioned tasks:

    * Install package **mariadb-server** (whichever version is available by default in yum repo) on puppet agent node i.e on DB Server also start its service.
    * Start the `mariadb` servvice.
    * Create a database `kodekloud_db7` , a database user `kodekloud_rin` and set password `GyQkFRVNr3` for this new user also remember host should be `localhost`. Finally grant some usual permissions like `SELECT, UPDATE` (or `FULL`) to this newly created user on newly created database.

2. Install mysql module as root under **puppet master** node

        puppet module install puppetlabs-mysql --version 12.0.1 --target-dir /etc/puppetlabs/code/modules

3. Test the manifest file:

    * SSH to `Nautilus DB Server` and run the command

            sudo puppet agent -t

