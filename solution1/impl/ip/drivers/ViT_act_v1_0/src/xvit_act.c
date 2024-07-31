// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Tool Version Limit: 2019.12
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xvit_act.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XVit_act_CfgInitialize(XVit_act *InstancePtr, XVit_act_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Control_BaseAddress = ConfigPtr->Control_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XVit_act_Start(XVit_act *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_AP_CTRL) & 0x80;
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_AP_CTRL, Data | 0x01);
}

u32 XVit_act_IsDone(XVit_act *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XVit_act_IsIdle(XVit_act *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XVit_act_IsReady(XVit_act *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XVit_act_EnableAutoRestart(XVit_act *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_AP_CTRL, 0x80);
}

void XVit_act_DisableAutoRestart(XVit_act *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_AP_CTRL, 0);
}

void XVit_act_Set_images(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_IMAGES_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_IMAGES_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_images(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_IMAGES_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_IMAGES_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_x(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_X_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_X_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_x(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_X_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_X_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_tmp1(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP1_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP1_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_tmp1(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP1_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP1_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_tmp2(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP2_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP2_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_tmp2(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP2_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP2_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_tmp3(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP3_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP3_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_tmp3(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP3_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP3_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_tmp_hidden(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP_HIDDEN_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP_HIDDEN_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_tmp_hidden(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP_HIDDEN_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_TMP_HIDDEN_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_attn(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_attn(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_attn_softmax_info(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_SOFTMAX_INFO_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_SOFTMAX_INFO_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_attn_softmax_info(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_SOFTMAX_INFO_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_SOFTMAX_INFO_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_patch_embed_weights(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_PATCH_EMBED_WEIGHTS_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_PATCH_EMBED_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_patch_embed_weights(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_PATCH_EMBED_WEIGHTS_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_PATCH_EMBED_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_patch_embed_bias(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_PATCH_EMBED_BIAS_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_PATCH_EMBED_BIAS_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_patch_embed_bias(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_PATCH_EMBED_BIAS_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_PATCH_EMBED_BIAS_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_pos_embed(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_POS_EMBED_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_POS_EMBED_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_pos_embed(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_POS_EMBED_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_POS_EMBED_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_attn_weights(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_WEIGHTS_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_attn_weights(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_WEIGHTS_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_attn_bias(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_BIAS_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_BIAS_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_attn_bias(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_BIAS_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ATTN_BIAS_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_vit_weights_l1(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_WEIGHTS_L1_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_WEIGHTS_L1_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_vit_weights_l1(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_WEIGHTS_L1_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_WEIGHTS_L1_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_vit_bias_l1(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_BIAS_L1_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_BIAS_L1_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_vit_bias_l1(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_BIAS_L1_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_BIAS_L1_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_vit_weights_l2(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_WEIGHTS_L2_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_WEIGHTS_L2_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_vit_weights_l2(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_WEIGHTS_L2_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_WEIGHTS_L2_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_vit_bias_l2(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_BIAS_L2_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_BIAS_L2_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_vit_bias_l2(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_BIAS_L2_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_VIT_BIAS_L2_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_norm_weights(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_NORM_WEIGHTS_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_NORM_WEIGHTS_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_norm_weights(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_NORM_WEIGHTS_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_NORM_WEIGHTS_DATA + 4) << 32;
    return Data;
}

void XVit_act_Set_norm_bias(XVit_act *InstancePtr, u64 Data) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_NORM_BIAS_DATA, (u32)(Data));
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_NORM_BIAS_DATA + 4, (u32)(Data >> 32));
}

u64 XVit_act_Get_norm_bias(XVit_act *InstancePtr) {
    u64 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_NORM_BIAS_DATA);
    Data += (u64)XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_NORM_BIAS_DATA + 4) << 32;
    return Data;
}

void XVit_act_InterruptGlobalEnable(XVit_act *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_GIE, 1);
}

void XVit_act_InterruptGlobalDisable(XVit_act *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_GIE, 0);
}

void XVit_act_InterruptEnable(XVit_act *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_IER);
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_IER, Register | Mask);
}

void XVit_act_InterruptDisable(XVit_act *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_IER);
    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_IER, Register & (~Mask));
}

void XVit_act_InterruptClear(XVit_act *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XVit_act_WriteReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ISR, Mask);
}

u32 XVit_act_InterruptGetEnabled(XVit_act *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_IER);
}

u32 XVit_act_InterruptGetStatus(XVit_act *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XVit_act_ReadReg(InstancePtr->Control_BaseAddress, XVIT_ACT_CONTROL_ADDR_ISR);
}

