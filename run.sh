#!/usr/bin/env bash
export gpu_device=0
export netType='wide-resnet'
export depth=28
export width=10
export dataset='cifar10'
export savedir='./model/cifar10/'

CUDA_VISIBLE_DEVICES=${gpu_device} \
python train.py \
    --lr 0.1 \
    --depth ${depth} \
    --widen_factor ${width} \
    --dataset ${dataset} \
    --savedir ${savedir}
