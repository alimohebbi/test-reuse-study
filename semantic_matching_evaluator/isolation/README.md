This artifact evaluates different configurations of semantic matching in isolation from test reuse.
Configurations include those which are used by three stat-of-art approaches (ATM, Craftdroid, Adapatdroid) as well as new configurations introduced by this study.
There are 253 configurations in total.
Each configuration is evaluated by two metrics: MRR and Top1.
 
### Requirements
- python 3.7
- pip3
- python3.7-dev
- 8 GB RAM
 
> Note: You need 20 GB RAM to use FAST embedding approach with the standard train set
 
> Note: Required os packages can be install by following command:
```
sudo apt-get install python3.7 pip3 python3.7-dev
```
 
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
1. Run text_pre_process.py to download few packages:
    ```
    python -m text_pre_process
    ```
    You should see:
    
    ```
    download is completed!
    ```
 
  > Note: You can use any other virtual environment of your choice
 
> Note: You can skip the below section if you don't want to run the configurations that include BERT technique. 
 
For using BERT technique you need to setup a bert service first.
1. Create an additional python environment and activate it.
1. Use `requirements_bert.txt` to install required packages.
1. Run a bert server as follow:
    ```
    bert-serving-start -model_dir [path to the model in here] -num_worker=1
    ```
When the service is ready you see the following output:
 
```
I:WORKER-0:[__i:gen:559]:ready and listening!
I:VENTILATOR:[__i:_ru:164]:all set, ready to serve request!
```
 
> Note: We used the [bert_as_service](https://github.com/hanxiao/bert-as-service) implementation of bert embedding technique
 
 
 
## Terminology
We define the terms that we use in the rest of the document as follow:
- **Semantic Matching Components**: Semantic matching has four components a) algorithm b) descriptors c) word embedding d) train set. Components work together to match a source event to a target event among multiple target candidates.
 
- **Component Instance**: A concrete implementation of a component is an instance of that component. For example `SemFinder` is an instance of the algorithm component.
 
- **Matching Configuration**: A combination of component instances is a semantic matching configuration.
For example: (SemFinder, Union, w2v, googleplay) is a configuration.
 
- **Descriptor**: Set of attributes that describe the widget that an event executes on it
 
> Note: The code refers to `SemFinder` with the alias `custom`.
 
 
 
## Run
 
1. Activate virtual environment(s)
 
1. Set the directory of the word embedding models inside `config.yml` under `model_dir` key. This directory should have a structure similar to the `model_path` section in the `config.yml` file.
 
1. In the `config.yml` file un-comment instances you like to be considered for the semantic matching configuration. Components are active_techniques, train_set, algorithm and descriptors. active_techniques refers to embedding techniques.
 
1. Execute the below command to start the evaluation. The framework starts evaluating all the possible configurations, given the desired instances (instances that are not commented).
 
   ```
   python run_all_combinations.py
   ```
1. Results are saved in the `results_rank.csv` file.
 
> Note: if you stop the framework while it is evaluating configurations, in the next run it will resume from the last evaluated configuration.
 
> Note:  The amount of time required for evaluating a configuration depends on the embedding approach and. It may vary from 5 min (w2v) to 1 hours (USE).
 
 
 
When evaluation of configurations are successful you should see following output
 
```
atm_0-union-android-wm Top1: 147 MRR: 0.6758521597097267
atm_0-intersection-android-wm Top1: 179 MRR: 0.7267089012475919
craftdroid-union-blogs-wm Top1: 168 MRR: 0.6797442714574846
```
 
For configurations that already have been evaluated and results have been saved you should see following output:
 
```
craftdroid-union-android-wm already exist
craftdroid-intersection-android-wm already exist
custom-union-android-wm already exist
custom-intersection-android-wm already exist
```
 
>Note: You can run the framework only for one (or more) configuration.
To do so you should comment all the instances of the four components in the config file except the one you like to evaluate.
Remove the intermediary and the final result related to the configuration. Then run the framework.
 
 
 