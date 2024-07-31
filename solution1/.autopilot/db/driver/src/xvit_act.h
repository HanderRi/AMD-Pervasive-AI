// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XVIT_ACT_H
#define XVIT_ACT_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xvit_act_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
typedef uint64_t u64;
#else
typedef struct {
    u16 DeviceId;
    u64 Control_BaseAddress;
} XVit_act_Config;
#endif

typedef struct {
    u64 Control_BaseAddress;
    u32 IsReady;
} XVit_act;

typedef u32 word_type;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XVit_act_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XVit_act_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XVit_act_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XVit_act_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XVit_act_Initialize(XVit_act *InstancePtr, u16 DeviceId);
XVit_act_Config* XVit_act_LookupConfig(u16 DeviceId);
int XVit_act_CfgInitialize(XVit_act *InstancePtr, XVit_act_Config *ConfigPtr);
#else
int XVit_act_Initialize(XVit_act *InstancePtr, const char* InstanceName);
int XVit_act_Release(XVit_act *InstancePtr);
#endif

void XVit_act_Start(XVit_act *InstancePtr);
u32 XVit_act_IsDone(XVit_act *InstancePtr);
u32 XVit_act_IsIdle(XVit_act *InstancePtr);
u32 XVit_act_IsReady(XVit_act *InstancePtr);
void XVit_act_EnableAutoRestart(XVit_act *InstancePtr);
void XVit_act_DisableAutoRestart(XVit_act *InstancePtr);

void XVit_act_Set_images(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_images(XVit_act *InstancePtr);
void XVit_act_Set_x(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_x(XVit_act *InstancePtr);
void XVit_act_Set_tmp1(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_tmp1(XVit_act *InstancePtr);
void XVit_act_Set_tmp2(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_tmp2(XVit_act *InstancePtr);
void XVit_act_Set_tmp3(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_tmp3(XVit_act *InstancePtr);
void XVit_act_Set_tmp_hidden(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_tmp_hidden(XVit_act *InstancePtr);
void XVit_act_Set_attn(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_attn(XVit_act *InstancePtr);
void XVit_act_Set_attn_softmax_info(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_attn_softmax_info(XVit_act *InstancePtr);
void XVit_act_Set_patch_embed_weights(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_patch_embed_weights(XVit_act *InstancePtr);
void XVit_act_Set_patch_embed_bias(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_patch_embed_bias(XVit_act *InstancePtr);
void XVit_act_Set_pos_embed(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_pos_embed(XVit_act *InstancePtr);
void XVit_act_Set_attn_weights(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_attn_weights(XVit_act *InstancePtr);
void XVit_act_Set_attn_bias(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_attn_bias(XVit_act *InstancePtr);
void XVit_act_Set_vit_weights_l1(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_vit_weights_l1(XVit_act *InstancePtr);
void XVit_act_Set_vit_bias_l1(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_vit_bias_l1(XVit_act *InstancePtr);
void XVit_act_Set_vit_weights_l2(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_vit_weights_l2(XVit_act *InstancePtr);
void XVit_act_Set_vit_bias_l2(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_vit_bias_l2(XVit_act *InstancePtr);
void XVit_act_Set_norm_weights(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_norm_weights(XVit_act *InstancePtr);
void XVit_act_Set_norm_bias(XVit_act *InstancePtr, u64 Data);
u64 XVit_act_Get_norm_bias(XVit_act *InstancePtr);

void XVit_act_InterruptGlobalEnable(XVit_act *InstancePtr);
void XVit_act_InterruptGlobalDisable(XVit_act *InstancePtr);
void XVit_act_InterruptEnable(XVit_act *InstancePtr, u32 Mask);
void XVit_act_InterruptDisable(XVit_act *InstancePtr, u32 Mask);
void XVit_act_InterruptClear(XVit_act *InstancePtr, u32 Mask);
u32 XVit_act_InterruptGetEnabled(XVit_act *InstancePtr);
u32 XVit_act_InterruptGetStatus(XVit_act *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
