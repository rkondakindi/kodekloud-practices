# Ansible Replace Module

1. Write a `playbook.yml` under `/home/thor/ansible` on jump host, and inventory is already present under `/home/thor/ansible` directory on Jump host itself. 

2. Perform below given tasks using this playbook:

  * We have a file `/opt/itadmin/blog.txt` on **app server 1**. Using Ansible `replace` module replace string **xFusionCorp** to **Nautilus** in that file.

  * We have a file `/opt/itadmin/story.txt` on **app server 2**. Using Ansible `replace` module replace the string **Nautilus** to **KodeKloud** in that file.

  * We have a file `/opt/itadmin/media.txt` on **app server 3**. Using Ansible `replace` module replace string **KodeKloud** to **xFusionCorp Industries** in that file.
