// 0x00 : Control signals
//        bit 0  - ap_start (Read/Write/COH)
//        bit 1  - ap_done (Read/COR)
//        bit 2  - ap_idle (Read)
//        bit 3  - ap_ready (Read/COR)
//        bit 7  - auto_restart (Read/Write)
//        bit 9  - interrupt (Read)
//        others - reserved
// 0x04 : Global Interrupt Enable Register
//        bit 0  - Global Interrupt Enable (Read/Write)
//        others - reserved
// 0x08 : IP Interrupt Enable Register (Read/Write)
//        bit 0 - enable ap_done interrupt (Read/Write)
//        bit 1 - enable ap_ready interrupt (Read/Write)
//        others - reserved
// 0x0c : IP Interrupt Status Register (Read/TOW)
//        bit 0 - ap_done (Read/TOW)
//        bit 1 - ap_ready (Read/TOW)
//        others - reserved
// 0x10 : Data signal of images
//        bit 31~0 - images[31:0] (Read/Write)
// 0x14 : Data signal of images
//        bit 31~0 - images[63:32] (Read/Write)
// 0x18 : reserved
// 0x1c : Data signal of x
//        bit 31~0 - x[31:0] (Read/Write)
// 0x20 : Data signal of x
//        bit 31~0 - x[63:32] (Read/Write)
// 0x24 : reserved
// 0x28 : Data signal of tmp1
//        bit 31~0 - tmp1[31:0] (Read/Write)
// 0x2c : Data signal of tmp1
//        bit 31~0 - tmp1[63:32] (Read/Write)
// 0x30 : reserved
// 0x34 : Data signal of tmp2
//        bit 31~0 - tmp2[31:0] (Read/Write)
// 0x38 : Data signal of tmp2
//        bit 31~0 - tmp2[63:32] (Read/Write)
// 0x3c : reserved
// 0x40 : Data signal of tmp3
//        bit 31~0 - tmp3[31:0] (Read/Write)
// 0x44 : Data signal of tmp3
//        bit 31~0 - tmp3[63:32] (Read/Write)
// 0x48 : reserved
// 0x4c : Data signal of tmp_hidden
//        bit 31~0 - tmp_hidden[31:0] (Read/Write)
// 0x50 : Data signal of tmp_hidden
//        bit 31~0 - tmp_hidden[63:32] (Read/Write)
// 0x54 : reserved
// 0x58 : Data signal of attn
//        bit 31~0 - attn[31:0] (Read/Write)
// 0x5c : Data signal of attn
//        bit 31~0 - attn[63:32] (Read/Write)
// 0x60 : reserved
// 0x64 : Data signal of attn_softmax_info
//        bit 31~0 - attn_softmax_info[31:0] (Read/Write)
// 0x68 : Data signal of attn_softmax_info
//        bit 31~0 - attn_softmax_info[63:32] (Read/Write)
// 0x6c : reserved
// 0x70 : Data signal of patch_embed_weights
//        bit 31~0 - patch_embed_weights[31:0] (Read/Write)
// 0x74 : Data signal of patch_embed_weights
//        bit 31~0 - patch_embed_weights[63:32] (Read/Write)
// 0x78 : reserved
// 0x7c : Data signal of patch_embed_bias
//        bit 31~0 - patch_embed_bias[31:0] (Read/Write)
// 0x80 : Data signal of patch_embed_bias
//        bit 31~0 - patch_embed_bias[63:32] (Read/Write)
// 0x84 : reserved
// 0x88 : Data signal of pos_embed
//        bit 31~0 - pos_embed[31:0] (Read/Write)
// 0x8c : Data signal of pos_embed
//        bit 31~0 - pos_embed[63:32] (Read/Write)
// 0x90 : reserved
// 0x94 : Data signal of attn_weights
//        bit 31~0 - attn_weights[31:0] (Read/Write)
// 0x98 : Data signal of attn_weights
//        bit 31~0 - attn_weights[63:32] (Read/Write)
// 0x9c : reserved
// 0xa0 : Data signal of attn_bias
//        bit 31~0 - attn_bias[31:0] (Read/Write)
// 0xa4 : Data signal of attn_bias
//        bit 31~0 - attn_bias[63:32] (Read/Write)
// 0xa8 : reserved
// 0xac : Data signal of vit_weights_l1
//        bit 31~0 - vit_weights_l1[31:0] (Read/Write)
// 0xb0 : Data signal of vit_weights_l1
//        bit 31~0 - vit_weights_l1[63:32] (Read/Write)
// 0xb4 : reserved
// 0xb8 : Data signal of vit_bias_l1
//        bit 31~0 - vit_bias_l1[31:0] (Read/Write)
// 0xbc : Data signal of vit_bias_l1
//        bit 31~0 - vit_bias_l1[63:32] (Read/Write)
// 0xc0 : reserved
// 0xc4 : Data signal of vit_weights_l2
//        bit 31~0 - vit_weights_l2[31:0] (Read/Write)
// 0xc8 : Data signal of vit_weights_l2
//        bit 31~0 - vit_weights_l2[63:32] (Read/Write)
// 0xcc : reserved
// 0xd0 : Data signal of vit_bias_l2
//        bit 31~0 - vit_bias_l2[31:0] (Read/Write)
// 0xd4 : Data signal of vit_bias_l2
//        bit 31~0 - vit_bias_l2[63:32] (Read/Write)
// 0xd8 : reserved
// 0xdc : Data signal of norm_weights
//        bit 31~0 - norm_weights[31:0] (Read/Write)
// 0xe0 : Data signal of norm_weights
//        bit 31~0 - norm_weights[63:32] (Read/Write)
// 0xe4 : reserved
// 0xe8 : Data signal of norm_bias
//        bit 31~0 - norm_bias[31:0] (Read/Write)
// 0xec : Data signal of norm_bias
//        bit 31~0 - norm_bias[63:32] (Read/Write)
// 0xf0 : reserved
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define CONTROL_ADDR_AP_CTRL                  0x00
#define CONTROL_ADDR_GIE                      0x04
#define CONTROL_ADDR_IER                      0x08
#define CONTROL_ADDR_ISR                      0x0c
#define CONTROL_ADDR_IMAGES_DATA              0x10
#define CONTROL_BITS_IMAGES_DATA              64
#define CONTROL_ADDR_X_DATA                   0x1c
#define CONTROL_BITS_X_DATA                   64
#define CONTROL_ADDR_TMP1_DATA                0x28
#define CONTROL_BITS_TMP1_DATA                64
#define CONTROL_ADDR_TMP2_DATA                0x34
#define CONTROL_BITS_TMP2_DATA                64
#define CONTROL_ADDR_TMP3_DATA                0x40
#define CONTROL_BITS_TMP3_DATA                64
#define CONTROL_ADDR_TMP_HIDDEN_DATA          0x4c
#define CONTROL_BITS_TMP_HIDDEN_DATA          64
#define CONTROL_ADDR_ATTN_DATA                0x58
#define CONTROL_BITS_ATTN_DATA                64
#define CONTROL_ADDR_ATTN_SOFTMAX_INFO_DATA   0x64
#define CONTROL_BITS_ATTN_SOFTMAX_INFO_DATA   64
#define CONTROL_ADDR_PATCH_EMBED_WEIGHTS_DATA 0x70
#define CONTROL_BITS_PATCH_EMBED_WEIGHTS_DATA 64
#define CONTROL_ADDR_PATCH_EMBED_BIAS_DATA    0x7c
#define CONTROL_BITS_PATCH_EMBED_BIAS_DATA    64
#define CONTROL_ADDR_POS_EMBED_DATA           0x88
#define CONTROL_BITS_POS_EMBED_DATA           64
#define CONTROL_ADDR_ATTN_WEIGHTS_DATA        0x94
#define CONTROL_BITS_ATTN_WEIGHTS_DATA        64
#define CONTROL_ADDR_ATTN_BIAS_DATA           0xa0
#define CONTROL_BITS_ATTN_BIAS_DATA           64
#define CONTROL_ADDR_VIT_WEIGHTS_L1_DATA      0xac
#define CONTROL_BITS_VIT_WEIGHTS_L1_DATA      64
#define CONTROL_ADDR_VIT_BIAS_L1_DATA         0xb8
#define CONTROL_BITS_VIT_BIAS_L1_DATA         64
#define CONTROL_ADDR_VIT_WEIGHTS_L2_DATA      0xc4
#define CONTROL_BITS_VIT_WEIGHTS_L2_DATA      64
#define CONTROL_ADDR_VIT_BIAS_L2_DATA         0xd0
#define CONTROL_BITS_VIT_BIAS_L2_DATA         64
#define CONTROL_ADDR_NORM_WEIGHTS_DATA        0xdc
#define CONTROL_BITS_NORM_WEIGHTS_DATA        64
#define CONTROL_ADDR_NORM_BIAS_DATA           0xe8
#define CONTROL_BITS_NORM_BIAS_DATA           64
