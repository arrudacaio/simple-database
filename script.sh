#!/bin/sh

db_set() {
  echo "$1,$2" >>  database

}

db_get() {
  grep "^$1," database | sed -e "s/^$1,//" | tail -n 1
  
}

echo "Starting the most simple database in the world"
echo "Writing in database log"

db_set 1,{name: Caio}

echo "end"
