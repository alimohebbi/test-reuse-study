This artifact generates test cases by using ATM test generator for given semantic matching configurations.

**Input:** Source and target application code, Source application Java test cases, Migrations Info, Semantic Matching Configurations

**Output:** Migrated Test cases in Java, Status of migrations

Location of inputs:
- Source applications code: `ATM-Modified/AppTestMigrator/donor`
- Target applications code: `ATM-Modified/AppTestMigrator/target`
- Source application Java test cases: Inside the test package of each source application
- Migrations Info: `migrations.csv` It specifies which source test cases should be migrated for which target application
- Semantic Matching Configurations: `config_sample.csv`

Location of output:
Migrated Test cases in Java

### Requirements
- Java 8
- python 3.7
- pip3
- python3.7-dev
- 8 GB RAM
- Android Emulator Version X
- Node4j
- gradle

> Emulator should be accessible from command line. 
> For example running `emualtor -avd [emulator name]` should result in running the emulator. 

> Username and password of Neo4j should be set to `neo4j` 

### Python Packages
You can use the same virtual environment as the `isolation` package.

### Run
1. Run semantic matching server
1. Run Neo4j

> Until here
