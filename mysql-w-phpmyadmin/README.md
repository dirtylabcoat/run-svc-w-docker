# mysql-w-phpmyadmin

Setup of MySQL-database (including phpMyAdmin) using Docker Compose.

The configuration of database is in mysql.env. Put any init-scripts for the database in the `dbinit`-directory and they will run when the container starts up.

First activate the configuration with:

    source ./mysql.env

Then run with:

    docker-compose up -d

This will start MySQL and phpMyAdmin in the background. Remove the `-d` at the end if you want them to run in the foreground.

You'll find phpMyAdmin at [http://localhost:9080](URL).

You can also connect directly to the database with:

    docker exec -it mysql mysql -u$MYSQL_USER -p$MYSQL_PASSWORD
