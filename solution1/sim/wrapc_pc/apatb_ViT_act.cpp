#include <algorithm>
#include <complex>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <exception>
#include <fstream>
#include <iomanip>
#include <iostream>
#include <map>
#include "ap_fixed.h"
#include "ap_int.h"
#include "autopilot_cbe.h"
#include "hls_half.h"
#include "hls_signal_handler.h"
#include "hls_stream.h"

using namespace std;

// wrapc file define:
#define AUTOTB_TVIN_num_images "../tv/cdatafile/c.ViT_act.autotvin_num_images.dat"
#define AUTOTB_TVOUT_num_images "../tv/cdatafile/c.ViT_act.autotvout_num_images.dat"
#define AUTOTB_TVIN_reload_on_time_weights "../tv/cdatafile/c.ViT_act.autotvin_reload_on_time_weights.dat"
#define AUTOTB_TVOUT_reload_on_time_weights "../tv/cdatafile/c.ViT_act.autotvout_reload_on_time_weights.dat"
#define AUTOTB_TVIN_images "../tv/cdatafile/c.ViT_act.autotvin_images.dat"
#define AUTOTB_TVOUT_images "../tv/cdatafile/c.ViT_act.autotvout_images.dat"
#define AUTOTB_TVIN_x "../tv/cdatafile/c.ViT_act.autotvin_x.dat"
#define AUTOTB_TVOUT_x "../tv/cdatafile/c.ViT_act.autotvout_x.dat"
#define AUTOTB_TVIN_tmp1 "../tv/cdatafile/c.ViT_act.autotvin_tmp1.dat"
#define AUTOTB_TVOUT_tmp1 "../tv/cdatafile/c.ViT_act.autotvout_tmp1.dat"
#define AUTOTB_TVIN_tmp2 "../tv/cdatafile/c.ViT_act.autotvin_tmp2.dat"
#define AUTOTB_TVOUT_tmp2 "../tv/cdatafile/c.ViT_act.autotvout_tmp2.dat"
#define AUTOTB_TVIN_tmp3 "../tv/cdatafile/c.ViT_act.autotvin_tmp3.dat"
#define AUTOTB_TVOUT_tmp3 "../tv/cdatafile/c.ViT_act.autotvout_tmp3.dat"
#define AUTOTB_TVIN_tmp_hidden "../tv/cdatafile/c.ViT_act.autotvin_tmp_hidden.dat"
#define AUTOTB_TVOUT_tmp_hidden "../tv/cdatafile/c.ViT_act.autotvout_tmp_hidden.dat"
#define AUTOTB_TVIN_attn "../tv/cdatafile/c.ViT_act.autotvin_attn.dat"
#define AUTOTB_TVOUT_attn "../tv/cdatafile/c.ViT_act.autotvout_attn.dat"
#define AUTOTB_TVIN_attn_softmax_info "../tv/cdatafile/c.ViT_act.autotvin_attn_softmax_info.dat"
#define AUTOTB_TVOUT_attn_softmax_info "../tv/cdatafile/c.ViT_act.autotvout_attn_softmax_info.dat"
#define AUTOTB_TVIN_patch_embed_weights "../tv/cdatafile/c.ViT_act.autotvin_patch_embed_weights.dat"
#define AUTOTB_TVOUT_patch_embed_weights "../tv/cdatafile/c.ViT_act.autotvout_patch_embed_weights.dat"
#define AUTOTB_TVIN_patch_embed_bias "../tv/cdatafile/c.ViT_act.autotvin_patch_embed_bias.dat"
#define AUTOTB_TVOUT_patch_embed_bias "../tv/cdatafile/c.ViT_act.autotvout_patch_embed_bias.dat"
#define AUTOTB_TVIN_pos_embed "../tv/cdatafile/c.ViT_act.autotvin_pos_embed.dat"
#define AUTOTB_TVOUT_pos_embed "../tv/cdatafile/c.ViT_act.autotvout_pos_embed.dat"
#define AUTOTB_TVIN_attn_weights "../tv/cdatafile/c.ViT_act.autotvin_attn_weights.dat"
#define AUTOTB_TVOUT_attn_weights "../tv/cdatafile/c.ViT_act.autotvout_attn_weights.dat"
#define AUTOTB_TVIN_attn_bias "../tv/cdatafile/c.ViT_act.autotvin_attn_bias.dat"
#define AUTOTB_TVOUT_attn_bias "../tv/cdatafile/c.ViT_act.autotvout_attn_bias.dat"
#define AUTOTB_TVIN_vit_weights_l1 "../tv/cdatafile/c.ViT_act.autotvin_vit_weights_l1.dat"
#define AUTOTB_TVOUT_vit_weights_l1 "../tv/cdatafile/c.ViT_act.autotvout_vit_weights_l1.dat"
#define AUTOTB_TVIN_vit_bias_l1 "../tv/cdatafile/c.ViT_act.autotvin_vit_bias_l1.dat"
#define AUTOTB_TVOUT_vit_bias_l1 "../tv/cdatafile/c.ViT_act.autotvout_vit_bias_l1.dat"
#define AUTOTB_TVIN_vit_weights_l2 "../tv/cdatafile/c.ViT_act.autotvin_vit_weights_l2.dat"
#define AUTOTB_TVOUT_vit_weights_l2 "../tv/cdatafile/c.ViT_act.autotvout_vit_weights_l2.dat"
#define AUTOTB_TVIN_vit_bias_l2 "../tv/cdatafile/c.ViT_act.autotvin_vit_bias_l2.dat"
#define AUTOTB_TVOUT_vit_bias_l2 "../tv/cdatafile/c.ViT_act.autotvout_vit_bias_l2.dat"
#define AUTOTB_TVIN_norm_weights "../tv/cdatafile/c.ViT_act.autotvin_norm_weights.dat"
#define AUTOTB_TVOUT_norm_weights "../tv/cdatafile/c.ViT_act.autotvout_norm_weights.dat"
#define AUTOTB_TVIN_norm_bias "../tv/cdatafile/c.ViT_act.autotvin_norm_bias.dat"
#define AUTOTB_TVOUT_norm_bias "../tv/cdatafile/c.ViT_act.autotvout_norm_bias.dat"
#define AUTOTB_TVIN_inout1 "../tv/cdatafile/c.ViT_act.autotvin_inout1.dat"
#define AUTOTB_TVOUT_inout1 "../tv/cdatafile/c.ViT_act.autotvout_inout1.dat"
#define AUTOTB_TVIN_inout2 "../tv/cdatafile/c.ViT_act.autotvin_inout2.dat"
#define AUTOTB_TVOUT_inout2 "../tv/cdatafile/c.ViT_act.autotvout_inout2.dat"
#define AUTOTB_TVIN_inout3 "../tv/cdatafile/c.ViT_act.autotvin_inout3.dat"
#define AUTOTB_TVOUT_inout3 "../tv/cdatafile/c.ViT_act.autotvout_inout3.dat"
#define AUTOTB_TVIN_inout4 "../tv/cdatafile/c.ViT_act.autotvin_inout4.dat"
#define AUTOTB_TVOUT_inout4 "../tv/cdatafile/c.ViT_act.autotvout_inout4.dat"
#define AUTOTB_TVIN_weights "../tv/cdatafile/c.ViT_act.autotvin_weights.dat"
#define AUTOTB_TVOUT_weights "../tv/cdatafile/c.ViT_act.autotvout_weights.dat"


