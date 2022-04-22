# Ansible File Module

The Nautilus DevOps team is working to test several Ansible modules on servers in Stratos DC. Recently they wanted to test the file creation on remote hosts using Ansible. Find below more details about the task:

* Create an inventory file `~/playbook/inventory` on jump host and add all app servers in it.

    ```
    stapp01 ansible_host=172.16.238.10 ansible_user=tony ansible_password=xxxxx
    stapp02 ansible_host=172.16.238.11 ansible_user=steve ansible_password=yyyyyy
    stapp03 ansible_host=172.16.238.12 ansible_user=banner ansible_password=zzzzzz
    ```

* Create a playbook `~/playbook/playbook.yml` to create a blank file `/tmp/app.txt` on all app servers.

* The `/tmp/app.txt` file permission must be **0755**.

* The user/group owner of file `/tmp/app.txt` must be tony on app server 1, steve on app server 2 and banner on app server 3.

