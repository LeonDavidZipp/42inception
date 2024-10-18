#!/bin/bash

service mysql start

mysql < ./init.sql

kill $(cat /var/run/mysqld/mysqld.pid)

mysqld