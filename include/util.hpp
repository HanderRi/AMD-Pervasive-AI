#ifndef __UTIL_HPP__
#define __UTIL_HPP__

#include "hls_math.h"

//FOR_EACH
//使用行号和变量名来创建一个独特的标签
#define _LABEL_FOR_EACH_HELPER(line, var) _ln ## line ## _for_each_ ## var
//调用前一个辅助宏'_LABEL_FOR_EACH_HELPER'，生成一个独特的标签名
#define _LABEL_FOR_EACH(line, var) _LABEL_FOR_EACH_HELPER(line, var)
//遍历循环的宏 FOR_EACH。它使用前面的辅助宏来生成独特的标签
#define FOR_EACH(var, limit) _LABEL_FOR_EACH(__LINE__, var): for (unsigned int var = 0; var < limit; var++)


//FOR_BLOCK
//使用行号和变量名来创建一个独特的标签
#define _LABEL_FOR_BLOCK_HELPER(line, var) _ln ## line ## _for_block_ ## var

#define _LABEL_FOR_BLOCK(line, var) _LABEL_FOR_BLOCK_HELPER(line, var)
// 将块大小和限制定义为常量，使用前面的辅助宏来生成独特的标签，并创建一个循环，遍历块
#define FOR_BLOCK(var, limit, block_size) \
    constexpr unsigned int var##_step = (block_size); \
    constexpr unsigned int var##_limit = (limit); \
    constexpr unsigned int var##_iters = ((limit) + (block_size) - 1) / (block_size); \
    _LABEL_FOR_BLOCK(__LINE__, var): for ( \
        unsigned int var##_base = 0, var##_block = 0; \
        var##_base < var##_limit; \
        var##_base += var##_step, var##_block++ \
    )



//FOR_OFFSET
#define _LABEL_FOR_OFFSET_HELPER(line, var) _ln ## line ## _for_offset_ ## var
#define _LABEL_FOR_OFFSET(line, var) _LABEL_FOR_OFFSET_HELPER(line, var)
#define FOR_OFFSET(var) \
    _LABEL_FOR_OFFSET(__LINE__, var): for ( \
        unsigned int var##_offset = 0, var = var##_base; \
        var##_offset < var##_step; \
        var##_offset++, var++ \
    ) \
    if (var##_limit % var##_step == 0 || var < var##_limit)


//FOR_OFFSET_NOCHK 不进行范围检查。它确保限制是步长的倍数
#define _LABEL_FOR_OFFSET_NOCHK_HELPER(line, var) _ln ## line ## _for_offset_ ## var
#define _LABEL_FOR_OFFSET_NOCHK(line, var) _LABEL_FOR_OFFSET_NOCHK_HELPER(line, var)
#define FOR_OFFSET_NOCHK(var) \
    static_assert(var##_limit % var##_step == 0, "Cannot use FOR_OFFSET_NOCHK; use FOR_OFFSET instead."); \
    _LABEL_FOR_OFFSET_NOCHK(__LINE__, var): for ( \
        unsigned int var##_offset = 0, var = var##_base; \
        var##_offset < var##_step; \
        var##_offset++, var++ \
    )

//FOR_OFFSET_UNSAFE 不进行安全检查
#define _LABEL_FOR_OFFSET_UNSAFE_HELPER(line, var) _ln ## line ## _for_offset_ ## var
#define _LABEL_FOR_OFFSET_UNSAFE(line, var) _LABEL_FOR_OFFSET_UNSAFE_HELPER(line, var)
#define FOR_OFFSET_UNSAFE(var) \
    _LABEL_FOR_OFFSET_UNSAFE(__LINE__, var): for ( \
        unsigned int var##_offset = 0, var = var##_base; \
        var##_offset < var##_step; \
        var##_offset++, var++ \
    )


template <typename T>//向上取整除法
static constexpr T ceildiv(T dividend, T divisor)
{
    return (dividend + divisor - 1) / divisor;
}

template <typename T>//将'dividend'向上舍入到'divisor'的倍数
static constexpr T roundup(T dividend, T divisor)
{
    return ceildiv(dividend, divisor) * divisor;
}

template <typename T>//计算两个数 a 和 b 的最大值
static constexpr T max_ab(T a, T b)
{
    return (a > b) ? a : b;
}

template <typename T>//将 num 向上舍入到最接近的 2 的幂
static constexpr T roundup_p2(T num)
{
    return (num == 0 || num == 1) ? 1 : 2 * roundup_p2((num + 1) / 2);
}

template <typename T>//计算 num 的二进制位数
static constexpr T bitcount(T num)
{
    return (num == 0 || num == 1) ? num : 1 + bitcount(num >> 1);
}

template <typename T>//实现 ReLU 激活函数
static constexpr T ap_fixed_relu(T x)
{
    return hls::signbit(x) ? T(0) : x;
}

template <typename T>//计算定点数类型 T 的最小增量值（epsilon）表示定点数的最小精度
static constexpr T ap_fixed_epsilon()
{
    //width：表示定点数的总位宽
    //iwidth：表示定点数的整数部分的位宽
    //如16位 整数部分6位 精度为1.0/1<<10 = 1.0/1024
    return T(1.0 / (1 << (T::width - T::iwidth)));
}

template <typename T>//计算定点数类型 T 的最小值（最小可表示的负数）
static constexpr T ap_fixed_min()
{
    //如 ap_fixed<16, 6> 整数部分位宽 iwidth = 6，包括符号位。
    //剩下的 iwidth - 1 = 6 - 1 = 5 位用于表示数值部分
    //1 << (6 - 1) = 1 << 5 = 32  取负：-(1 << 5) = -32
    //对于 ap_fixed<16, 6> 类型，最小可表示的负数是 -32
    return T(-(1 << (T::iwidth - 1)));
}

#endif
