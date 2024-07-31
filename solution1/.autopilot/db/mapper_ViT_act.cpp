#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const char *msg;
    const size_t line;
    SimException(const char *msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const char *msg)
  {
    std::string s;
    s += "at line ";
    s += std::to_string(line);
    s += " occurred problem: ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
struct __cosim_s32__ { char data[32]; };
extern "C" void ViT_act(Byte<32>*, Byte<32>*, Byte<32>*, Byte<32>*, Byte<32>*, int, char, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int, int);
extern "C" void apatb_ViT_act_hw(int __xlx_apatb_param_num_images, char __xlx_apatb_param_reload_on_time_weights, volatile void * __xlx_apatb_param_images, volatile void * __xlx_apatb_param_x, volatile void * __xlx_apatb_param_tmp1, volatile void * __xlx_apatb_param_tmp2, volatile void * __xlx_apatb_param_tmp3, volatile void * __xlx_apatb_param_tmp_hidden, volatile void * __xlx_apatb_param_attn, volatile void * __xlx_apatb_param_attn_softmax_info, volatile void * __xlx_apatb_param_patch_embed_weights, volatile void * __xlx_apatb_param_patch_embed_bias, volatile void * __xlx_apatb_param_pos_embed, volatile void * __xlx_apatb_param_attn_weights, volatile void * __xlx_apatb_param_attn_bias, volatile void * __xlx_apatb_param_vit_weights_l1, volatile void * __xlx_apatb_param_vit_bias_l1, volatile void * __xlx_apatb_param_vit_weights_l2, volatile void * __xlx_apatb_param_vit_bias_l2, volatile void * __xlx_apatb_param_norm_weights, volatile void * __xlx_apatb_param_norm_bias) {
using hls::sim::createStream;
  // Collect __xlx_images_tmp1_attn__tmp_vec
std::vector<Byte<32>> __xlx_images_tmp1_attn__tmp_vec;
for (size_t i = 0; i < 3072; ++i){
__xlx_images_tmp1_attn__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_images)[i]);
}
  int __xlx_size_param_images = 3072;
  int __xlx_offset_param_images = 0;
  int __xlx_offset_byte_param_images = 0*32;
for (size_t i = 0; i < 3096; ++i){
__xlx_images_tmp1_attn__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_tmp1)[i]);
}
  int __xlx_size_param_tmp1 = 3096;
  int __xlx_offset_param_tmp1 = 3072;
  int __xlx_offset_byte_param_tmp1 = 3072*32;
for (size_t i = 0; i < 8514; ++i){
__xlx_images_tmp1_attn__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_attn)[i]);
}
  int __xlx_size_param_attn = 8514;
  int __xlx_offset_param_attn = 6168;
  int __xlx_offset_byte_param_attn = 6168*32;
  // Collect __xlx_x_tmp2__tmp_vec
std::vector<Byte<32>> __xlx_x_tmp2__tmp_vec;
for (size_t i = 0; i < 3096; ++i){
__xlx_x_tmp2__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_x)[i]);
}
  int __xlx_size_param_x = 3096;
  int __xlx_offset_param_x = 0;
  int __xlx_offset_byte_param_x = 0*32;
for (size_t i = 0; i < 3096; ++i){
__xlx_x_tmp2__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_tmp2)[i]);
}
  int __xlx_size_param_tmp2 = 3096;
  int __xlx_offset_param_tmp2 = 3096;
  int __xlx_offset_byte_param_tmp2 = 3096*32;
  // Collect __xlx_tmp3__tmp_vec
std::vector<Byte<32>> __xlx_tmp3__tmp_vec;
for (size_t i = 0; i < 3096; ++i){
__xlx_tmp3__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_tmp3)[i]);
}
  int __xlx_size_param_tmp3 = 3096;
  int __xlx_offset_param_tmp3 = 0;
  int __xlx_offset_byte_param_tmp3 = 0*32;
  // Collect __xlx_tmp_hidden_attn_softmax_info__tmp_vec
std::vector<Byte<32>> __xlx_tmp_hidden_attn_softmax_info__tmp_vec;
for (size_t i = 0; i < 12384; ++i){
__xlx_tmp_hidden_attn_softmax_info__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_tmp_hidden)[i]);
}
  int __xlx_size_param_tmp_hidden = 12384;
  int __xlx_offset_param_tmp_hidden = 0;
  int __xlx_offset_byte_param_tmp_hidden = 0*32;
for (size_t i = 0; i < 129; ++i){
__xlx_tmp_hidden_attn_softmax_info__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_attn_softmax_info)[i]);
}
  int __xlx_size_param_attn_softmax_info = 129;
  int __xlx_offset_param_attn_softmax_info = 12384;
  int __xlx_offset_byte_param_attn_softmax_info = 12384*32;
  // Collect __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec
