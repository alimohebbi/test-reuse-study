This artifact evaluates generated test cases by ATM or CraftDroid. 

**Input:** 
- ATM generated test cases: `data/original_tests/atm/generated`
- ATM ground truth test cases: `data/original_tests/atm/ground_truth`
- ATM donor test cases: `data/original_tests/atm/donor`
- ATM source test case to ground truth mapping: `data/mappings/atm/src_ground_truth`
- CrafDroid generated test cases: `data/original_tests/craftdroid/generated`
- CrafDroid donor test cases: `data/original_tests/craftdroid/donor`
- CrafDroid ground truth test cases: `data/original_tests/craftdroid/ground_truth`
- CraftDroid source test case to ground truth mapping: `data/mappings/craftdroid/src_ground_truth`


**Output:**
- Evaluation results of ATM test cases: `data/output/evaluation/atm`
- Evaluation results of CraftDroid test cases: `data/output/evaluation/craftdroid`

### Requirements
- python 3.7
- pip3
- python3.7-dev
- 8 GB RAM
- Android Emulator for Android 6 API 23
- Appium 1.21.0

> Install android emulator 
> Emulator should be accessible from command line. 
> For example running `emualtor -avd emulator1` should result in running the emulator. 

> For ATM test case evaluation first you need to install the subject applications located in `atm_subject_apps`.

### Python Packages
You can use the same virtual environment as the `isolation` package.

### Run for evaluating ATM test cases
- Set value of `algorithm` entry in `evaluation/config.toml` to `atm`
- Run appium server
- Run following command to convert ATM java test cases to json test cases
```shell
python evaluation/original_test_converter.py
```
- Run following command to evaluate the test cases 
```shell
python evaluation/run_evaluate.py
```

### Run for evaluating CraftDroid test cases
- Set value of `algorithm` entry in `evaluation/config.toml` to `craftdroid`
- Run following command to evaluate the test cases
```shell
python evaluation/run_evaluate.py
```