// tvout file define:
#define AUTOTB_TVOUT_PC_inout1 "../tv/rtldatafile/rtl.ViT_act.autotvout_inout1.dat"
#define AUTOTB_TVOUT_PC_inout2 "../tv/rtldatafile/rtl.ViT_act.autotvout_inout2.dat"
#define AUTOTB_TVOUT_PC_inout3 "../tv/rtldatafile/rtl.ViT_act.autotvout_inout3.dat"
#define AUTOTB_TVOUT_PC_inout4 "../tv/rtldatafile/rtl.ViT_act.autotvout_inout4.dat"
#define AUTOTB_TVOUT_PC_weights "../tv/rtldatafile/rtl.ViT_act.autotvout_weights.dat"


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
  const bool little_endian()
  {
    int a = 1;
    return *(char*)&a == 1;
  }

  inline void rev_endian(unsigned char *p, size_t nbytes)
  {
    std::reverse(p, p+nbytes);
  }

  const bool LE = little_endian();

  inline size_t least_nbyte(size_t width)
  {
    return (width+7)>>3;
  }

  std::string formatData(unsigned char *pos, size_t wbits)
  {
    size_t wbytes = least_nbyte(wbits);
    size_t i = LE ? wbytes-1 : 0;
    auto next = [&] () {
      auto c = pos[i];
      LE ? --i : ++i;
      return c;
    };
    std::ostringstream ss;
    ss << "0x";
    if (int t = (wbits & 0x7)) {
      if (t <= 4) {
        unsigned char mask = (1<<t)-1;
        ss << std::hex << std::setfill('0') << std::setw(1)
           << (int) (next() & mask);
        wbytes -= 1;
      }
    }
    for (size_t i = 0; i < wbytes; ++i) {
      ss << std::hex << std::setfill('0') << std::setw(2) << (int)next();
    }
    return ss.str();
  }

  char ord(char c)
  {
    if (c >= 'a' && c <= 'f') {
      return c-'a'+10;
    } else if (c >= 'A' && c <= 'F') {
      return c-'A'+10;
    } else if (c >= '0' && c <= '9') {
      return c-'0';
    } else {
      throw SimException("Not Hexdecimal Digit", __LINE__);
    }
  }

  void unformatData(const char *data, unsigned char *put)
  {
    size_t wbytes = (strlen(data)-2+1)>>1;
    put = LE ? put : put+wbytes-1;
    auto nextp = [&] () {
      return LE ? put++ : put--;
    };
    const char *c = data + strlen(data) - 1;
    auto next = [&] () {
      char res = ord(*c);
      --c;
      return res;
    };
    size_t fbytes = (strlen(data)-2)>>1;
    for (size_t i = 0; i < fbytes; ++i) {
      char l = next();
      char h = next();
      *nextp() = (h<<4)+l;
    }
    if (wbytes > fbytes) {
      *nextp() = next();
    }
  }

  char* strip(char *s)
  {
    while (isspace(*s)) {
      ++s;
    }
    for (char *p = s+strlen(s)-1; p >= s; --p) {
      if (isspace(*p)) {
        *p = 0;
      } else {
        return s;
      }
    }
    return s;
  }

  size_t sum(const std::vector<size_t> &v)
  {
    size_t res = 0;
    for (const auto &e : v) {
      res += e;
    }
    return res;
  }

  const char* bad = "Bad TV file";
  const char* err = "Error on TV file";

  const unsigned char bmark[] = {
    0x5a, 0x5a, 0xa5, 0xa5, 0x0f, 0x0f, 0xf0, 0xf0
  };

