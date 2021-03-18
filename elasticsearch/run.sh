#!/bin/bash
ELASTICSEARCH_VERSION=5.6.16
DATA_DIR=$PWD/elasticsearch-data
echo "Starting Elasticsearch $ELASTICSEARCH_VERSION. Storing data in $DATA_DIR."
docker run --rm -e "discovery.type=single-node" -p 9200:9200 -it --rm -v $DATA_DIR:/usr/share/elasticsearch/data docker.elastic.co/elasticsearch/elasticsearch:$ELASTICSEARCH_VERSION
