This artifact provides the semantic matcher for test generator. 
The semantic matching server answers queries that ATM and CraftDroid test generator sends.

**Input:** A query send by a test generator.

**Output:** Ordered descriptors and their similarity scores.



### Requirements
- python 3.7
- pip3
- python3.7-dev
- 8 GB RAM

### Python Packages
You can use the same virtual environment as the `isolation` package.

### Run
1. Specify path to the word embedding models in `config.yml`
1. Activate the virtual environment
1. Run following command
    ````
    python server.py
    ````