#ifdef USE_BINARY_TV_FILE
  class Input {
    FILE *fp;
    long pos;

    void read(unsigned char *buf, size_t size)
    {
      if (fread(buf, size, 1, fp) != 1) {
        throw SimException(bad, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    void advance(size_t nbytes)
    {
      if (fseek(fp, nbytes, SEEK_CUR) == -1) {
        throw SimException(bad, __LINE__);
      }
    }

    Input(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "rb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin()
    {
      advance(8);
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void into(unsigned char *param, size_t wbytes, size_t psize, size_t depth)
    {
      for (size_t i = 0; i < depth; ++i) {
        read(param, wbytes);
        param += psize;
      }
    }

    ~Input()
    {
      unsigned char buf[8];
      size_t res = fread(buf, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, bad);
      }
      if (std::memcmp(buf, bmark, 8) != 0) {
        errExit(__LINE__, bad);
      }
    }
  };

  class Output {
    FILE *fp;

    void write(unsigned char *buf, size_t size)
    {
      if (LE) {
        rev_endian(buf, size);
      }
      if (fwrite(buf, size, 1, fp) != 1) {
        throw SimException(err, __LINE__);
      }
      if (LE) {
        rev_endian(buf, size);
      }
    }

  public:
    Output(const char *path) : fp(nullptr)
    {
      fp = fopen(path, "wb");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void begin(size_t total)
    {
      unsigned char buf[8] = {0};
      std::memcpy(buf, &total, sizeof(buf));
      write(buf, sizeof(buf));
    }

    void from(unsigned char *param, size_t wbytes, size_t psize, size_t depth, size_t skip)
    {
      param -= psize*skip;
      for (size_t i = 0; i < depth; ++i) {
        write(param, wbytes);
        param += psize;
      }
    }

    ~Output()
    {
      size_t res = fwrite(bmark, 8, 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }
  };
#endif

  class Reader {
    FILE *fp;
    long pos;
    int size;
    char *s;

    void readline()
    {
      s = fgets(s, size, fp);
      if (s == nullptr) {
        throw SimException(bad, __LINE__);
      }
    }

  public:
    Reader(const char *path) : fp(nullptr), size(1<<12), s(new char[size])
    {
      try {
        fp = fopen(path, "r");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          readline();
          static const char mark[] = "[[[runtime]]]\n";
          if (strcmp(s, mark) != 0) {
            throw SimException(bad, __LINE__);
          }
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    ~Reader()
    {
      fclose(fp);
      delete[] s;
    }

    void begin()
    {
      readline();
      static const char mark[] = "[[transaction]]";
      if (strncmp(s, mark, strlen(mark)) != 0) {
        throw SimException(bad, __LINE__);
      }
      pos = ftell(fp);
    }

    void reset()
    {
      fseek(fp, pos, SEEK_SET);
    }

    void skip(size_t n)
    {
      for (size_t i = 0; i < n; ++i) {
        readline();
      }
    }

    char* next()
    {
      long pos = ftell(fp);
      readline();
      if (*s == '[') {
        fseek(fp, pos, SEEK_SET);
        return nullptr;
      }
      return strip(s);
    }

    void end()
    {
      do {
        readline();
      } while (strcmp(s, "[[/transaction]]\n") != 0);
    }
  };

  class Writer {
    FILE *fp;

    void write(const char *s)
    {
      if (fputs(s, fp) == EOF) {
        throw SimException(err, __LINE__);
      }
    }

  public:
    Writer(const char *path) : fp(nullptr)
    {
      try {
        fp = fopen(path, "w");
        if (fp == nullptr) {
          throw SimException(err, __LINE__);
        } else {
          static const char mark[] = "[[[runtime]]]\n";
          write(mark);
        }
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
    }

    virtual ~Writer()
    {
      try {
        static const char mark[] = "[[[/runtime]]]\n";
        write(mark);
      } catch (const hls::sim::SimException &e) {
        errExit(e.line, e.msg);
      }
      fclose(fp);
    }

    void begin(size_t AESL_transaction)
    {
      static const char mark[] = "[[transaction]]           ";
      write(mark);
      auto buf = std::to_string(AESL_transaction);
      buf.push_back('\n');
      buf.push_back('\0');
      write(buf.data());
    }

    void next(const char *s)
    {
      write(s);
      write("\n");
    }

    void end()
    {
      static const char mark[] = "[[/transaction]]\n";
      write(mark);
    }
  };

  bool RTLOutputCheckAndReplacement(char *data)
  {
    bool changed = false;
    for (size_t i = 2; i < strlen(data); ++i) {
      if (data[i] == 'X' || data[i] == 'x') {
        data[i] = '0';
        changed = true;
      }
    }
    return changed;
  }

  void warnOnX()
  {
    static const char msg[] =
      "WARNING: [SIM 212-201] RTL produces unknown value "
      "'x' or 'X' on some port, possible cause: "
      "There are uninitialized variables in the design.\n";
    fprintf(stderr, msg);
  }

#ifndef POST_CHECK
  class RefTCL {
    FILE *fp;
    std::ostringstream ss;

    void formatDepth()
    {
      ss << "set depth_list {\n";
      for (auto &p : depth) {
        ss << "  {" << p.first << " " << p.second << "}\n";
      }
      if (nameHBM != "") {
        ss << "  {" << nameHBM << " " << depthHBM << "}\n";
      }
      ss << "}\n";
    }

    void formatTransNum()
    {
      ss << "set trans_num " << AESL_transaction << "\n";
    }

    void formatHBM()
    {
      ss << "set HBM_ArgDict {\n"
         << "  Name " << nameHBM << "\n"
         << "  Port " << portHBM << "\n"
         << "  BitWidth " << widthHBM << "\n"
         << "}\n";
    }

    void close()
    {
      formatDepth();
      formatTransNum();
      if (nameHBM != "") {
        formatHBM();
      }
      std::string &&s { ss.str() };
      size_t res = fwrite(s.data(), s.size(), 1, fp);
      fclose(fp);
      if (res != 1) {
        errExit(__LINE__, err);
      }
    }

  public:
    std::map<const std::string, size_t> depth;
    std::string nameHBM;
    size_t depthHBM;
    std::string portHBM;
    unsigned widthHBM;
    size_t AESL_transaction;

    RefTCL(const char *path)
    {
      fp = fopen(path, "w");
      if (fp == nullptr) {
        errExit(__LINE__, err);
      }
    }

    void set(const char* name, size_t dep)
    {
      if (depth[name] < dep) {
        depth[name] = dep;
      }
    }

    ~RefTCL()
    {
      close();
    }
  };

#endif

  struct Register {
    const char* name;
    unsigned width;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (strcmp(name, "return") == 0) {
        tcl.set("ap_return", 1);
      } else {
        tcl.set(name, 1);
      }
    }
#endif
    ~Register()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename Reader, typename Writer>
  struct Memory {
    unsigned width;
    unsigned asize;
    bool hbm;
    std::vector<const char*> name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    std::vector<void*> param;
    std::vector<size_t> depth;
    std::vector<size_t> offset;
    std::vector<bool> hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      if (hbm) {
        tcl.nameHBM.append(name[0]);
        tcl.portHBM.append("{").append(name[0]);
        for (size_t i = 1; i < name.size(); ++i) {
          tcl.nameHBM.append("_").append(name[i]);
          tcl.portHBM.append(" ").append(name[i]);
        }
        tcl.nameHBM.append("_HBM");
        tcl.portHBM.append("}");
        tcl.widthHBM = width;
        tcl.depthHBM = depth[0];
      } else {
        tcl.set(name[0], sum(depth));
      }
    }
#endif

    ~Memory()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  struct FIFO {
    unsigned width;
    unsigned asize;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* owriter;
    Writer* iwriter;
#endif
    void* param;
    size_t depth;
    bool hasWrite;

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~FIFO()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete owriter;
      delete iwriter;
#endif
    }
  };

  template<typename E>
  struct Stream {
    unsigned width;
    const char* name;
#ifdef POST_CHECK
    Reader* reader;
#else
    Writer* writer;
    Writer* swriter;
    Writer* gwriter;
#endif
    hls::stream<E>* param;
    std::vector<E> buf;
    size_t initSize;
    size_t depth;
    bool hasWrite;

    void markSize()
    {
      initSize = param->size();
    }

    void buffer()
    {
      buf.clear();
      while (!param->empty()) {
        buf.push_back(param->read());
      }
      for (auto &e : buf) {
        param->write(e);
      }
    }

#ifndef POST_CHECK
    void doTCL(RefTCL &tcl)
    {
      tcl.set(name, depth);
    }
#endif

    ~Stream()
    {
#ifdef POST_CHECK
      delete reader;
#else
      delete writer;
      delete swriter;
      delete gwriter;
#endif
    }
  };

#ifdef POST_CHECK
  void check(Register &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (char *s = port.reader->next()) {
      foundX |= RTLOutputCheckAndReplacement(s);
      unformatData(s, (unsigned char*)port.param);
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

#ifdef USE_BINARY_TV_FILE
  void checkHBM(Memory<Input, Output> &port)
  {
    port.reader->begin();
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      if (port.hasWrite[i]) {
        port.reader->reset();
        size_t skip = port.offset[i];
        size_t depth = port.depth[i] - skip;
        port.reader->advance(wbytes*skip);
        port.reader->into((unsigned char*)port.param[i], wbytes,
                          port.asize, depth);
      }
    }
  }

  void check(Memory<Input, Output> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      size_t wbytes = least_nbyte(port.width);
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          port.reader->into((unsigned char*)port.param[i], wbytes,
                            port.asize, port.depth[i]);
        } else {
          port.reader->advance(wbytes*port.depth[i]);
        }
      }
    }
  }
#endif
  void checkHBM(Memory<Reader, Writer> &port)
  {
    port.reader->begin();
    bool foundX = false;
    for (size_t i = 0, last = port.param.size()-1; i <= last; ++i) {
      if (port.hasWrite[i]) {
        port.reader->skip(port.offset[i]);
        for (size_t j = 0; j < port.depth[i]-port.offset[i]; ++j) {
          if (char *s = port.reader->next()) {
            foundX |= RTLOutputCheckAndReplacement(s);
            unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
          }
        }
        if (i < last) {
          port.reader->reset();
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  void check(Memory<Reader, Writer> &port)
  {
    if (port.hbm) {
      return checkHBM(port);
    } else {
      port.reader->begin();
      bool foundX = false;
      for (size_t i = 0; i < port.param.size(); ++i) {
        if (port.hasWrite[i]) {
          for (size_t j = 0; j < port.depth[i]; ++j) {
            if (char *s = port.reader->next()) {
              foundX |= RTLOutputCheckAndReplacement(s);
              unformatData(s, (unsigned char*)port.param[i]+j*port.asize);
            }
          }
        } else {
          port.reader->skip(port.depth[i]);
        }
      }
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    }
  }

  void check(FIFO &port)
  {
    port.reader->begin();
    bool foundX = false;
    if (port.hasWrite) {
      for (size_t j = 0; j < port.depth; ++j) {
        if (char *s = port.reader->next()) {
          foundX |= RTLOutputCheckAndReplacement(s);
          unformatData(s, (unsigned char*)port.param+j*port.asize);
        }
      }
    }
    port.reader->end();
    if (foundX) {
      warnOnX();
    }
  }

  template<typename E>
  void check(Stream<E> &port)
  {
    if (port.hasWrite) {
      port.reader->begin();
      bool foundX = false;
      E *p = new E;
      while (char *s = port.reader->next()) {
        foundX |= RTLOutputCheckAndReplacement(s);
        unformatData(s, (unsigned char*)p);
        port.param->write(*p);
      }
      delete p;
      port.reader->end();
      if (foundX) {
        warnOnX();
      }
    } else {
      port.reader->begin();
      size_t n = 0;
      if (char *s = port.reader->next()) {
        std::istringstream ss(s);
        ss >> n;
      } else {
        throw SimException(bad, __LINE__);
      }
      port.reader->end();
      for (size_t j = 0; j < n; ++j) {
        port.param->read();
      }
    }
  }
#else
  void dump(Register &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    std::string &&s { formatData((unsigned char*)port.param, port.width) };
    writer->next(s.data());
    writer->end();
  }

#ifdef USE_BINARY_TV_FILE
  void dump(Memory<Input, Output> &port, Output *writer, size_t AESL_transaction)
  {
    writer->begin(sum(port.depth));
    size_t wbytes = least_nbyte(port.width);
    for (size_t i = 0; i < port.param.size(); ++i) {
      writer->from((unsigned char*)port.param[i], wbytes, port.asize,
                   port.depth[i], 0);
    }
  }

#endif
  void dump(Memory<Reader, Writer> &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t i = 0; i < port.param.size(); ++i) {
      for (size_t j = 0; j < port.depth[i]; ++j) {
        std::string &&s {
          formatData((unsigned char*)port.param[i]+j*port.asize, port.width)
        };
        writer->next(s.data());
      }
      if (port.hbm) {
        break;
      }
    }
    writer->end();
  }

  void dump(FIFO &port, Writer *writer, size_t AESL_transaction)
  {
    writer->begin(AESL_transaction);
    for (size_t j = 0; j < port.depth; ++j) {
      std::string &&s {
        formatData((unsigned char*)port.param+j*port.asize, port.width)
      };
      writer->next(s.data());
    }
    writer->end();
  }


  template<typename E>
  void dump(Stream<E> &port, size_t AESL_transaction)
  {
    if (port.hasWrite) {
      port.writer->begin(AESL_transaction);
      port.depth = port.param->size()-port.initSize;
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[port.initSize+j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();
    } else {
      port.writer->begin(AESL_transaction);
      port.depth = port.initSize-port.param->size();
      for (size_t j = 0; j < port.depth; ++j) {
        std::string &&s {
          formatData((unsigned char*)&port.buf[j], port.width)
        };
        port.writer->next(s.c_str());
      }
      port.writer->end();

      port.swriter->begin(AESL_transaction);
      port.swriter->next(std::to_string(port.depth).c_str());
      port.swriter->end();

      port.gwriter->begin(AESL_transaction);
      size_t n = (port.depth ? port.initSize : port.depth);
      size_t d = port.depth;
      do {
        port.gwriter->next(std::to_string(n--).c_str());
      } while (d--);
      port.gwriter->end();
    }
  }
#endif
}



extern "C"
void ViT_act_hw_stub_wrapper(hls::sim::Byte<4>, hls::sim::Byte<1>, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*, void*);

extern "C"
void apatb_ViT_act_hw(hls::sim::Byte<4> __xlx_apatb_param_num_images, hls::sim::Byte<1> __xlx_apatb_param_reload_on_time_weights, void* __xlx_apatb_param_images, void* __xlx_apatb_param_x, void* __xlx_apatb_param_tmp1, void* __xlx_apatb_param_tmp2, void* __xlx_apatb_param_tmp3, void* __xlx_apatb_param_tmp_hidden, void* __xlx_apatb_param_attn, void* __xlx_apatb_param_attn_softmax_info, void* __xlx_apatb_param_patch_embed_weights, void* __xlx_apatb_param_patch_embed_bias, void* __xlx_apatb_param_pos_embed, void* __xlx_apatb_param_attn_weights, void* __xlx_apatb_param_attn_bias, void* __xlx_apatb_param_vit_weights_l1, void* __xlx_apatb_param_vit_bias_l1, void* __xlx_apatb_param_vit_weights_l2, void* __xlx_apatb_param_vit_bias_l2, void* __xlx_apatb_param_norm_weights, void* __xlx_apatb_param_norm_bias)
{
  static hls::sim::Register port0 {
    .name = "num_images",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_num_images),
#endif
  };
  port0.param = &__xlx_apatb_param_num_images;

  static hls::sim::Register port1 {
    .name = "reload_on_time_weights",
    .width = 1,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_reload_on_time_weights),
#endif
  };
  port1.param = &__xlx_apatb_param_reload_on_time_weights;

  hls::sim::Byte<4> __xlx_offset_byte_param_images;
  static hls::sim::Register port2 {
    .name = "images",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_images),
#endif
  };
  port2.param = &__xlx_offset_byte_param_images;

  hls::sim::Byte<4> __xlx_offset_byte_param_x;
  static hls::sim::Register port3 {
    .name = "x",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_x),
#endif
  };
  port3.param = &__xlx_offset_byte_param_x;

  hls::sim::Byte<4> __xlx_offset_byte_param_tmp1;
  static hls::sim::Register port4 {
    .name = "tmp1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_tmp1),
#endif
  };
  port4.param = &__xlx_offset_byte_param_tmp1;

  hls::sim::Byte<4> __xlx_offset_byte_param_tmp2;
  static hls::sim::Register port5 {
    .name = "tmp2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_tmp2),
#endif
  };
  port5.param = &__xlx_offset_byte_param_tmp2;

  hls::sim::Byte<4> __xlx_offset_byte_param_tmp3;
  static hls::sim::Register port6 {
    .name = "tmp3",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_tmp3),
#endif
  };
  port6.param = &__xlx_offset_byte_param_tmp3;

  hls::sim::Byte<4> __xlx_offset_byte_param_tmp_hidden;
  static hls::sim::Register port7 {
    .name = "tmp_hidden",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_tmp_hidden),
#endif
  };
  port7.param = &__xlx_offset_byte_param_tmp_hidden;

  hls::sim::Byte<4> __xlx_offset_byte_param_attn;
  static hls::sim::Register port8 {
    .name = "attn",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_attn),
#endif
  };
  port8.param = &__xlx_offset_byte_param_attn;

  hls::sim::Byte<4> __xlx_offset_byte_param_attn_softmax_info;
  static hls::sim::Register port9 {
    .name = "attn_softmax_info",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_attn_softmax_info),
#endif
  };
  port9.param = &__xlx_offset_byte_param_attn_softmax_info;

  hls::sim::Byte<4> __xlx_offset_byte_param_patch_embed_weights;
  static hls::sim::Register port10 {
    .name = "patch_embed_weights",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_patch_embed_weights),
#endif
  };
  port10.param = &__xlx_offset_byte_param_patch_embed_weights;

  hls::sim::Byte<4> __xlx_offset_byte_param_patch_embed_bias;
  static hls::sim::Register port11 {
    .name = "patch_embed_bias",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_patch_embed_bias),
#endif
  };
  port11.param = &__xlx_offset_byte_param_patch_embed_bias;

  hls::sim::Byte<4> __xlx_offset_byte_param_pos_embed;
  static hls::sim::Register port12 {
    .name = "pos_embed",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_pos_embed),
