# Creating Soft Links Using Ansible

Perform the following tasks:

1. Write a `playbook.yml` under `/home/thor/ansible` directory on jump host, an `inventory` file is already present under `/home/thor/ansible` directory on jump host itself. Using this playbook accomplish below given tasks:

    * Perform below on **app server 1**
        * Create an empty file `/opt/finance/blog.txt` ; its user owner and group owner should be `tony`.
        * Create a symbolic link of source path `/opt/finance` to destination `/var/www/html`.

    * Perform below on **app server 2**
        * Create an empty file `/opt/finance/story.txt`; its user owner and group owner should be `steve`.
        * Create a symbolic link of source path `/opt/finance` to destination `/var/www/html`.

    * Perform below on **app server 3**
        * Create an empty file `/opt/finance/media.txt` ; its user owner and group owner should be `banner`.
        * Create a symbolic link of source path `/opt/finance` to destination `/var/www/html`.

2. Test the playbook file by running below command

        ansible-playbook -i inventory playbook.yml

