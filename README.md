# DynamicFeatureAggregation
This is an official pytorch implementation for the proposed method (Dynamic Feature Aggregation)

## Requirements

*   numpy>=1.19.2
*   Pillow>=8.3.1
*   pytorch>=1.2.0
*   torchvision>=0.4.0
*   tqdm>=4.62.3

## Datasets
* CIFAR-10/100 datasets can be downloaded by torchvision. Note that you can set
`torchvision.datasets.CIFAR10/100(..., download=True)` in `./train.py` to download the corresponding dataset and keep the directory path.

## Usage
* Train Wide_ResNet-28-10 on CIFAR10 with GPU 0, `./data/` is  your directory path of dataset.

```
bash run.sh
```

Then the model is saved at `./model/cifar10/`, where `TOP_1_Net.pth` refers to the model with best clean accuracy.

* or directly give the configuration by

```
CUDA_VISIBLE_DEVICES=${gpu_device} \
python train.py \
    --lr 0.1 \
    --depth ${depth} \
    --widen_factor ${width} \
    --dataset ${dataset} \
    --savedir ${savedir} \
    --alpha ${predefined param. for Beta distribution} \
    --noise ${noise term for aggregation} \
```

## Related Repository

* The adopted Wide_ResNet is based on https://github.com/meliketoy/wide-resnet.pytorch

* Our adversarial attacks are conducted through https://github.com/Harry24k/adversarial-attacks-pytorch

* The protocol and basic OOD test method can be found at https://github.com/facebookresearch/odin and  https://github.com/zaeemzadeh/OOD, respectively.
