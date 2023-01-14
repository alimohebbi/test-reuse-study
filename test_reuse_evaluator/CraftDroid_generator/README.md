This artifact generates test cases by using CraftDroid test generator for given semantic matching configurations.

**Input:** Source and target application code, Source application's json test cases, Migrations Info, Semantic Matching Configurations

**Output:** Migrated Test cases in json, Status of migrations

Location of inputs:
- Source applications code: `subject_apps`
- Target applications code: `subject_apps`
- Source application json test cases: `test_repo`
- Migrations Info: `manager/migrations.csv` It specifies which source test cases should be migrated for which target application
- Semantic Matching Configurations: `manager/config_sample.csv`

Location of output:
- Migrated Test cases in Java: `manager/generated`
- Status of migrations: `manager/results.csv`

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
- Appium 1.21.0

> Install android emulator 
> Emulator should be accessible from command line. 
> For example running `emualtor -avd emulator1` should result in running the emulator.

> Install the subject applications on the emulator

### Python Packages
You can use the same virtual environment as the `isolation` package.

### Run
1. Run semantic matching server
1. Run Appium
1. Set the configuration that ATM should use to migrate test cases in `migrations.csv`
1. Set the migrations that ATM should use to migrate test cases in `config_sample.csv`
1. Run CraftDroid
    ```shell
    python run_manger.py
    ```


