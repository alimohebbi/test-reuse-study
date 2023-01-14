#!/bin/bash
root=$(pwd)
dbPath=$root"/db.json"
echo "$dbpath"
QUERY1="MATCH (n) DETACH DELETE n"
QUERY2="call apoc.load.json('file:///$dbPath') YIELD value AS row WITH row, row.graph.nodes AS nodes UNWIND nodes AS node CALL apoc.create.node(node.labels, node.properties) YIELD node AS n SET n.id = node.id WITH row UNWIND row.graph.relationships AS rel MATCH (a) WHERE a.id = rel.startNode MATCH (b) WHERE b.id = rel.endNode CALL apoc.create.relationship(a, rel.type, rel.properties, b) YIELD rel AS r RETURN a,b,r"
echo $QUERY2
QUERY3="MATCH (a)-[r]->(b) WITH a, properties(r) as pr, collect(r) as rels, b WHERE size(rels) > 1 UNWIND tail(rels) as rel DELETE rel"
POST_DATA="{\"statements\":[{\"statement\": \"$QUERY1\"},{\"statement\": \"$QUERY2\"},{\"statement\": \"$QUERY3\"}]}"
curl -i -H 'accept:application/json' -H 'content-type:application/json' -H 'Authorization:Basic bmVvNGo6bmVvNGo' -d "$POST_DATA" -XPOST "http://localhost:7474/db/data/transaction/commit"  