std::vector<Byte<32>> __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec;
for (size_t i = 0; i < 9216; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_patch_embed_weights)[i]);
}
  int __xlx_size_param_patch_embed_weights = 9216;
  int __xlx_offset_param_patch_embed_weights = 0;
  int __xlx_offset_byte_param_patch_embed_weights = 0*32;
for (size_t i = 0; i < 12; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_patch_embed_bias)[i]);
}
  int __xlx_size_param_patch_embed_bias = 12;
  int __xlx_offset_param_patch_embed_bias = 9216;
  int __xlx_offset_byte_param_patch_embed_bias = 9216*32;
for (size_t i = 0; i < 3096; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_pos_embed)[i]);
}
  int __xlx_size_param_pos_embed = 3096;
  int __xlx_offset_param_pos_embed = 9228;
  int __xlx_offset_byte_param_pos_embed = 9228*32;
for (size_t i = 0; i < 110592; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_attn_weights)[i]);
}
  int __xlx_size_param_attn_weights = 110592;
  int __xlx_offset_param_attn_weights = 12324;
  int __xlx_offset_byte_param_attn_weights = 12324*32;
for (size_t i = 0; i < 576; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_attn_bias)[i]);
}
  int __xlx_size_param_attn_bias = 576;
  int __xlx_offset_param_attn_bias = 122916;
  int __xlx_offset_byte_param_attn_bias = 122916*32;
for (size_t i = 0; i < 55296; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_vit_weights_l1)[i]);
}
  int __xlx_size_param_vit_weights_l1 = 55296;
  int __xlx_offset_param_vit_weights_l1 = 123492;
  int __xlx_offset_byte_param_vit_weights_l1 = 123492*32;
for (size_t i = 0; i < 288; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_vit_bias_l1)[i]);
}
  int __xlx_size_param_vit_bias_l1 = 288;
  int __xlx_offset_param_vit_bias_l1 = 178788;
  int __xlx_offset_byte_param_vit_bias_l1 = 178788*32;
for (size_t i = 0; i < 55296; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_vit_weights_l2)[i]);
}
  int __xlx_size_param_vit_weights_l2 = 55296;
  int __xlx_offset_param_vit_weights_l2 = 179076;
  int __xlx_offset_byte_param_vit_weights_l2 = 179076*32;
for (size_t i = 0; i < 72; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_vit_bias_l2)[i]);
}
  int __xlx_size_param_vit_bias_l2 = 72;
  int __xlx_offset_param_vit_bias_l2 = 234372;
  int __xlx_offset_byte_param_vit_bias_l2 = 234372*32;
for (size_t i = 0; i < 288; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_norm_weights)[i]);
}
  int __xlx_size_param_norm_weights = 288;
  int __xlx_offset_param_norm_weights = 234444;
  int __xlx_offset_byte_param_norm_weights = 234444*32;
for (size_t i = 0; i < 288; ++i){
__xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.push_back(((Byte<32>*)__xlx_apatb_param_norm_bias)[i]);
}
  int __xlx_size_param_norm_bias = 288;
  int __xlx_offset_param_norm_bias = 234732;
  int __xlx_offset_byte_param_norm_bias = 234732*32;
  // DUT call
  ViT_act(__xlx_images_tmp1_attn__tmp_vec.data(), __xlx_x_tmp2__tmp_vec.data(), __xlx_tmp3__tmp_vec.data(), __xlx_tmp_hidden_attn_softmax_info__tmp_vec.data(), __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec.data(), __xlx_apatb_param_num_images, __xlx_apatb_param_reload_on_time_weights, __xlx_offset_byte_param_images, __xlx_offset_byte_param_x, __xlx_offset_byte_param_tmp1, __xlx_offset_byte_param_tmp2, __xlx_offset_byte_param_tmp3, __xlx_offset_byte_param_tmp_hidden, __xlx_offset_byte_param_attn, __xlx_offset_byte_param_attn_softmax_info, __xlx_offset_byte_param_patch_embed_weights, __xlx_offset_byte_param_patch_embed_bias, __xlx_offset_byte_param_pos_embed, __xlx_offset_byte_param_attn_weights, __xlx_offset_byte_param_attn_bias, __xlx_offset_byte_param_vit_weights_l1, __xlx_offset_byte_param_vit_bias_l1, __xlx_offset_byte_param_vit_weights_l2, __xlx_offset_byte_param_vit_bias_l2, __xlx_offset_byte_param_norm_weights, __xlx_offset_byte_param_norm_bias);