#endif
  };
  port12.param = &__xlx_offset_byte_param_pos_embed;

  hls::sim::Byte<4> __xlx_offset_byte_param_attn_weights;
  static hls::sim::Register port13 {
    .name = "attn_weights",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_attn_weights),
#endif
  };
  port13.param = &__xlx_offset_byte_param_attn_weights;

  hls::sim::Byte<4> __xlx_offset_byte_param_attn_bias;
  static hls::sim::Register port14 {
    .name = "attn_bias",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_attn_bias),
#endif
  };
  port14.param = &__xlx_offset_byte_param_attn_bias;

  hls::sim::Byte<4> __xlx_offset_byte_param_vit_weights_l1;
  static hls::sim::Register port15 {
    .name = "vit_weights_l1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vit_weights_l1),
#endif
  };
  port15.param = &__xlx_offset_byte_param_vit_weights_l1;

  hls::sim::Byte<4> __xlx_offset_byte_param_vit_bias_l1;
  static hls::sim::Register port16 {
    .name = "vit_bias_l1",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vit_bias_l1),
#endif
  };
  port16.param = &__xlx_offset_byte_param_vit_bias_l1;

  hls::sim::Byte<4> __xlx_offset_byte_param_vit_weights_l2;
  static hls::sim::Register port17 {
    .name = "vit_weights_l2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vit_weights_l2),
#endif
  };
  port17.param = &__xlx_offset_byte_param_vit_weights_l2;

  hls::sim::Byte<4> __xlx_offset_byte_param_vit_bias_l2;
  static hls::sim::Register port18 {
    .name = "vit_bias_l2",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_vit_bias_l2),
