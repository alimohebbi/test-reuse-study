# Semantic Matching Server

This artifact provides the semantic matcher functionality for the test generators. 
The semantic matching server answers queries that ATM and CraftDroid test generator send.

**Input:** http request containing a semantic matching query send by a test generator

**Output:** http response containing ordered descriptors and their similarity scores


### Run
1. Specify path to the word embedding models in `config.yml`
1. Activate the virtual environment
1. Run following command
    ````
    python server.py
    ````