// print __xlx_apatb_param_images
for (size_t i = 0; i < __xlx_size_param_images; ++i) {
((Byte<32>*)__xlx_apatb_param_images)[i] = __xlx_images_tmp1_attn__tmp_vec[__xlx_offset_param_images+i];
}
// print __xlx_apatb_param_tmp1
for (size_t i = 0; i < __xlx_size_param_tmp1; ++i) {
((Byte<32>*)__xlx_apatb_param_tmp1)[i] = __xlx_images_tmp1_attn__tmp_vec[__xlx_offset_param_tmp1+i];
}
// print __xlx_apatb_param_attn
for (size_t i = 0; i < __xlx_size_param_attn; ++i) {
((Byte<32>*)__xlx_apatb_param_attn)[i] = __xlx_images_tmp1_attn__tmp_vec[__xlx_offset_param_attn+i];
}
// print __xlx_apatb_param_x
for (size_t i = 0; i < __xlx_size_param_x; ++i) {
((Byte<32>*)__xlx_apatb_param_x)[i] = __xlx_x_tmp2__tmp_vec[__xlx_offset_param_x+i];
}
// print __xlx_apatb_param_tmp2
for (size_t i = 0; i < __xlx_size_param_tmp2; ++i) {
((Byte<32>*)__xlx_apatb_param_tmp2)[i] = __xlx_x_tmp2__tmp_vec[__xlx_offset_param_tmp2+i];
}
// print __xlx_apatb_param_tmp3
for (size_t i = 0; i < __xlx_size_param_tmp3; ++i) {
((Byte<32>*)__xlx_apatb_param_tmp3)[i] = __xlx_tmp3__tmp_vec[__xlx_offset_param_tmp3+i];
}
// print __xlx_apatb_param_tmp_hidden
for (size_t i = 0; i < __xlx_size_param_tmp_hidden; ++i) {
((Byte<32>*)__xlx_apatb_param_tmp_hidden)[i] = __xlx_tmp_hidden_attn_softmax_info__tmp_vec[__xlx_offset_param_tmp_hidden+i];
}
// print __xlx_apatb_param_attn_softmax_info
for (size_t i = 0; i < __xlx_size_param_attn_softmax_info; ++i) {
((Byte<32>*)__xlx_apatb_param_attn_softmax_info)[i] = __xlx_tmp_hidden_attn_softmax_info__tmp_vec[__xlx_offset_param_attn_softmax_info+i];
}
// print __xlx_apatb_param_patch_embed_weights
for (size_t i = 0; i < __xlx_size_param_patch_embed_weights; ++i) {
((Byte<32>*)__xlx_apatb_param_patch_embed_weights)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_patch_embed_weights+i];
}
// print __xlx_apatb_param_patch_embed_bias
for (size_t i = 0; i < __xlx_size_param_patch_embed_bias; ++i) {
((Byte<32>*)__xlx_apatb_param_patch_embed_bias)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_patch_embed_bias+i];
}
// print __xlx_apatb_param_pos_embed
for (size_t i = 0; i < __xlx_size_param_pos_embed; ++i) {
((Byte<32>*)__xlx_apatb_param_pos_embed)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_pos_embed+i];
}
// print __xlx_apatb_param_attn_weights
for (size_t i = 0; i < __xlx_size_param_attn_weights; ++i) {
((Byte<32>*)__xlx_apatb_param_attn_weights)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_attn_weights+i];
}
// print __xlx_apatb_param_attn_bias
for (size_t i = 0; i < __xlx_size_param_attn_bias; ++i) {
((Byte<32>*)__xlx_apatb_param_attn_bias)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_attn_bias+i];
}
// print __xlx_apatb_param_vit_weights_l1
for (size_t i = 0; i < __xlx_size_param_vit_weights_l1; ++i) {
((Byte<32>*)__xlx_apatb_param_vit_weights_l1)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_vit_weights_l1+i];
}
// print __xlx_apatb_param_vit_bias_l1
for (size_t i = 0; i < __xlx_size_param_vit_bias_l1; ++i) {
((Byte<32>*)__xlx_apatb_param_vit_bias_l1)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_vit_bias_l1+i];
}
// print __xlx_apatb_param_vit_weights_l2
for (size_t i = 0; i < __xlx_size_param_vit_weights_l2; ++i) {
((Byte<32>*)__xlx_apatb_param_vit_weights_l2)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_vit_weights_l2+i];
}
// print __xlx_apatb_param_vit_bias_l2
for (size_t i = 0; i < __xlx_size_param_vit_bias_l2; ++i) {
((Byte<32>*)__xlx_apatb_param_vit_bias_l2)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_vit_bias_l2+i];
}
// print __xlx_apatb_param_norm_weights
for (size_t i = 0; i < __xlx_size_param_norm_weights; ++i) {
((Byte<32>*)__xlx_apatb_param_norm_weights)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_norm_weights+i];
}
// print __xlx_apatb_param_norm_bias
for (size_t i = 0; i < __xlx_size_param_norm_bias; ++i) {
((Byte<32>*)__xlx_apatb_param_norm_bias)[i] = __xlx_patch_embed_weights_patch_embed_bias_pos_embed_attn_weights_attn_bias_vit_weights_l1_vit_bias_l1_vit_weights_l2_vit_bias_l2_norm_weights_norm_bias__tmp_vec[__xlx_offset_param_norm_bias+i];
}
}
