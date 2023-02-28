# Semantic Matching Evaluator

This artifact evaluates different semantic matching configurations of semantic matching in isolation.
Configurations include those that are used by the three stat-of-art test reuse approaches (ATM, Craftdroid, Adapatdroid) as well as new configurations introduced in this study.
In total there are 337 configurations.
Each configuration is evaluated by two metrics: MRR and Top1.

**Input:**
- Descriptors of source events: `events/src_events`
- Descriptors of target events: `events/target_events`
- Mapping of correct matches between source to target events: `events/index_map.csv`

**Output:**
- Result of semantic matching in isolation `results.csv`
- Similarity score of each candidate grouped by semantic matching configurations: `sim_scores`


> Note: FAST embedding approach requires 20 GB RAM in case of the standard train set
 
### Python Packages
1. Activate the virtual environment
1. Run `descriptor_processes/text_pre_process.py` to download additional packages:
    ```
    python -m text_pre_process
    ```
    The script prints the following message when downloading is finished:
    ```
    download is completed!
    ```
 
 
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

> Note: The code refers to `SemFinder` with the alias `custom`.
 
 
 
## Run
 
1. Activate virtual environment
 
1. Set the directory of the word embedding models inside `config.yml` under `model_dir` key. This directory should have a structure similar to the `model_path` section in the `config.yml` file.
 
1. In the `config.yml` file uncomment instances you like to be used for the semantic matching configuration. Components are active_techniques, train_set, algorithm and descriptors. active_techniques refers to embedding techniques.
 
1. Execute the below command to start the evaluation. The framework starts evaluating all the possible configurations, given the desired instances (instances that are not commented).
 
   ```
   python run_all_combinations.py
   ```
1. Results are saved in the `results.csv` file.
 
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
 
