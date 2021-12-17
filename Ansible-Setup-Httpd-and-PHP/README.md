# Ansible-Setup-Httpd-and-PHP

Perform the following tasks:

1. Create a playbook `~/playbooks/httpd.yml` on jump host and perform the following tasks on App Server 2.

    * Install **httpd** and **php** packages (whatever default version is available in yum repo).
    * Change default document root of Apache to `/var/www/html/myroot` in default Apache config `/etc/httpd/conf/httpd.conf`. Make sure `/var/www/html/myroot` path exists (if not please create the same).
    * Copy template file `~/playbooks/templates/phpinfo.php.j2` from jump host to Apache DocumentRoot as `phpinfo.php`.
        * File User and group ownerships to 
    * Start and enable httpd service.
2. Validate will try to run the playbook using command `ansible-playbook --limit stapp02 -i inventory httpd.yml`