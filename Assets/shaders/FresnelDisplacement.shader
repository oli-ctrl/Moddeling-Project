// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33009,y:32853,varname:node_3138,prsc:2|normal-2831-OUT,emission-4159-OUT,alpha-1612-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32311,y:32731,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Fresnel,id:1612,x:32153,y:32897,varname:node_1612,prsc:2|EXP-3958-OUT;n:type:ShaderForge.SFN_Multiply,id:4159,x:32720,y:32801,varname:node_4159,prsc:2|A-7241-RGB,B-1612-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3958,x:31949,y:32897,ptovrint:False,ptlb:Fresnel Exp,ptin:_FresnelExp,varname:node_3958,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Tex2d,id:8166,x:32206,y:33189,ptovrint:False,ptlb:Displacement Texture,ptin:_DisplacementTexture,varname:node_8166,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:bbab0a6f7bae9cf42bf057d8ee2755f6,ntxv:3,isnm:True|UVIN-4462-UVOUT;n:type:ShaderForge.SFN_Vector3,id:705,x:32206,y:33082,varname:node_705,prsc:2,v1:0,v2:0,v3:3;n:type:ShaderForge.SFN_ValueProperty,id:2698,x:32206,y:33366,ptovrint:False,ptlb:Displacement Intensity,ptin:_DisplacementIntensity,varname:node_2698,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Lerp,id:2831,x:32388,y:33140,varname:node_2831,prsc:2|A-705-OUT,B-8166-RGB,T-2698-OUT;n:type:ShaderForge.SFN_UVTile,id:4462,x:31992,y:33189,varname:node_4462,prsc:2|WDT-626-OUT,HGT-626-OUT,TILE-4274-OUT;n:type:ShaderForge.SFN_Vector1,id:626,x:31732,y:33207,varname:node_626,prsc:2,v1:1;n:type:ShaderForge.SFN_Time,id:4057,x:31635,y:33417,varname:node_4057,prsc:2;n:type:ShaderForge.SFN_Divide,id:4274,x:31812,y:33326,varname:node_4274,prsc:2|A-4057-T,B-4192-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4192,x:31635,y:33360,ptovrint:False,ptlb:Divide Speed,ptin:_DivideSpeed,varname:node_4192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;proporder:7241-3958-8166-2698-4192;pass:END;sub:END;*/

Shader "Urki/FresnelDisplacement" {
    Properties {
_Color ("Color", Color) = (1,1,1,1)
[MaterialToggle] _CustomColors("Custom Colors", Float) = 0
        _FresnelExp ("Fresnel Exp", Float ) = 3
        _DisplacementTexture ("Displacement Texture", 2D) = "bump" {}
        _DisplacementIntensity ("Displacement Intensity", Float ) = 1
        _DivideSpeed ("Divide Speed", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            uniform sampler2D _DisplacementTexture; uniform float4 _DisplacementTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelExp)
                UNITY_DEFINE_INSTANCED_PROP( float, _DisplacementIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _DivideSpeed)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float node_626 = 1.0;
                float4 node_4057 = _Time;
                float _DivideSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DivideSpeed );
                float node_4274 = (node_4057.g/_DivideSpeed_var);
                float2 node_4462_tc_rcp = float2(1.0,1.0)/float2( node_626, node_626 );
                float node_4462_ty = floor(node_4274 * node_4462_tc_rcp.x);
                float node_4462_tx = node_4274 - node_626 * node_4462_ty;
                float2 node_4462 = (i.uv0 + float2(node_4462_tx, node_4462_ty)) * node_4462_tc_rcp;
                float3 _DisplacementTexture_var = UnpackNormal(tex2D(_DisplacementTexture,TRANSFORM_TEX(node_4462, _DisplacementTexture)));
                float _DisplacementIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _DisplacementIntensity );
                float3 normalLocal = lerp(float3(0,0,3),_DisplacementTexture_var.rgb,_DisplacementIntensity_var);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
////// Lighting:
////// Emissive:
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float _FresnelExp_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelExp );
                float node_1612 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelExp_var);
                float3 emissive = (_Color_var.rgb*node_1612);
                float3 finalColor = emissive;
                return fixed4(finalColor,node_1612);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
