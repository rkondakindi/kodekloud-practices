# Puppet Setup NTP Server

* Create a puppet programming file `news.pp` under `/etc/puppetlabs/code/environments/production/manifests` directory on puppet master node i.e on Jump Server. Within the programming file define a custom class ntpconfig to install and configure ntp server on app server 3.

* Add NTP Server **server 3.pool.ntp.org** in default configuration file on app server 3, also remember to use **iburst** option for faster synchronization at startup.

* Please note that do not try to start/restart/stop ntp service, as we already have a scheduled restart for this service tonight and we don't want these changes to be applied right now.

