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

> Install the subject applications on the emulator

> Mail client application require login before use 

### Run
1. Run semantic matching server
1. Run Appium
1. Set the configuration that ATM should use to migrate test cases in `migrations.csv`
1. Set the migrations that ATM should use to migrate test cases in `config_sample.csv`
1. Run CraftDroid
    ```shell
    python run_manger.py
    ```


