###Atlassian Stash Container
Container is based on Stash 3.2.0 and MariaDB 5.5.37

Added mysql-connector-java-5.1.31. 

### Run Container
`docker run -d --name stash --net host polinux/stash:latest`

###Stash Web Setup
Select external Database and MySQL 

`Hostname:			localhost

Database name:		stash

Database username: 	stashuser

Database password:	password`



