# Fidelity Plugin

This artifact evaluates generated test cases by ATM or CraftDroid.

**Input:**

- ATM generated test cases: `data/original_tests/atm/generated`

  This folder contains java test cases that atm generated. The test cases are located in related sub-directories based
  on the semantic matching configuration that ATM used, and the source-target application pair.

- ATM ground truth test cases: `data/json_tests/atm/ground_truth`

  This folder contains ground truth test cases for ATM in JSON format. The test cases are located in related
  sub-directories based on the source application, and the source-target application pair.

- ATM donor test cases: `data/json_tests/atm/donor`

  This folder contains donor test cases for ATM subjects in Json format. The test cases are located in related
  sub-directories based on the source application, and the source-target application pair.

- ATM source test case to ground truth mapping: `data/mappings/atm/src_ground_truth`
  This folder contains the mappings for events between source and ground truth events for each migration.

- CraftDroid generated test cases: `data/json_tests/craftdroid/generated`

  This folder contains JSON test cases that CraftDroid generated. The test cases are located in related sub-directories
  based on the semantic matching configuration that ATM used, and the source-target application pair.

- CraftDroid donor test cases: `data/json_tests/craftdroid/donor`
  This folder contains donor test cases for CrafDroid in JSON format. The test cases are located in related
  sub-directories based on the source application, and the source-target application pair.

- CraftDroid ground truth test cases: `data/json_tests/craftdroid/ground_truth`

  This folder contains ground truth test cases for CraftDroid in JSON format. The test cases are located in related
  sub-directories based on the source application, and the source-target application pair.

- CraftDroid source test case to ground truth mapping: `data/mappings/craftdroid/src_ground_truth`
  This folder contains the mappings for events between source and ground truth events for each migration.

- App name to package and activity map: `app_name_to_package_activity.csv`
  This file maps name of the applications in ATM and CraftDroid terminology to their package name and initial activity
  name that application starts with. Fidelity plugin uses the mapping to setup a connection to the app through Appium
  and run the test cases.

> In case of adding new migrations (source-target app, test case) input directories should be updated in the same format
> as the existing directories and files.

> Content of donor, ground truth and mapping files are them same for the shared subject application, however the files
> have different naming convention based on CraftDroid or ATM terminology. You can find the name of apps in the
> `app_name_to_package_activity.csv` file. For example, `ShoppingList4` is the same as `a84`.

**Output:**

- Evaluation results of ATM test cases: `data/output/evaluation/atm`
- Evaluation results of CraftDroid test cases: `data/output/evaluation/craftdroid`

### Requirements

For ATM test case evaluation first you need to install the subject applications located in `atm_subject_apps`. First run
the emulator then run `install-apks.sh` to autmatically install the apps on the emulator.

### Run for evaluating ATM test cases

1. Set value of `algorithm` entry in `evaluation/config.toml` to `atm`
1. Run appium server
1. Activate the virtual environment
1. Run following command to convert ATM java test cases to json test cases. The script will write the json test cases 
   in `data/json_tests/atm/generated`. The script will write in the console status of converting each test case.
    ```shell
    python evaluation/original_test_converter.py
    ```
1. Run following command to evaluate the test cases. The script will write results of evaluation 
   in `data/output/evaluation/atm`. The script will log in the console evaluations results.
    ```shell
    python evaluation/run_evaluate.py
    ```

### Run for evaluating CraftDroid test cases

1. Set value of `algorithm` entry in `evaluation/config.toml` to `craftdroid`
1. Activate the virtual environment
1. Run following command to evaluate the test cases. The script will write results of evaluation
   in `data/output/evaluation/craftdroid`. The script will log in the console evaluations results.
    ```shell
    python evaluation/run_evaluate.py
    ```
