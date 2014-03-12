#! /bin/sh

./bin/neo4j stop
rm -rf ./data/graph.db
./bin/neo4j start
