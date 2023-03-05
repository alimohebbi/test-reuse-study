# ATM Test Generator

This artifact generates test cases by using ATM test generator for the given semantic matching configurations.

**Input:**

- Source applications code: `ATM-Modified/AppTestMigrator/donor`
- Target applications code: `ATM-Modified/AppTestMigrator/target`
- Source application Java test cases: For each source application its test cases are located in the test directory of
  the application.
- Migrations Info: `migrations.csv` It specifies which source test cases should be migrated to which target application
- Semantic Matching Configurations: `config_sample.csv`

**Output:**

- Migrated Test cases in Java: `ATM-Modified/generated`
- Status of migrations: `results.csv`

### Requirements

- Java 8
- Neo4j 4.3.2 Community Edition
- gradle

> Use `neo4j_installation.md` file to install and run neo4j

### Run

1. Run semantic matching server
1. Run Neo4j
   > Each time that you start Neo4j server you need to reset the password to `neo4j`
1. Set the migration that ATM should use in `migrations.csv`
    > `config_template` includes example of different config files. Complete list of migrations are available in
     `config_template/migration_full.csv` and sampled semantic matching configurations are available in
     `config_template/config_sample.csv`
   
1. Set the semantic matching configurations that ATM should use to migrate test cases in `config_sample.csv`
1. Set the absolute path for the `atm_root` key in the `config.yml`
1. Activate the virtual environment 
1. Run ATM
    ```shell
    python atm_runner.py
    ```
