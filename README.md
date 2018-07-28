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
 - nodejs 
 ```bash
 	yum install nodejs --enablerepo=epel
 ```
 - npm 
 ```bash
 	yum install npm --enablerepo=epel
 ```