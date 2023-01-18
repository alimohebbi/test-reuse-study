# Analyzer

This artifact produce tables and figures of the study related to semantic matching in test reuse context.

**Input:** 
- Evaluation results of test cases: `fidelity_plugin/data/output/evaluation/`
- Semantic matching in isolation results: `semantic_matching_results`


**Output:** 
- Aggregation of configurations evaluation: `aggrigator/full`
- F1-Score Range Plots: `aggrigator/config_f1_performance`
- Correlation Analysis: `correlation_calc`
- Configurations delta: `delta_calc`
- Test cases events plots: `test_case_len`

### Run
1. Activate the virtual environment
1. For each type of analysis run the corresponding python file in each folder
