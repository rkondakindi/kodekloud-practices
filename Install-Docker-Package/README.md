# Install Docker Package

Follow below commands to instal Docker packages and start the service

* Install docker-ce and docker-compose packages on App Server 2.

  `sudo yum remove docker docker-common docker-selinux docker-engine`

  `sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo`

  `sudo yum -y install docker-compose docker-ce docker-ce-cli containerd.io`


* Start docker service.
  
  `sudo systemctl start docker && sudo systemctl enable docker`
