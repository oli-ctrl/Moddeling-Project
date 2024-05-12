// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/

Shader "Oli/ScreenspaceEPIC" {
    Properties {
            [Header(Made By Oli (gikmo. on discord))]
            _Color ("Color", Color) = (1,1,1,1)
            [MaterialToggle] _CustomColors("Custom Colors", Float) = 0
            [Header(Main Texture)]            
            _Texture ("Texture", 2D) = "white" {}
            _TextureScroll ("Texture Scroll", Float ) = 1
            [MaterialToggle] _ScreenSpace ("Screen Space", Float ) = 1

            [Header(Displacement)]
            _Displacement ("Displacement Texture", 2D) = "black" {}
            _DisplacementStrength ("Displacement Strength", Range(-10, 10)) = 1
            _DisplacementSpeed ("Displacement Speed", Float ) = 1

            [Header(Inside)]
            _InsideTexture ("Inside Texture", 2D) = "black" {}
            [MaterialToggle] _EffectedByDistortion ("Effected By Distortion", Float ) = 1
            _InsideSpeed ("Inside Speed", Float ) = 1

            [Header(Fresnel)]
            [MaterialToggle] _Fresnel ("Fresnel", Float ) = 1
            _FresnelStrength ("Fresnel Strength", Range(0, 10)) = 3
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _Displacement; uniform float4 _Displacement_ST;
            uniform sampler2D _InsideTexture; uniform float4 _InsideTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _DisplacementStrength)
                UNITY_DEFINE_INSTANCED_PROP( float, _InsideSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _TextureScroll)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelStrength)
                UNITY_DEFINE_INSTANCED_PROP( float, _DisplacementSpeed)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Fresnel)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _ScreenSpace)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _EffectedByDistortion)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float4 node_3265 = _Time;
                float node_9613 = (node_3265.r*1.0);
                float _TextureScroll_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TextureScroll );
                float _DisplacementSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DisplacementSpeed );
                float2 node_9943 = (i.uv0+(node_9613*_DisplacementSpeed_var)*float2(1,1));
                float4 node_7583 = tex2D(_Displacement,TRANSFORM_TEX(node_9943, _Displacement));
                float _DisplacementStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DisplacementStrength );
                float3 node_4805 = (node_7583.rgb*_DisplacementStrength_var);
                float node_1717 = 0.0;
                float2 _ScreenSpace_var = lerp( node_1717, (sceneUVs * 2 - 1).rg, UNITY_ACCESS_INSTANCED_PROP( Props, _ScreenSpace ) );
                float3 node_7092 = (float3((i.uv0+(node_9613*_TextureScroll_var)*float2(1,1)),0.0)+node_4805+float3(_ScreenSpace_var,0.0));
                float4 node_4876 = tex2D(_Texture,TRANSFORM_TEX(node_7092, _Texture));
                float _InsideSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _InsideSpeed );
                float2 node_6949 = (i.uv0+(node_9613*_InsideSpeed_var)*float2(1,1));
                float3 _EffectedByDistortion_var = lerp( float3(node_6949,0.0), (node_4805+float3(node_6949,0.0)), UNITY_ACCESS_INSTANCED_PROP( Props, _EffectedByDistortion ) );
                float4 node_6289 = tex2D(_InsideTexture,TRANSFORM_TEX(_EffectedByDistortion_var, _InsideTexture));
                float3 emissive = (node_4876.rgb+node_6289.rgb);
                float _FresnelStrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelStrength );
                float _Fresnel_var = lerp( node_1717, pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelStrength_var), UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel ) );
                float3 finalColor = emissive + float3(_Fresnel_var,_Fresnel_var,_Fresnel_var);
                float4 _color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color);
                finalColor = finalColor * _color_var;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
