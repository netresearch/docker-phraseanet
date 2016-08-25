#!/bin/bash

# DATABASES="database1,database2"

databases=$(echo $DATABASES | tr "," "\n")

mysql=( mysql --protocol=socket -uroot )
if [ ! -z "$MYSQL_ROOT_PASSWORD" ]; then
    mysql+=( -p"${MYSQL_ROOT_PASSWORD}" )
fi

user=$DATABASE_USER
pass=$DATABASE_PASSWORD

for db in $databases
do
    echo "CREATE DATABASE IF NOT EXISTS \`$db\`" | "${mysql[@]}"
done

echo "CREATE USER IF NOT EXISTS '$user'@'%' IDENTIFIED BY '$pass' ;" | "${mysql[@]}"

for db in $databases
do
    echo "GRANT ALL ON \`$db\`.* TO '$user'@'%';" | "${mysql[@]}"
done

echo 'FLUSH PRIVILEGES ;' | "${mysql[@]}"