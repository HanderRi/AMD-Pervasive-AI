#ifndef __GELU_HPP__
#define __GELU_HPP__

#include "util.hpp"
#include "datatypes.hpp"
#include "model.hpp"
#include "hardware.hpp"
fm_t gelu(fm_t x);

template<size_t N>
hls::vector<fm_t, N> gelu(hls::vector<fm_t, N> x);

#endif
