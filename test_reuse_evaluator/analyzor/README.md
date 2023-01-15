This artifact produce tables and figures of the paper related to semantic matching in test reuse context.

**Input:** Result of evaluation by fidelity plugin and semantic matching in isolation
- Evaluation results of test cases: `fidelity_plugin/data/output/evaluation/`
- Semantic matching in isolation results: `semantic_matching_results`


**Output:** Figures and tables related to semantic matching in isolation.
- Aggregation of configurations evaluation: `aggrigator/full`
- F1-Score Range Plots: `aggrigator/config_f1_performance`
- Correlation Analysis: `correlation_calc`
- Configurations delta: `delta_calc`
- test cases events plots: `test_case_len`

### Requirements
- python 3.7
- pip3
- python3.7-dev
- 8 GB RAM

### Python Packages
You can use the same virtual environment as the `isolation` package.

### Run
1. Activate the virtual environment
1. For each type of analysis run the corresponding python file in each folder
