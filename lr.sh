#!/bin/bash

base_command="python train.py --wandb_project=labo_bld"

for lr in 0.01 0.001 0.0001
do
    for batch_size in {5..30..5}
    do
        full_command="$base_command --lr=$lr --batch_size=$batch_size"
        
        echo "Executing: $full_command"

        eval $full_command
    done
done
