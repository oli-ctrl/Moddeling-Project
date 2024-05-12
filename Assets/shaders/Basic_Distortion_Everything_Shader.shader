// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32931,y:32573,varname:node_3138,prsc:2|emission-7241-RGB,alpha-3625-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31999,y:32687,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8817,x:31925,y:32918,ptovrint:False,ptlb:Displacement tex,ptin:_Displacementtex,varname:node_8817,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c5ef9c0b996ca0547b017d33a13388b4,ntxv:0,isnm:False|UVIN-5522-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:8248,x:31681,y:32842,ptovrint:False,ptlb:Regular tex,ptin:_Regulartex,varname:node_8248,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1d785b73ba678ca4fbc5baeedaa0333c,ntxv:0,isnm:False|UVIN-9942-OUT;n:type:ShaderForge.SFN_TexCoord,id:9510,x:31541,y:33075,varname:node_9510,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:3212,x:32433,y:32567,varname:node_3212,prsc:2|A-8817-R,B-8817-G;n:type:ShaderForge.SFN_Multiply,id:8338,x:32068,y:33342,varname:node_8338,prsc:2|A-3212-OUT,B-7668-OUT;n:type:ShaderForge.SFN_Slider,id:7668,x:31942,y:33111,ptovrint:False,ptlb:Displacement,ptin:_Displacement,varname:node_7668,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.7,cur:0,max:0.7;n:type:ShaderForge.SFN_Add,id:9942,x:31739,y:33167,varname:node_9942,prsc:2|A-9510-UVOUT,B-8338-OUT;n:type:ShaderForge.SFN_Multiply,id:7574,x:32321,y:32879,varname:node_7574,prsc:2|A-8248-R,B-7428-OUT,C-9567-R;n:type:ShaderForge.SFN_Clamp01,id:3625,x:32648,y:33243,varname:node_3625,prsc:2|IN-7574-OUT;n:type:ShaderForge.SFN_Tex2d,id:9567,x:31771,y:32495,ptovrint:False,ptlb:Mask (optional),ptin:_Maskoptional,varname:node_9567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Panner,id:5102,x:31053,y:32943,varname:node_5102,prsc:2,spu:1,spv:0|UVIN-9510-UVOUT,DIST-9161-OUT;n:type:ShaderForge.SFN_Time,id:6245,x:30670,y:33150,varname:node_6245,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9161,x:30869,y:33089,varname:node_9161,prsc:2|A-7432-OUT,B-6245-T;n:type:ShaderForge.SFN_ValueProperty,id:7432,x:30670,y:33078,ptovrint:False,ptlb:Distortion animate x,ptin:_Distortionanimatex,varname:_Distortionmovementx_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:7814,x:30679,y:33347,ptovrint:False,ptlb:Distortion animate y,ptin:_Distortionanimatey,varname:_Distortionmoventy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:2276,x:30679,y:33450,varname:node_2276,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1088,x:30891,y:33376,varname:node_1088,prsc:2|A-7814-OUT,B-2276-T;n:type:ShaderForge.SFN_Panner,id:5522,x:31124,y:33221,varname:node_5522,prsc:2,spu:0,spv:1|UVIN-5102-UVOUT,DIST-1088-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7428,x:32520,y:33030,ptovrint:False,ptlb:Glow,ptin:_Glow,varname:node_7428,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:7241-8248-8817-7668-7432-7814-9567-7428;pass:END;sub:END;*/

Shader "Notmaster Shaders/Basic Distortion Everything Shader" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Regulartex ("Regular tex", 2D) = "white" {}
        _Displacementtex ("Displacement tex", 2D) = "white" {}
        _Displacement ("Displacement", Range(-0.7, 0.7)) = 0
        _Distortionanimatex ("Distortion animate x", Float ) = 0
        _Distortionanimatey ("Distortion animate y", Float ) = 0
        _Maskoptional ("Mask (optional)", 2D) = "white" {}
        _Glow ("Glow", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
		[MaterialToggle] _CustomColors("Custom Colors", Float) = 0
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _Displacementtex; uniform float4 _Displacementtex_ST;
            uniform sampler2D _Regulartex; uniform float4 _Regulartex_ST;
            uniform float _Displacement;
            uniform sampler2D _Maskoptional; uniform float4 _Maskoptional_ST;
            uniform float _Distortionanimatex;
            uniform float _Distortionanimatey;
            uniform float _Glow;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                float4 node_2276 = _Time;
                float4 node_6245 = _Time;
                float2 node_5522 = ((i.uv0+(_Distortionanimatex*node_6245.g)*float2(1,0))+(_Distortionanimatey*node_2276.g)*float2(0,1));
                float4 _Displacementtex_var = tex2D(_Displacementtex,TRANSFORM_TEX(node_5522, _Displacementtex));
                float2 node_9942 = (i.uv0+(float2(_Displacementtex_var.r,_Displacementtex_var.g)*_Displacement));
                float4 _Regulartex_var = tex2D(_Regulartex,TRANSFORM_TEX(node_9942, _Regulartex));
                float4 _Maskoptional_var = tex2D(_Maskoptional,TRANSFORM_TEX(i.uv0, _Maskoptional));
                return fixed4(finalColor,saturate((_Regulartex_var.r*_Glow*_Maskoptional_var.r)));
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_SHADOWCASTER
            #define UNITY_PASS_SHADOWCASTER
            #endif //UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
