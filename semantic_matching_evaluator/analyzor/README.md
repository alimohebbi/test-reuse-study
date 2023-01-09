This artifact produce tables and figures of the paper related to semantic matching in isolation.

**Input:** Result of semantic matching in isolation `results.csv`

**Output:** Figures and tables related to semantic matching in isolation. 
The analyzor prints the tables in console and save plots and statistical test in `mrr` and `top1` folders.



### Requirements
- python 3.7
- pip3
- python3.7-dev
- 8 GB RAM

### Python Packages
You can use the same virtual environment as the `isolation` package.

### Run
1. Specify input file in the `config.yml`
1. Activate the virtual environment    
1. Run following command
    ````
    python run_analysis_sem_matching.py
    ````
1. Check the analyzor outputs 
