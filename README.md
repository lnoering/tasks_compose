## Docker compose to tasks



#### How to install depencies to developers
> How to access php container
```bash
	docker exec -it <container-name> bash
```

> In docker of PHP exec.

 - composer
 ```bash
 	curl -sS https://getcomposer.org/installer | php
 	mv composer.phar /usr/local/bin/composer
	chmod +x /usr/local/bin/composer
	composer -V
 ```
 - nodejs and npm (https://nodejs.org/en/download/package-manager/)
 Obs.: For amazon linux
 ```bash
	curl --silent --location https://rpm.nodesource.com/setup_10.x | sudo bash -
	yum -y install nodejs
	yum install gcc-c++ make
 ```