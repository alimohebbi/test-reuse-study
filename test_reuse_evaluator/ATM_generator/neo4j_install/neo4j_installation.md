# Neo4J server
Download and extract 
[Neo4j community server 4.3.0](https://dist.neo4j.org/neo4j-community-4.3.0-unix.tar.gz)
It is also available from official website [download center](https://neo4j.com/download-center/#community) page.



### APOC plugin
- Download the plugin jar file for [version 4.3.0](https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/4.3.0.12). It should be compatible with the version.
- Put in $NEO4J_HOME/plugin
- Insert following lines to `$NEO4J_HOME/conf/neo4j.conf` file

````
apoc.import.file.enabled=true
apoc.import.file.use_neo4j_config=false
````

### Initialization
- set java home to java 11
- start the server $NEO4J_HOME/bin/neo4j start
- set initial password 

````
# neo4j-admin set-initial-password <the password>
$NEO4J_HOME/bin/neo4j-admin set-initial-password 1234
````
- restart the server
- login into cypher-shell default username is `neo4j` and the password is `1234`
- change the password
````
# ALTER USER <username> SET PASSWORD '<password>';
ALTER USER neo4j SET PASSWORD 'neo4j';
````

### Test
For testing your database run `neotest.sh`.
It should create a graph with 17 nodes & 24 relations. 
You can run following code in cypher-shell console to check number of nodes.
```
MATCH (n)
RETURN count(n) as count;
```
Don't worry about removing them from db. ATM does it before creating new graph. 
