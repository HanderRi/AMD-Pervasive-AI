#ifndef __LOAD_UTIL_HPP__
#define __LOAD_UTIL_HPP__

#include <istream>
#include <ostream>
#include <ap_fixed.h>
#include <hls_vector.h>
#include "linear.hpp"

using namespace std;

//从stream中读取数据 赋值value 读取固定点数类型
//W总位宽 I整数位 Q量化模式 针对低位 O溢出模式 针对高位 N
template<int _AP_W, int _AP_I, bool _AP_S, ap_q_mode _AP_Q, ap_o_mode _AP_O, int _AP_N>
istream& read(istream& stream, ap_fixed_base<_AP_W,_AP_I,_AP_S,_AP_Q,_AP_O,_AP_N>& value)
{
    union{
        float value;
        char bytes[sizeof(float)];
    }readable;
    stream.read(readable.bytes,sizeof(float));
    value = readable.value;
    return stream;
}

//读取hls vector类型
template<typename T, size_t N>
istream& read (istream& stream , hls::vector<T,N>&vector)
{
    for(size_t i = 0;i<N;i++ ){
        read(stream,vector[i]);
    }
    return stream;
}

//读取固定大小数组类型
template<typename T, size_t N>
istream& read(istream& stream, T(&array)[N])
{
    for(size_t i=0;i<N;i++)
    {
        read(stream,array[i]);
    }
    return stream;
}

template double fm_t::Base::to_double() const;
template double wt_linear_t::Base::to_double() const;
template double wt_attn_bias_t::Base::to_double() const;
template double wt_bias_t::Base::to_double() const;
template double wt_wbias_t::Base::to_double() const;
template double wt_patch_embed_t::Base::to_double() const;
template double pixel_t::Base::to_double() const;

#endif

