# Neo4J server
- Download [Neo4j community server 4.3.0](https://dist.neo4j.org/neo4j-community-4.3.0-unix.tar.gz).
It is also available from official website [download center](https://neo4j.com/download-center/#community) page.
- Extract the file. We call the extraction place $NEO4J_HOME for the rest of the readme. 

### APOC plugin
- Download the apoc-[version]-all.jar file for [version 4.3.0](https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/4.3.0.12).
  APOC version should be compatible with the server's version.
- Move the jar file into $NEO4J_HOME/plugin
- Insert following lines to `$NEO4J_HOME/conf/neo4j.conf` file
    
    ````
    apoc.import.file.enabled=true
    apoc.import.file.use_neo4j_config=false
    ````

### Initialization
- Set java home to java 11
    > After running Neo4j, set the default java to 8 because ATM generator requires Java 8. 

- Start the server $NEO4J_HOME/bin/neo4j start
- Set initial password 

    ````
    # neo4j-admin set-initial-password <the password>
    $NEO4J_HOME/bin/neo4j-admin set-initial-password 1234
    ````
- Restart the server
- Login into cypher-shell by running the following command. The default username is `neo4j` and the password is `1234`

    ```shell
       $NEO4J_HOME/bin/cypher-shell
    ```

- Change the password to the `neo4j`
    ````
    # ALTER USER <username> SET PASSWORD '<password>';
    ALTER USER neo4j SET PASSWORD 'neo4j';
    ````
- Exit from the cypher-shell
    ```shell
    :exit 
    ```
  
    > Everytime that you start the Neo4j you need to reset the password to neo4j.

### Test
For testing your database run `neotest.sh`.
It should create a graph with 17 nodes & 24 relations. 
You can run following code in cypher-shell console to check number of nodes.
```
MATCH (n)
RETURN count(n) as count;
```
Don't worry about removing them from db. ATM does it before creating new graph. 
