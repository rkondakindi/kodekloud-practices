# Ansible Create Users and Groups


1. Create users and groups as mentioned below:
    * There is already an inventory file `~/playbooks/inventory` on **jump host**.
    * On **jump host** itself there is a list of users in `~/playbooks/data/users.yml` file and there are two groups — **admins** and **developers** —that have list of different users. 
    * Create a playbook `~/playbooks/add_users.yml` on **jump host** to perform the following tasks on **app server 1** in Stratos DC.
        * Add all users given in the `users.yml` file on **app server 1**.
        * Also add **developers** and **admins** groups on the same server.
        * As per the list given in the `users.yml` file, make each user member of the respective group they are listed under.
        * Make sure home directory created for all of the users under **developers** group is `/var/www (not the default i.e /var/www/{USER})`. Users under **admins** group should use the default home directory `(i.e /home/devid for user devid)`.
        * Set password `B4zNgHA7Ya` for all of the users under **developers** group and `TmPcZjtRQx` for of the users under **admins** group. 
            * Make sure to use the password given in the `~/playbooks/secrets/vault.txt` file as Ansible vault password to encrypt the original password strings. 
            * You can use ~/playbooks/secrets/vault.txt file as a vault secret file while running the playbook (make necessary changes in ~/playbooks/ansible.cfg file).

        * All users under **admins** group must be added as `sudo` users. To do so, simply make them member of the `wheel` group as well.

2. Execute and verify the playbook by running below command

        ansible-playbook -i ~/playbooks/inventory ~/playbooks/add_users.yml

