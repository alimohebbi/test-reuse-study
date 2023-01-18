# CraftDroid Test Generator

This artifact generates test cases by using CraftDroid test generator for the given semantic matching configurations.

**Input:**
- Subject applications apk: `subject_apps`
- Source test cases: `test_repo`
- Migrations Info: `manager/migrations.csv` It specifies which source test cases should be migrated to which target application
- Semantic Matching Configurations: `manager/config_sample.csv`

**Output:**
- Migrated Test cases in Java: `manager/generated`
- Status of migrations: `manager/results.csv`

### Requirements

> Install the subject applications on the emulator

> Mail client applications (a4) require login before use 

### Run
1. Run semantic matching server
1. Run Appium server
1. Set the migrations that CraftDroid should use in `migrations.csv`
1. Set the configurations that CraftDroid should use to migrate test cases in `config_sample.csv`
1. Run CraftDroid
    ```shell
    python run_manger.py
    ```


