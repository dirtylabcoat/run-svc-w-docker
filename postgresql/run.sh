#!/bin/bash
PG_VERSION=9.6
PG_IMG_TAG=$PG_VERSION-alpine
PG_DATA_DIR=$PWD/pg_data

docker run --name postgres -p5432:5432 -it --rm -e POSTGRES_PASSWORD=testpass1 -e PGDATA=/var/lib/postgresql/data/pgdata -v $PG_DATA_DIR:/var/lib/postgresql/data postgres:$PG_IMG_TAG

