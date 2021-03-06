//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 ChrEyeFHL1;
//   float4 ChrEyeFHL2;
//   float4 ChrEyeFHL3;
//   float4 LightScale;
//   float4 g_Ambient;
//   float4 g_Diffuse;
//   row_major float4x4 g_MtxView;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_aLightField[6];
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgInShadowScale;
//   sampler2D sampDLScatter;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampHighlight;
//   sampler2D sampSpeMask;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgInShadowScale                      c64      1
//   g_aLightField                         c77      6
//   g_MtxView                             c90      3
//   ChrEyeFHL1                            c150     1
//   ChrEyeFHL2                            c151     1
//   ChrEyeFHL3                            c152     1
//   LightScale                            c153     1
//   sampDif                               s0       1
//   sampEnv                               s2       1
//   sampHighlight                         s3       1
//   sampSpeMask                           s4       1
//   sampDLScatter                         s9       1
//

    ps_3_0
    def c0, 0.5, 1, 2, -0.5
    dcl_texcoord v0
    dcl_texcoord3 v1.xyz
    dcl_texcoord4 v2.xy
    dcl_texcoord6_pp v3.xy
    dcl_color_pp v4
    dcl_2d s0
    dcl_2d s2
    dcl_2d s3
    dcl_2d s4
    dcl_2d s9
    texld_pp r0, v0, s0
    mul_pp r0.w, r0.w, c16.w
    mul_pp oC0.w, r0.w, c21.x
    mov r1.zw, v0
    mad r0.w, r1.z, c0.z, -v3.x
    mov_pp r2, c151
    mad_pp r1.xy, -r0.w, r2, c150.x
    cmp_pp r1.x, r0.w, r1.y, r1.x
    mad_pp r2.x, r0.w, c152.z, c152.x
    mad r0.w, r1.w, c0.z, v3.y
    mad_pp r1.zw, -r0.w, r2, c150.y
    cmp_pp r1.y, r0.w, r1.w, r1.z
    mad_pp r2.y, r0.w, c152.w, c152.y
    add r1.zw, r2.xyxy, v0.xyxy
    texld r2, r1.zwzw, s3
    add r1.xy, r1, v0
    texld_pp r1, r1, s3
    texld_pp r3, v0, s4
    mad_pp r1.xyz, r2, r3.w, r1.w
    mul r0.w, c64.z, c64.x
    mov r2.xz, c64
    mad r1.w, r2.x, -r2.z, r2.z
    mad_pp r0.w, c77.w, r1.w, r0.w
    nrm_pp r2.xyz, v1
    mul r4, r2.y, c91
    mad r4, r2.x, c90, r4
    mad r4, r2.z, c92, r4
    dp4 r1.w, r4, r4
    rsq r1.w, r1.w
    mul r4.xy, r1.w, r4
    mad_pp r4.xy, r4, c0.xwzw, c0.x
    texld_pp r4, r4, s2
    mul_pp r3.xyz, r3, r4
    mul_pp r3.xyz, r3, v4.w
    mad_pp r1.xyz, r3, r0.w, r1
    mad_pp r3.xyz, r2, c0.x, c0.x
    mul_pp r2.xyz, r2, r2
    mov r4.xyz, c80
    mad r4.xyz, r4, r3.y, c79
    mul r4.xyz, r2.y, r4
    mov r5.xyz, c77
    mad r3.xyw, c78.xyzz, r3.x, r5.xyzz
    mov r5.xyz, c82
    mad r5.xyz, r5, r3.z, c81
    mad_pp r2.xyw, r2.x, r3, r4.xyzz
    mad_pp r2.xyz, r2.z, r5, r2.xyww
    mov_sat_pp r0.w, c153.x
    mov_sat_pp r1.w, c77.w
    lrp r2.w, r1.w, c0.y, r0.w
    mul_pp r3.xyz, r2.w, c36
    mad_pp r2.xyz, r2, c17, r3
    mul_pp r2.xyz, r2, c16
    mad_pp r0.xyz, r2, r0, r1
    mul_pp r0.xyz, r0, v4
    texld_pp r1, v2.yxzw, s9
    mad_pp oC0.xyz, r0, r1.w, r1

// approximately 58 instruction slots used (6 texture, 52 arithmetic)