#endif
  };
  port18.param = &__xlx_offset_byte_param_vit_bias_l2;

  hls::sim::Byte<4> __xlx_offset_byte_param_norm_weights;
  static hls::sim::Register port19 {
    .name = "norm_weights",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_norm_weights),
#endif
  };
  port19.param = &__xlx_offset_byte_param_norm_weights;

  hls::sim::Byte<4> __xlx_offset_byte_param_norm_bias;
  static hls::sim::Register port20 {
    .name = "norm_bias",
    .width = 32,
#ifdef POST_CHECK
#else
    .owriter = nullptr,
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_norm_bias),
#endif
  };
  port20.param = &__xlx_offset_byte_param_norm_bias;

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port21 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port21 {
#endif
    .width = 256,
    .asize = 32,
    .hbm = false,
    .name = { "inout1" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_inout1),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_inout1),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_inout1),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_inout1),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_inout1),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_inout1),
#endif
#endif
  };
  __xlx_offset_byte_param_images = 0*32;
  __xlx_offset_byte_param_tmp1 = 3072*32;
  __xlx_offset_byte_param_attn = 6168*32;
  port21.param = { __xlx_apatb_param_images, __xlx_apatb_param_tmp1, __xlx_apatb_param_attn };
  port21.depth = { 3072, 3096, 8514 };
  port21.offset = { 0, 3072, 6168 };
  port21.hasWrite = { true, true, true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port22 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port22 {
#endif
    .width = 256,
    .asize = 32,
    .hbm = false,
    .name = { "inout2" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_inout2),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_inout2),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_inout2),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_inout2),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_inout2),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_inout2),
