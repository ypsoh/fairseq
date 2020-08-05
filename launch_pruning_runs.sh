#!/usr/bin/bash

target_sparsity=(0.0 0.95 0.8)
prune_type=('magnitude')

for PRUNE_TYPE in ${prune_type[*]}; do
for TARGET_SPARSITY in ${target_sparsity[*]}; do
    #sbatch -o ${PRUNE_TYPE}_${TARGET_SPARSITY}.out ./prune_en_de.sh ${TARGET_SPARSITY} ${PRUNE_TYPE}
    CUDA_VISIBLE_DEVICES=0,1,2,3 ./prune_en_de.sh ${TARGET_SPARSITY} ${PRUNE_TYPE} 1
done;
done;
