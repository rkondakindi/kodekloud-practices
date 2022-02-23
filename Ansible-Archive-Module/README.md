# Ansible Archive Module

Perform the following tasks:

1. Create a playbook to create archive file
    * Create a `playbook.yml` under `/home/thor/ansible` on jump host
    * an inventory file is already placed under `/home/thor/ansible` on Jump Server itself.
    * Create an archive `apps.tar.gz` (make sure archive format is tar.gz) of `/usr/src/itadmin/` directory ( present on each app server ) and copy it to `/opt/itadmin/` directory on all app servers. The user and group owner of archive `apps.tar.gz` should be **tony** for `App Server 1`, **steve** for `App Server 2` and **banner** for `App Server 3`.

2. Run below command to create archive file:

        ansible-playbook -i inventory playbook.yml