#endif
#endif
  };
  __xlx_offset_byte_param_x = 0*32;
  __xlx_offset_byte_param_tmp2 = 3096*32;
  port22.param = { __xlx_apatb_param_x, __xlx_apatb_param_tmp2 };
  port22.depth = { 3096, 3096 };
  port22.offset = { 0, 3096 };
  port22.hasWrite = { true, true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port23 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port23 {
#endif
    .width = 256,
    .asize = 32,
    .hbm = false,
    .name = { "inout3" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_inout3),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_inout3),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_inout3),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_inout3),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_inout3),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_inout3),
#endif
#endif
  };
  port23.param = { __xlx_apatb_param_tmp3 };
  port23.depth = { 3096 };
  port23.offset = {  };
  port23.hasWrite = { true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port24 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port24 {
#endif
    .width = 256,
    .asize = 32,
    .hbm = false,
    .name = { "inout4" },
#ifdef POST_CHECK
#ifdef USE_BINARY_TV_FILE
    .reader = new hls::sim::Input(AUTOTB_TVOUT_PC_inout4),
#else
    .reader = new hls::sim::Reader(AUTOTB_TVOUT_PC_inout4),
#endif
#else
#ifdef USE_BINARY_TV_FILE
    .owriter = new hls::sim::Output(AUTOTB_TVOUT_inout4),
#else
    .owriter = new hls::sim::Writer(AUTOTB_TVOUT_inout4),
#endif
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_inout4),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_inout4),
#endif
#endif
  };
  __xlx_offset_byte_param_tmp_hidden = 0*32;
  __xlx_offset_byte_param_attn_softmax_info = 12384*32;
  port24.param = { __xlx_apatb_param_tmp_hidden, __xlx_apatb_param_attn_softmax_info };
  port24.depth = { 12384, 129 };
  port24.offset = { 0, 12384 };
  port24.hasWrite = { true, true };

