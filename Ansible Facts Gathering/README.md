# Ansible Facts Gathering

Perform the following tasks:

1. Create a playbook `index.yml` under `/home/thor/playbooks` directory on jump host.
    * Using **blockinfile** Ansible module create a file `facts.txt` under `/root` directory on all app servers and add the following given block in it. You will need to enable facts gathering for this task.

            Ansible managed node IP is <default ipv4 address>

    * Install **httpd** server on all apps.
    * make a copy of `facts.txt` file as `index.html` under `/var/www/html` directory. 
    * Make sure to start **httpd** service after that.

2. Test the ansible playbook as below

        ansible-playbook -i inventory httpd.yml

