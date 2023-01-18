# Semantic Matching in GUI Test Reuse

This repository provides the replication package of our paper "Semantic Matching in GUI Test Reuse" submitted 
to the Empirical Software Engineering 2023.
It includes the codes, results and input data.

## Work Flow
The replication package contains two evaluator frameworks introduced in the paper: Semantic Matching Evaluator and Test Reuse Evaluator.
Each framework consist of few modules which are working as a pipeline to produce results of the study.
Each module below has the following role:

### Semantic Matching Evaluator
1. `evaluator`: evaluates the input data set (semantic matching queries) and calculated MRR and Top1 score of configurations. 
1. `analyzor`:  creates tables and plot of semantic matching in isolation by analyzing output of the evaluator.


### Test Reuse Evaluator
1. `ATM_generator`: migrates test cases by using ATM test generator
1. `CraftDroid_generator`: migrates test cases by using CraftDroid test generator
1. `semantic_matching_server`: ATM and CraftDroid generators send queries to the server to rank target candidates
1. `fidelity_plugin`: calculates fidelity metrics for given test cases grouped by semantic matching configurations
1. `analyzor`: creates tables and plot of semantic matching in test reuse context by analyzing fidelity metrics


> Input and output of each module contains the currents results. Therefore, modules can be executed independently.
> In case of new input, modules should be executed in the above order.

> Each module contains specific `README.md` file that provides execution instructions. 

## Requirements
- Ubuntu 18 or Mac
- python 3.7
- pip3
- python3.7-dev
- 8 GB RAM
- Android Emulator for Android 6 API 23
- sdkmanager 21, 23, 25
- Appium 1.21.0

> Install android emulator and sdkmanager ([download link](https://developer.android.com/studio)) and make sure emulator is accessible from command line.
> Execution of `emualtor -avd emulator1` in terminal should result in running the emulator.



> Note: Required OS packages can be installed on `Ubuntu` by following command:

```
sudo apt-get install python3.7 pip3 python3.7-dev
```

>

### Python Packages
Shared packages between all modules are indicated in `requirement.txt` file.
However, each module may need additional packages or requirements indicated in corresponding `README` file.
First you need to setup a new virtual environment and then install the packages as described below.

1. Update pip
   ```
   pip3 install --upgrade pip
   ```
1. Install the virtualenv package
   ```
   pip3 install virtualenv
   ```
1. Create a virtual environment
   ```
   virtualenv --python=python3.7 venv
   ```
1. Activate the environment (If it is not activated automatically)
   ```
   source venv/bin/activate
   ```
1. Now you can install required packages
    ```
    pip install -r requirements.txt
    ```

### Word Embedding Models
Semantic Matching Evaluator and Server require word embedding models that are available in the [download link](https://zenodo.org/record/4725222/files/models.zip).
