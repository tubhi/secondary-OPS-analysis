#!/bin/bash

# Run only the preprocess rules
snakemake --use-conda --cores all \
    --snakefile "../brieflow/workflow/Snakefile" \
    --configfile "config/config_matteo.yml" \
    --rerun-triggers mtime \
    --until all_preprocess 
