#!/bin/bash -e
# created by lnoering@gmail.com


docker exec portal_compose_database_1 mysql -u root -proot -e "CREATE DATABASE portal";

# docker exec -i docker-compose_db_1 mysql -u root -proot loja1 < ./modelo1-5.7.sql;

docker exec -i portal_compose_nginx_1 sh /create-store.sh portal;

docker exec portal_compose_php_1 service php-fpm restart;