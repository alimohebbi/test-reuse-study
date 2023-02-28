# Analyzer

This artifact produce tables and figures of the study related to semantic matching in isolation.

**Input:** 
- Result of semantic matching in isolation `results.csv`
> The file is output of semantic matching evaluator that exist in following directory 
> `semantic_matching_evaluator/evaluator/results.csv`

**Output:** Figures and tables related to semantic matching in isolation. 
The analyzor prints the tables in console and save plots and statistical test in `mrr` and `top1` folders.
- impact analysis and distribution plots based on mrr: `mrr/plots`
- impact analysis and distribution plots based on top1: `top1/plots`
- statistical test based on mrr metrics: `mrr/stat_tests`
- statistical test based on top1 metrics: `top1/stat_tests``
- distribution of instance: console

### Run
1. Specify input file in the `config.yml`
1. Activate the virtual environment    
1. Run following command
    ````
    python run_analysis_sem_matching.py
    ````
1. Check the analyzor outputs 
