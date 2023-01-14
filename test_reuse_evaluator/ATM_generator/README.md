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
- Migrated Test cases in Java: `ATM-Modified/generated`
- Status of migrations: `results.csv`

### Requirements
- Java 8
- Java 
- python 3.7
- pip3
- python3.7-dev
- 8 GB RAM
- Android Emulator for Android 6 API 23
- Neo4j 4.3.2 Community Edition
- gradle

> Install android emulator 
> Emulator should be accessible from command line. 
> For example running `emualtor -avd emulator1` should result in running the emulator. 

> Use `neo4j_installation.md` file to install and run neo4j

### Python Packages
You can use the same virtual environment as the `isolation` package.

### Run
1. Run semantic matching server
1. Run Neo4j
1. Set the configuration that ATM should use to migrate test cases in `migrations.csv`
1. Set the migrations that ATM should use to migrate test cases in `config_sample.csv`
1. Run ATM
    ```shell
    python atm_runner.py
    ```


