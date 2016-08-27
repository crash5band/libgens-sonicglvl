//
// Generated by Microsoft (R) HLSL Shader Compiler 9.29.952.3111
//
// Parameters:
//
//   float4 g_Ambient;
//   float4 g_ChrPlayableMenuParam;
//   float4 g_Diffuse;
//   float4 g_EyeDirection;
//   float4 g_EyePosition;
//   float4 g_ForceAlphaColor;
//   float4 g_GI0Scale;
//   float4 g_LightScatteringColor;
//   float4 g_OpacityReflectionRefractionSpectype;
//   float4 g_PowerGlossLevel;
//   float4 g_ShadowMapParams;
//   sampler2D g_ShadowMapSampler;
//   float4 g_Specular;
//   sampler2D g_VerticalShadowMapSampler;
//   float4 g_aLightField[6];
//   float4 mrgEyeLight_Attribute;
//   float4 mrgEyeLight_Diffuse;
//   float4 mrgEyeLight_Range;
//   float4 mrgEyeLight_Specular;
//   float4 mrgGlobalLight_Diffuse;
//   float4 mrgGlobalLight_Direction;
//   float4 mrgGlobalLight_Specular;
//   float4 mrgInShadowScale;
//   float4 mrgLocalLight0_Color;
//   float4 mrgLocalLight0_Position;
//   float4 mrgLocalLight0_Range;
//   float4 mrgLocalLight1_Color;
//   float4 mrgLocalLight1_Position;
//   float4 mrgLocalLight1_Range;
//   float4 mrgLocalLight2_Color;
//   float4 mrgLocalLight2_Position;
//   float4 mrgLocalLight2_Range;
//   float4 mrgLocalLight3_Color;
//   float4 mrgLocalLight3_Position;
//   float4 mrgLocalLight3_Range;
//   float4 mrgLuminanceRange;
//   sampler2D sampDif;
//   sampler2D sampEnv;
//   sampler2D sampNrm;
//   sampler2D sampPower;
//
//
// Registers:
//
//   Name                                  Reg   Size
//   ------------------------------------- ----- ----
//   mrgGlobalLight_Direction              c10      1
//   g_Diffuse                             c16      1
//   g_Ambient                             c17      1
//   g_Specular                            c18      1
//   g_PowerGlossLevel                     c20      1
//   g_OpacityReflectionRefractionSpectype c21      1
//   g_EyePosition                         c22      1
//   g_EyeDirection                        c23      1
//   mrgGlobalLight_Diffuse                c36      1
//   mrgGlobalLight_Specular               c37      1
//   mrgLocalLight0_Position               c38      1
//   mrgLocalLight0_Color                  c39      1
//   mrgLocalLight0_Range                  c40      1
//   mrgLocalLight1_Position               c42      1
//   mrgLocalLight1_Color                  c43      1
//   mrgLocalLight1_Range                  c44      1
//   mrgLocalLight2_Position               c46      1
//   mrgLocalLight2_Color                  c47      1
//   mrgLocalLight2_Range                  c48      1
//   mrgLocalLight3_Position               c50      1
//   mrgLocalLight3_Color                  c51      1
//   mrgLocalLight3_Range                  c52      1
//   mrgEyeLight_Diffuse                   c58      1
//   mrgEyeLight_Specular                  c59      1
//   mrgEyeLight_Range                     c60      1
//   mrgEyeLight_Attribute                 c61      1
//   mrgLuminanceRange                     c63      1
//   mrgInShadowScale                      c64      1
//   g_ShadowMapParams                     c65      1
//   g_GI0Scale                            c70      1
//   g_LightScatteringColor                c75      1
//   g_aLightField                         c77      6
//   g_ForceAlphaColor                     c89      1
//   g_ChrPlayableMenuParam                c150     1
//   sampDif                               s0       1
//   sampPower                             s1       1
//   sampNrm                               s2       1
//   sampEnv                               s3       1
//   g_VerticalShadowMapSampler            s7       1
//   g_ShadowMapSampler                    s13      1
//

    ps_3_0
    def c0, 2, -1, 1, 0.5
    def c1, 0, 0.0500000007, 10, 1024
    def c2, -2, 3, 500, 5
    def c3, 4, 0, 0, 0
    dcl_texcoord v0.xy
    dcl_texcoord2 v1.xyz
    dcl_texcoord3_pp v2
    dcl_texcoord4 v3
    dcl_texcoord6 v4
    dcl_texcoord5_pp v5.xyz
    dcl_texcoord7 v6.xyz
    dcl_texcoord8 v7.xyz
    dcl_2d s0
    dcl_2d s1
    dcl_2d s2
    dcl_2d s3
    dcl_2d s7
    dcl_2d s13
    add_pp r0.x, -c61.z, c61.y
    rcp_pp r0.x, r0.x
    add r0.yzw, -c22.xxyz, v1.xxyz
    dp3 r1.x, r0.yzww, r0.yzww
    rsq r1.x, r1.x
    mul_pp r0.yzw, r0, r1.x
    rcp r1.x, r1.x
    add r1.x, r1.x, -c60.z
    dp3_pp r1.y, r0.yzww, c23
    add_pp r1.y, r1.y, -c61.z
    mul_sat_pp r0.x, r0.x, r1.y
    mad_pp r1.y, r0.x, c2.x, c2.y
    mul_pp r0.x, r0.x, r0.x
    mul_pp r0.x, r0.x, r1.y
    pow_sat_pp r1.y, r0.x, c61.w
    mov_pp r1.z, c0.z
    add r0.x, r1.z, -c61.x
    cmp_pp r0.x, r0.x, c0.z, r1.y
    add r1.y, -c60.z, c60.w
    rcp r1.y, r1.y
    mul_sat r1.x, r1.y, r1.x
    add_pp r1.x, -r1.x, c0.z
    cmp_pp r1.x, -c61.x, r1.z, r1.x
    mul_pp r0.x, r0.x, r1.x
    max r1.x, v3.z, c1.x
    add r1.y, r1.x, -v3.w
    cmp r1.z, r1.y, c1.x, r1.x
    mov r1.xyw, v3
    texldp_pp r1, r1, s13
    max r1.y, v4.z, c1.x
    add r1.z, r1.y, -v4.w
    cmp r2.z, r1.z, c1.x, r1.y
    mov r2.xyw, v4
    texldp_pp r2, r2, s7
    min_pp r3.x, r2.x, r1.x
    lrp_pp r1.x, v5.z, c0.z, r2.x
    lrp_pp r1.y, v5.z, c0.z, r3.x
    rcp r1.z, v3.w
    mul r1.zw, r1.z, v3.xyxy
    mad r1.zw, r1, c0.x, c0.y
    abs_sat r1.zw, r1
    add_sat r1.zw, r1, -c65.x
    mul r1.zw, r1, c65.y
    max r2.x, r1.z, r1.w
    lrp_pp r3.x, r2.x, c0.z, r1.y
    lrp_pp r3.y, r2.x, c0.z, r1.x
    mul r1.x, r3.x, c77.w
    add r1.y, -c52.z, c52.w
    rcp r1.y, r1.y
    add r2.xyz, -c50, v1
    dp3 r1.z, r2, r2
    rsq r1.z, r1.z
    rcp r1.w, r1.z
    mul_pp r2.xyz, r1.z, r2
    add r1.z, r1.w, -c52.z
    mul_sat r1.y, r1.y, r1.z
    add r1.z, -c48.z, c48.w
    rcp r1.z, r1.z
    add r3.xzw, -c46.xyyz, v1.xyyz
    dp3 r1.w, r3.xzww, r3.xzww
    rsq r1.w, r1.w
    rcp r2.w, r1.w
    mul_pp r3.xzw, r1.w, r3
    add r1.w, r2.w, -c48.z
    mul_sat r1.z, r1.z, r1.w
    add r1.w, -c40.z, c40.w
    rcp r1.w, r1.w
    add r4.xyz, -c38, v1
    dp3 r2.w, r4, r4
    rsq r2.w, r2.w
    rcp r4.w, r2.w
    mul_pp r4.xyz, r2.w, r4
    add r2.w, r4.w, -c40.z
    mul_sat r1.w, r1.w, r2.w
    add_pp r1.yzw, -r1, c0.z
    add r2.w, -c44.z, c44.w
    rcp r2.w, r2.w
    add r5.xyz, -c42, v1
    dp3 r4.w, r5, r5
    rsq r4.w, r4.w
    rcp r5.w, r4.w
    mul_pp r5.xyz, r4.w, r5
    add r4.w, r5.w, -c44.z
    mul_sat r2.w, r2.w, r4.w
    add_pp r2.w, -r2.w, c0.z
    nrm_pp r6.xyz, v7
    texld_pp r7, v0, s2
    mul_pp r7.x, r7.w, r7.x
    mad_pp r7.xy, r7, c0.x, c0.y
    mul_pp r6.xyz, r6, r7.y
    nrm_pp r8.xyz, v6
    mad_pp r6.xyz, r7.x, r8, r6
    dp2add_pp r4.w, r7, -r7, c0.z
    rsq_pp r4.w, r4.w
    rcp_pp r4.w, r4.w
    nrm_pp r7.xyz, v2
    mad_pp r6.xyz, r4.w, r7, r6
    add_pp r7.xyz, c22, -v1
    dp3_pp r4.w, r7, r7
    rsq_pp r4.w, r4.w
    mad_pp r8.xyz, r7, r4.w, -r5
    dp3_pp r5.x, r6, -r5
    nrm_pp r9.xyz, r8
    dp3_sat_pp r5.y, r9, r6
    texld_pp r8, v0, s1
    mul_pp r5.zw, r8.w, c20.xyyz
    mul_pp r5.zw, r5, c2
    max_pp r6.w, r5.z, c0.z
    min r5.z, r6.w, c1.w
    pow r6.w, r5.y, r5.z
    mul_pp r8.xyz, r5.w, c43
    mul_pp r8.xyz, r6.w, r8
    mul_pp r8.xyz, r2.w, r8
    mul_pp r9.xyz, r5.w, c39
    mad_pp r10.xyz, r7, r4.w, -r4
    dp3_pp r4.x, r6, -r4
    nrm_pp r11.xyz, r10
    dp3_sat_pp r4.y, r11, r6
    pow r6.w, r4.y, r5.z
    mul_pp r9.xyz, r6.w, r9
    mad_pp r8.xyz, r1.w, r9, r8
    mul_pp r9.xyz, r5.w, c47
    mad_pp r10.xyz, r7, r4.w, -r3.xzww
    dp3_pp r3.x, r6, -r3.xzww
    nrm_pp r11.xyz, r10
    dp3_sat_pp r3.z, r11, r6
    pow r4.y, r3.z, r5.z
    mul_pp r9.xyz, r4.y, r9
    mad_pp r8.xyz, r1.z, r9, r8
    mul_pp r9.xyz, r5.w, c51
    mad_pp r10.xyz, r7, r4.w, -r2
    dp3_pp r2.x, r6, -r2
    nrm_pp r11.xyz, r10
    dp3_sat_pp r2.y, r11, r6
    pow r3.z, r2.y, r5.z
    mul_pp r9.xyz, r3.z, r9
    mad_pp r8.xyz, r1.y, r9, r8
    mul_pp r9.xyz, r5.w, c37
    mad_pp r10.xyz, r7, r4.w, -c10
    nrm_pp r11.xyz, r10
    dp3_sat_pp r2.y, r11, r6
    pow r3.z, r2.y, r5.z
    mul_pp r9.xyz, r3.z, r9
    mad_pp r8.xyz, r9, r1.x, r8
    mul_pp r9.xyz, c59.w, c59
    mul_pp r9.xyz, r5.w, r9
    mad_pp r10.xyz, r7, r4.w, -r0.yzww
    dp3_pp r0.y, r6, -r0.yzww
    mul_pp r4.yzw, r4.w, r7.xxyz
    nrm_pp r7.xyz, r10
    dp3_sat_pp r0.z, r7, r6
    pow r2.y, r0.z, r5.z
    mul_pp r5.yzw, r2.y, r9.xxyz
    mad_pp r5.yzw, r0.x, r5, r8.xxyz
    mul_pp r5.yzw, r5, c18.xxyz
    dp3_pp r0.z, r4.yzww, r6
    add_pp r0.z, r0.z, r0.z
    mad_pp r7.xyz, r0.z, r6, -r4.yzww
    add_pp r7.w, r7.z, c0.z
    dp3_pp r0.z, r7.xyww, r7.xyww
    rsq_pp r0.z, r0.z
    rcp_pp r0.z, r0.z
    add_pp r0.z, r0.z, r0.z
    rcp r0.z, r0.z
    mad_pp r0.zw, r7.xyxy, r0.z, c0.w
    texld_pp r7, r0.zwzw, s3
    mul r4.yzw, r7.xxyz, c63.x
    mad_pp r4.yzw, r4, r7.w, r7.xxyz
    mul_pp r4.yzw, r8.w, r4
    mul r0.z, c64.z, c64.x
    mov r7.xz, c64
    mad r0.w, r7.x, -r7.z, r7.z
    mad_pp r0.z, r1.x, r0.w, r0.z
    mul_pp r4.yzw, r0.z, r4
    add_pp r0.z, c150.x, -v1.y
    add_pp r0.z, r0.z, c1.y
    mul_sat_pp r0.z, r0.z, c1.z
    mul_pp r4.yzw, r0.z, r4
    mad_pp r4.yzw, r5, r0.z, r4
    mul_pp r4.yzw, r4, v2.w
    mul_pp r5.yzw, r5.x, c43.xxyz
    cmp_pp r5.xyz, r5.x, r5.yzww, c1.x
    mul_pp r2.yzw, r2.w, r5.xxyz
    mul_pp r5.xyz, r4.x, c39
    cmp_pp r5.xyz, r4.x, r5, c1.x
    mad_pp r2.yzw, r1.w, r5.xxyz, r2
    mul_pp r5.xyz, r3.x, c47
    cmp_pp r3.xzw, r3.x, r5.xyyz, c1.x
    mad_pp r2.yzw, r1.z, r3.xxzw, r2
    mul_pp r3.xzw, r2.x, c51.xyyz
    cmp_pp r3.xzw, r2.x, r3, c1.x
    mad_pp r1.yzw, r1.y, r3.xxzw, r2
    dp3_pp r0.w, r6, -c10
    mul r2.xyz, r0.w, c36
    mul_pp r2.xyz, r1.x, r2
    cmp_pp r2.xyz, r0.w, r2, c1.x
    add_pp r1.xyz, r1.yzww, r2
    mul_pp r2.xyz, c58.w, c58
    mul_pp r2.xyz, r0.y, r2
    cmp_pp r2.xyz, r0.y, r2, c1.x
    mad_pp r0.xyw, r0.x, r2.xyzz, r1.xyzz
    mad_pp r1.xyz, r6, c0.w, c0.w
    mul_pp r2.xyz, r6, r6
    mov r5.xyz, c79
    add r3.xzw, -r5.xyyz, c80.xyyz
    mad r3.xzw, r1.y, r3, c79.xyyz
    mul r3.xzw, r2.y, r3
    mov r5.xyz, c77
    add r5.xyz, -r5, c78
    mad r1.xyw, r1.x, r5.xyzz, c77.xyzz
    mad_pp r1.xyw, r2.x, r1, r3.xzzw
    mov r5.xyz, c81
    add r2.xyw, -r5.xyzz, c82.xyzz
    mad r2.xyw, r1.z, r2, c81.xyzz
    mad_pp r1.xyz, r2.z, r2.xyww, r1.xyww
    mul_pp r2.xyz, r1, c17
    mul r2.xyz, r2, c70.w
    mad r1.xyz, r1, c17, -r2
    mad_pp r1.xyz, r3.y, r1, r2
    add_pp r0.xyw, r0, r1.xyzz
    mul_pp r0.xyw, r0, c16.xyzz
    texld_pp r1, v0, s0
    add_pp r1, r1, c0.y
    mad_pp r1, r0.z, r1, c0.z
    mad_pp r0.xyz, r0.xyww, r1, r4.yzww
    mul_pp r1.x, r1.w, c16.w
    mul_pp r0.w, r1.x, c21.x
    mul_pp r0, r0, c89
    min_pp r1, r0, c3.x
    mul_pp r0.xyz, c75, v5.y
    mad_pp oC0.xyz, r1, v5.x, r0
    mov_pp oC0.w, r1.w

// approximately 265 instruction slots used (6 texture, 259 arithmetic)