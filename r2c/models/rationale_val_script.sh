#!/bin/bash
#PBS -e raterror.err
#PBS -o ratlog.log
#PBS -l select=1:ncpus=1:ngpus=2
#PBS -q gpuq

cd /lfs/usrhome/ms/cs21s058/scratch/r2c/models
export LD_LIBRARY_PATH=/lfs/sware/cuda-10.1 && export PYTHONPATH=/lfs/usrhome/ms/cs21s058/scratch/r2c && export CUDA_VISIBLE_DEVICES=0,1
 
/lfs/usrhome/ms/cs21s058/.conda/envs/r2c/bin/python3 val.py -params multiatt/default.json -folder saves/flagship_rationale -rationale
