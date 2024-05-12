// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32880,y:32713,varname:node_3138,prsc:2|emission-6861-OUT,alpha-6243-OUT,voffset-3024-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32391,y:32811,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Get,id:3024,x:32526,y:33073,varname:node_3024,prsc:2|IN-5080-OUT;n:type:ShaderForge.SFN_Set,id:5080,x:32719,y:33164,varname:VSnap,prsc:2|IN-3655-OUT;n:type:ShaderForge.SFN_ValueProperty,id:711,x:31736,y:33333,ptovrint:False,ptlb:Resolution,ptin:_Resolution,varname:node_711,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:16;n:type:ShaderForge.SFN_Multiply,id:864,x:32395,y:33164,varname:node_864,prsc:2|A-5668-OUT,B-4993-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4993,x:32226,y:33337,ptovrint:False,ptlb:Snap Intensity,ptin:_SnapIntensity,varname:node_4993,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Posterize,id:5668,x:32239,y:33160,varname:node_5668,prsc:2|IN-4534-OUT,STPS-711-OUT;n:type:ShaderForge.SFN_Noise,id:4534,x:32064,y:33160,varname:node_4534,prsc:2|XY-7947-OUT;n:type:ShaderForge.SFN_Posterize,id:7947,x:31909,y:33160,varname:node_7947,prsc:2|IN-3394-OUT,STPS-711-OUT;n:type:ShaderForge.SFN_TexCoord,id:9048,x:31538,y:33165,varname:node_9048,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:3394,x:31538,y:33014,varname:node_3394,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5060-XYZ;n:type:ShaderForge.SFN_Transform,id:5060,x:31384,y:33014,varname:node_5060,prsc:2,tffrom:1,tfto:3|IN-9353-OUT;n:type:ShaderForge.SFN_Multiply,id:3062,x:31736,y:33165,varname:node_3062,prsc:2|A-9048-UVOUT,B-3394-OUT;n:type:ShaderForge.SFN_Subtract,id:3655,x:32565,y:33164,varname:node_3655,prsc:2|A-864-OUT,B-650-OUT;n:type:ShaderForge.SFN_Multiply,id:8072,x:32558,y:32811,varname:node_8072,prsc:2|A-7241-RGB,B-6946-RGB;n:type:ShaderForge.SFN_Tex2d,id:6946,x:32395,y:32969,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_6946,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Divide,id:650,x:32395,y:33283,varname:node_650,prsc:2|A-4993-OUT,B-6207-OUT;n:type:ShaderForge.SFN_Vector1,id:6207,x:32226,y:33391,varname:node_6207,prsc:2,v1:2;n:type:ShaderForge.SFN_ViewVector,id:9353,x:31227,y:33014,varname:node_9353,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:6243,x:32547,y:33020,ptovrint:False,ptlb:Glow Intensity,ptin:_GlowIntensity,varname:node_6243,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Cubemap,id:3423,x:32391,y:32647,ptovrint:False,ptlb:Cubemap,ptin:_Cubemap,varname:node_3423,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:0;n:type:ShaderForge.SFN_Multiply,id:4052,x:32558,y:32668,varname:node_4052,prsc:2|A-5437-OUT,B-3423-RGB;n:type:ShaderForge.SFN_ValueProperty,id:5437,x:32391,y:32570,ptovrint:False,ptlb:Cubemap Intensity,ptin:_CubemapIntensity,varname:node_5437,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Add,id:6861,x:32720,y:32811,varname:node_6861,prsc:2|A-4052-OUT,B-8072-OUT;proporder:7241-711-4993-6946-6243-3423-5437;pass:END;sub:END;*/

Shader "Urki/PSXLike" {
    Properties {
_Color ("Color", Color) = (1,1,1,1)
[MaterialToggle] _CustomColors("Custom Colors", Float) = 0
        _Resolution ("Resolution", Float ) = 16
        _SnapIntensity ("Snap Intensity", Float ) = 0
        _MainTex ("MainTex", 2D) = "white" {}
        _GlowIntensity ("Glow Intensity", Float ) = 0
        _Cubemap ("Cubemap", Cube) = "_Skybox" {}
        _CubemapIntensity ("Cubemap Intensity", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="Transparent"
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform samplerCUBE _Cubemap;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Resolution)
                UNITY_DEFINE_INSTANCED_PROP( float, _SnapIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _GlowIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _CubemapIntensity)
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - mul(unity_ObjectToWorld, v.vertex).xyz);
                float2 node_3394 = UnityObjectToViewPos( float4(viewDirection,0) ).xyz.rgb.rg;
                float _Resolution_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Resolution );
                float2 node_7947 = floor(node_3394 * _Resolution_var) / (_Resolution_var - 1);
                float2 node_4534_skew = node_7947 + 0.2127+node_7947.x*0.3713*node_7947.y;
                float2 node_4534_rnd = 4.789*sin(489.123*(node_4534_skew));
                float node_4534 = frac(node_4534_rnd.x*node_4534_rnd.y*(1+node_4534_skew.x));
                float _SnapIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SnapIntensity );
                float VSnap = ((floor(node_4534 * _Resolution_var) / (_Resolution_var - 1)*_SnapIntensity_var)-(_SnapIntensity_var/2.0));
                float node_3024 = VSnap;
                v.vertex.xyz += float3(node_3024,node_3024,node_3024);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
////// Lighting:
////// Emissive:
                float _CubemapIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _CubemapIntensity );
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = ((_CubemapIntensity_var*texCUBE(_Cubemap,viewReflectDirection).rgb)+(_Color_var.rgb*_MainTex_var.rgb));
                float3 finalColor = emissive;
                float _GlowIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _GlowIntensity );
                return fixed4(finalColor,_GlowIntensity_var);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Resolution)
                UNITY_DEFINE_INSTANCED_PROP( float, _SnapIntensity)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - mul(unity_ObjectToWorld, v.vertex).xyz);
                float2 node_3394 = UnityObjectToViewPos( float4(viewDirection,0) ).xyz.rgb.rg;
                float _Resolution_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Resolution );
                float2 node_7947 = floor(node_3394 * _Resolution_var) / (_Resolution_var - 1);
                float2 node_4534_skew = node_7947 + 0.2127+node_7947.x*0.3713*node_7947.y;
                float2 node_4534_rnd = 4.789*sin(489.123*(node_4534_skew));
                float node_4534 = frac(node_4534_rnd.x*node_4534_rnd.y*(1+node_4534_skew.x));
                float _SnapIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _SnapIntensity );
                float VSnap = ((floor(node_4534 * _Resolution_var) / (_Resolution_var - 1)*_SnapIntensity_var)-(_SnapIntensity_var/2.0));
                float node_3024 = VSnap;
                v.vertex.xyz += float3(node_3024,node_3024,node_3024);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
