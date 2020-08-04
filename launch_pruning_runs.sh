#!/usr/bin/bash

target_sparsity=(0.95 0.8 0.5)
prune_type=('random' 'magnitude')

for PRUNE_TYPE in ${prune_type[*]}; do
for TARGET_SPARSITY in ${target_sparsity[*]}; do
    sbatch -o ${PRUNE_TYPE}_${TARGET_SPARSITY}.out ./prune_en_de.sh ${TARGET_SPARSITY} ${PRUNE_TYPE}
done;
done;
