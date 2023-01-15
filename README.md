# Semantic Matching in GUI Test Reuse

This repository provides the replication package of our paper "Semantic Matching in GUI Test Reuse" submitted 
to the Empirical Software Engineering 2023.
It includes the codes, results and inputs.

## Work Flow
The replication package contains two evaluator frameworks: Semantic Matching Evaluator and Test Reuse Evaluator.
Each framework consist of few modules which working as a pipeline to produce results of the paper.
We describe role of each module in the pipeline below.

### Semantic Matching Evaluator
1. `evaluator`: evaluates MRR and Top1 score of configurations for the given queries
1. `analyzor`:  creates table of plot of semantic matching in isolation by analyzing semantic matching configurations MRR and Top1 metrics


### Test Reuse Evaluator
1. `ATM_generator` migrates test cases by using ATM test generator
1. `CraftDroid_generator` migrates test cases by using CraftDroid test generator
1. `semantic_matching_server` ATM and CraftDroid generators send queries to the server to rank target candidates
1. `fidelity_plugin` calculates fidelity metrics for given test cases grouped by semantic matching configurations
1. `analyzor` creates table of plot of semantic matching in test reuse context by analyzing fidelity metrics


> Input and output of each module contains the currents results. Therefore, modules can be executed each module independently.
> In case of new inputs module should be executed in the above order.


## Requirements
- Ubuntu 18 or Mac
- python 3.7
- pip3
- python3.7-dev
- 8 GB RAM
- Android Emulator for Android 6 API 23
- Appium 1.21.0

> Install android emulator
> Emulator should be accessible from command line.
> For example running `emualtor -avd emulator1` should result in running the emulator.



> Note: Required OS packages can be installed on `Ubuntu` by following command:

```
sudo apt-get install python3.7 pip3 python3.7-dev
```

>Shared packages between all modules are indicated in `requirement.txt` file.
However, each module may need additional packages or requirements indicated in corresponding README file.

### Python Packages

First you need to setup a new virtual environment

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


> Semantic Matching Evaluator and Server require word embedding models that are available in the [download link](https://zenodo.org/record/4725222/files/models.zip).