#ifdef USE_BINARY_TV_FILE
  static hls::sim::Memory<hls::sim::Input, hls::sim::Output> port25 {
#else
  static hls::sim::Memory<hls::sim::Reader, hls::sim::Writer> port25 {
#endif
    .width = 256,
    .asize = 32,
    .hbm = false,
    .name = { "weights" },
#ifdef POST_CHECK
#else
    .owriter = nullptr,
#ifdef USE_BINARY_TV_FILE
    .iwriter = new hls::sim::Output(AUTOTB_TVIN_weights),
#else
    .iwriter = new hls::sim::Writer(AUTOTB_TVIN_weights),
#endif
#endif
  };
  __xlx_offset_byte_param_patch_embed_weights = 0*32;
  __xlx_offset_byte_param_patch_embed_bias = 9216*32;
  __xlx_offset_byte_param_pos_embed = 9228*32;
  __xlx_offset_byte_param_attn_weights = 12324*32;
  __xlx_offset_byte_param_attn_bias = 122916*32;
  __xlx_offset_byte_param_vit_weights_l1 = 123492*32;
  __xlx_offset_byte_param_vit_bias_l1 = 178788*32;
  __xlx_offset_byte_param_vit_weights_l2 = 179076*32;
  __xlx_offset_byte_param_vit_bias_l2 = 234372*32;
  __xlx_offset_byte_param_norm_weights = 234444*32;
  __xlx_offset_byte_param_norm_bias = 234732*32;
  port25.param = { __xlx_apatb_param_patch_embed_weights, __xlx_apatb_param_patch_embed_bias, __xlx_apatb_param_pos_embed, __xlx_apatb_param_attn_weights, __xlx_apatb_param_attn_bias, __xlx_apatb_param_vit_weights_l1, __xlx_apatb_param_vit_bias_l1, __xlx_apatb_param_vit_weights_l2, __xlx_apatb_param_vit_bias_l2, __xlx_apatb_param_norm_weights, __xlx_apatb_param_norm_bias };
  port25.depth = { 9216, 12, 3096, 110592, 576, 55296, 288, 55296, 72, 288, 288 };
  port25.offset = { 0, 9216, 9228, 12324, 122916, 123492, 178788, 179076, 234372, 234444, 234732 };
  port25.hasWrite = { false, false, false, false, false, false, false, false, false, false, false };

  refine_signal_handler();
  try {
#ifdef POST_CHECK
    CodeState = ENTER_WRAPC_PC;
    check(port21);
    check(port22);
    check(port23);
    check(port24);
#else
    static hls::sim::RefTCL tcl("../tv/cdatafile/ref.tcl");
    CodeState = DUMP_INPUTS;
    dump(port0, port0.iwriter, tcl.AESL_transaction);
    dump(port1, port1.iwriter, tcl.AESL_transaction);
    dump(port2, port2.iwriter, tcl.AESL_transaction);
    dump(port3, port3.iwriter, tcl.AESL_transaction);
    dump(port4, port4.iwriter, tcl.AESL_transaction);
    dump(port5, port5.iwriter, tcl.AESL_transaction);
    dump(port6, port6.iwriter, tcl.AESL_transaction);
    dump(port7, port7.iwriter, tcl.AESL_transaction);
    dump(port8, port8.iwriter, tcl.AESL_transaction);
    dump(port9, port9.iwriter, tcl.AESL_transaction);
    dump(port10, port10.iwriter, tcl.AESL_transaction);
    dump(port11, port11.iwriter, tcl.AESL_transaction);
    dump(port12, port12.iwriter, tcl.AESL_transaction);
    dump(port13, port13.iwriter, tcl.AESL_transaction);
    dump(port14, port14.iwriter, tcl.AESL_transaction);
    dump(port15, port15.iwriter, tcl.AESL_transaction);
    dump(port16, port16.iwriter, tcl.AESL_transaction);
    dump(port17, port17.iwriter, tcl.AESL_transaction);
    dump(port18, port18.iwriter, tcl.AESL_transaction);
    dump(port19, port19.iwriter, tcl.AESL_transaction);
    dump(port20, port20.iwriter, tcl.AESL_transaction);
    dump(port21, port21.iwriter, tcl.AESL_transaction);
    dump(port22, port22.iwriter, tcl.AESL_transaction);
    dump(port23, port23.iwriter, tcl.AESL_transaction);
    dump(port24, port24.iwriter, tcl.AESL_transaction);
    dump(port25, port25.iwriter, tcl.AESL_transaction);
    port0.doTCL(tcl);
    port1.doTCL(tcl);
    port2.doTCL(tcl);
    port3.doTCL(tcl);
    port4.doTCL(tcl);
    port5.doTCL(tcl);
    port6.doTCL(tcl);
    port7.doTCL(tcl);
    port8.doTCL(tcl);
    port9.doTCL(tcl);
    port10.doTCL(tcl);
    port11.doTCL(tcl);
    port12.doTCL(tcl);
    port13.doTCL(tcl);
    port14.doTCL(tcl);
    port15.doTCL(tcl);
    port16.doTCL(tcl);
    port17.doTCL(tcl);
    port18.doTCL(tcl);
    port19.doTCL(tcl);
    port20.doTCL(tcl);
    port21.doTCL(tcl);
    port22.doTCL(tcl);
    port23.doTCL(tcl);
    port24.doTCL(tcl);
    port25.doTCL(tcl);
    CodeState = CALL_C_DUT;
    ViT_act_hw_stub_wrapper(__xlx_apatb_param_num_images, __xlx_apatb_param_reload_on_time_weights, __xlx_apatb_param_images, __xlx_apatb_param_x, __xlx_apatb_param_tmp1, __xlx_apatb_param_tmp2, __xlx_apatb_param_tmp3, __xlx_apatb_param_tmp_hidden, __xlx_apatb_param_attn, __xlx_apatb_param_attn_softmax_info, __xlx_apatb_param_patch_embed_weights, __xlx_apatb_param_patch_embed_bias, __xlx_apatb_param_pos_embed, __xlx_apatb_param_attn_weights, __xlx_apatb_param_attn_bias, __xlx_apatb_param_vit_weights_l1, __xlx_apatb_param_vit_bias_l1, __xlx_apatb_param_vit_weights_l2, __xlx_apatb_param_vit_bias_l2, __xlx_apatb_param_norm_weights, __xlx_apatb_param_norm_bias);
    CodeState = DUMP_OUTPUTS;
    dump(port21, port21.owriter, tcl.AESL_transaction);
    dump(port22, port22.owriter, tcl.AESL_transaction);
    dump(port23, port23.owriter, tcl.AESL_transaction);
    dump(port24, port24.owriter, tcl.AESL_transaction);
    tcl.AESL_transaction++;
#endif
  } catch (const hls::sim::SimException &e) {
    hls::sim::errExit(e.line, e.msg);
  }
}