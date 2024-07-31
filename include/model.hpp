#ifndef __MODEL_HPP__
#define __MODEL_HPP__
//“包含保护”指令，防止头文件被多次包含导致重复定义错误

//输入图像的通道数
constexpr unsigned int INPUT_CHANNELS = 3;

//输入图像的宽度
constexpr unsigned int INPUT_WIDTH = 256;

//输入图像的高度
constexpr unsigned int INPUT_HEIGHT = 128;

//特征维度
constexpr unsigned int FEATURE_DIM = 192;

//ViT隐藏层维度
constexpr unsigned int VIT_HIDDEN_DIM  =768;

//图像补丁的宽度
constexpr unsigned int PATCH_WIDTH = 16;

//图像补丁的高度
constexpr unsigned int PATCH_HEIGHT = 16;

//图像中补丁的数量: 通过输入图像的宽度和高度除以补丁的宽度和高度计算得出
//加1表示cls_token
constexpr unsigned int NUM_PATCHES = (INPUT_WIDTH / PATCH_WIDTH) * (INPUT_HEIGHT / PATCH_HEIGHT) + 1;

//网络层数
constexpr unsigned int NUM_LAYERS = 12;

//多头注意力机制中的头数
constexpr unsigned int NUM_HEADS = 3;


#endif