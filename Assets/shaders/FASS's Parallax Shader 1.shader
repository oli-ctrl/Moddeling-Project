// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:1000,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32977,y:32697,varname:node_3138,prsc:2|emission-8603-OUT,alpha-63-OUT;n:type:ShaderForge.SFN_Panner,id:7641,x:30347,y:32877,varname:node_7641,prsc:2,spu:0,spv:1|UVIN-5144-UVOUT,DIST-291-OUT;n:type:ShaderForge.SFN_Panner,id:5144,x:29969,y:32886,varname:node_5144,prsc:2,spu:1,spv:0|UVIN-8964-UVOUT,DIST-9745-OUT;n:type:ShaderForge.SFN_TexCoord,id:8964,x:29551,y:32881,varname:node_8964,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:8733,x:29423,y:33189,varname:node_8733,prsc:2;n:type:ShaderForge.SFN_Time,id:6434,x:29950,y:33211,varname:node_6434,prsc:2;n:type:ShaderForge.SFN_Slider,id:9468,x:29344,y:33076,ptovrint:False,ptlb:Normal X Speed,ptin:_NormalXSpeed,varname:node_9468,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:9745,x:29743,y:33147,varname:node_9745,prsc:2|A-9468-OUT,B-8733-T;n:type:ShaderForge.SFN_Multiply,id:291,x:30272,y:33172,varname:node_291,prsc:2|A-1101-OUT,B-6434-T;n:type:ShaderForge.SFN_Slider,id:1101,x:29950,y:33106,ptovrint:False,ptlb:Normal Y Speed,ptin:_NormalYSpeed,varname:node_1101,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Parallax,id:1255,x:31210,y:32658,varname:node_1255,prsc:2|UVIN-9738-UVOUT,HEI-5564-OUT,DEP-1771-R;n:type:ShaderForge.SFN_Slider,id:5564,x:30717,y:32743,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_5564,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.5,cur:0.5,max:10;n:type:ShaderForge.SFN_Tex2d,id:3964,x:31142,y:32953,ptovrint:False,ptlb:Parallax Texture,ptin:_ParallaxTexture,varname:node_3964,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1255-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:1771,x:30782,y:32932,ptovrint:False,ptlb:Parallax Normal,ptin:_ParallaxNormal,varname:node_1771,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-7641-UVOUT;n:type:ShaderForge.SFN_Color,id:4309,x:31467,y:32572,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4309,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:7022,x:31872,y:32695,varname:node_7022,prsc:2|A-3964-RGB,B-4309-RGB;n:type:ShaderForge.SFN_Multiply,id:5607,x:32218,y:32745,varname:node_5607,prsc:2|A-7022-OUT,B-329-OUT;n:type:ShaderForge.SFN_Slider,id:329,x:31780,y:32924,ptovrint:False,ptlb:Glow,ptin:_Glow,varname:node_329,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:2;n:type:ShaderForge.SFN_SwitchProperty,id:63,x:32523,y:32950,ptovrint:False,ptlb:CustomColors,ptin:_CustomColors,varname:node_63,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5411-OUT,B-5411-OUT;n:type:ShaderForge.SFN_Multiply,id:5411,x:32325,y:33064,varname:node_5411,prsc:2|A-3964-A,B-3964-R,C-329-OUT;n:type:ShaderForge.SFN_Panner,id:9738,x:30422,y:32334,varname:node_9738,prsc:2,spu:0,spv:1|UVIN-9895-UVOUT,DIST-5776-OUT;n:type:ShaderForge.SFN_Panner,id:9895,x:30044,y:32343,varname:node_9895,prsc:2,spu:1,spv:0|UVIN-5224-UVOUT,DIST-9301-OUT;n:type:ShaderForge.SFN_TexCoord,id:5224,x:29626,y:32338,varname:node_5224,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:3557,x:29498,y:32646,varname:node_3557,prsc:2;n:type:ShaderForge.SFN_Time,id:7175,x:30025,y:32668,varname:node_7175,prsc:2;n:type:ShaderForge.SFN_Slider,id:1346,x:29419,y:32533,ptovrint:False,ptlb:Parallax X Speed,ptin:_ParallaxXSpeed,varname:_NormalXSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:9301,x:29818,y:32604,varname:node_9301,prsc:2|A-1346-OUT,B-3557-T;n:type:ShaderForge.SFN_Multiply,id:5776,x:30347,y:32629,varname:node_5776,prsc:2|A-7394-OUT,B-7175-T;n:type:ShaderForge.SFN_Slider,id:7394,x:30025,y:32563,ptovrint:False,ptlb:Parallax Y Speed,ptin:_ParallaxYSpeed,varname:_NormalYSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Add,id:8603,x:32566,y:32756,varname:node_8603,prsc:2|A-5607-OUT,B-3839-OUT;n:type:ShaderForge.SFN_Fresnel,id:9070,x:31046,y:33296,varname:node_9070,prsc:2|EXP-9227-OUT;n:type:ShaderForge.SFN_Slider,id:9227,x:30612,y:33422,ptovrint:False,ptlb:Fresnel Amount,ptin:_FresnelAmount,varname:node_9227,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.1,max:5;n:type:ShaderForge.SFN_Tex2d,id:8935,x:31046,y:33493,ptovrint:False,ptlb:Fresnel Texture,ptin:_FresnelTexture,varname:node_8935,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8106,x:31288,y:33334,varname:node_8106,prsc:2|A-9070-OUT,B-8935-RGB;n:type:ShaderForge.SFN_Color,id:4218,x:31288,y:33522,ptovrint:False,ptlb:Fresnel Color,ptin:_FresnelColor,varname:node_4218,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8941,x:31500,y:33410,varname:node_8941,prsc:2|A-8106-OUT,B-4218-RGB;n:type:ShaderForge.SFN_Slider,id:3259,x:31366,y:33698,ptovrint:False,ptlb:Fresnel Glow,ptin:_FresnelGlow,varname:node_3259,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:3839,x:31713,y:33483,varname:node_3839,prsc:2|A-8941-OUT,B-3259-OUT;proporder:63-4309-3964-1771-9468-1101-5564-329-1346-7394-8935-9227-4218-3259;pass:END;sub:END;*/

Shader "FASS/FASS's Parallax Shader" {
    Properties {
        [MaterialToggle] _CustomColors ("CustomColors", Float ) = 0
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _ParallaxTexture ("Parallax Texture", 2D) = "white" {}
        _ParallaxNormal ("Parallax Normal", 2D) = "bump" {}
        _NormalXSpeed ("Normal X Speed", Range(-5, 5)) = 0
        _NormalYSpeed ("Normal Y Speed", Range(-5, 5)) = 0
        _Depth ("Depth", Range(0.5, 10)) = 0.5
        _Glow ("Glow", Range(0, 2)) = 0
        _ParallaxXSpeed ("Parallax X Speed", Range(-5, 5)) = 0
        _ParallaxYSpeed ("Parallax Y Speed", Range(-5, 5)) = 0
        _FresnelTexture ("Fresnel Texture", 2D) = "white" {}
        _FresnelAmount ("Fresnel Amount", Range(0.1, 5)) = 0.1
        _FresnelColor ("Fresnel Color", Color) = (1,1,1,1)
        _FresnelGlow ("Fresnel Glow", Range(0, 5)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Geometry+1000"
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _ParallaxTexture; uniform float4 _ParallaxTexture_ST;
            uniform sampler2D _ParallaxNormal; uniform float4 _ParallaxNormal_ST;
            uniform sampler2D _FresnelTexture; uniform float4 _FresnelTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalXSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalYSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _Depth)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Glow)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _CustomColors)
                UNITY_DEFINE_INSTANCED_PROP( float, _ParallaxXSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _ParallaxYSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelAmount)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelGlow)
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
                UNITY_FOG_COORDS(5)
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
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float _ParallaxYSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ParallaxYSpeed );
                float4 node_7175 = _Time;
                float _ParallaxXSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ParallaxXSpeed );
                float4 node_3557 = _Time;
                float _Depth_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Depth );
                float _NormalYSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalYSpeed );
                float4 node_6434 = _Time;
                float _NormalXSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalXSpeed );
                float4 node_8733 = _Time;
                float2 node_7641 = ((i.uv0+(_NormalXSpeed_var*node_8733.g)*float2(1,0))+(_NormalYSpeed_var*node_6434.g)*float2(0,1));
                float3 _ParallaxNormal_var = UnpackNormal(tex2D(_ParallaxNormal,TRANSFORM_TEX(node_7641, _ParallaxNormal)));
                float2 node_1255 = (_ParallaxNormal_var.r*(_Depth_var - 0.5)*mul(tangentTransform, viewDirection).xy + ((i.uv0+(_ParallaxXSpeed_var*node_3557.g)*float2(1,0))+(_ParallaxYSpeed_var*node_7175.g)*float2(0,1)));
                float4 _ParallaxTexture_var = tex2D(_ParallaxTexture,TRANSFORM_TEX(node_1255.rg, _ParallaxTexture));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float _Glow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Glow );
                float _FresnelAmount_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelAmount );
                float4 _FresnelTexture_var = tex2D(_FresnelTexture,TRANSFORM_TEX(i.uv0, _FresnelTexture));
                float4 _FresnelColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelColor );
                float _FresnelGlow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelGlow );
                float3 emissive = (((_ParallaxTexture_var.rgb*_Color_var.rgb)*_Glow_var)+(((pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelAmount_var)*_FresnelTexture_var.rgb)*_FresnelColor_var.rgb)*_FresnelGlow_var));
                float3 finalColor = emissive;
                float node_5411 = (_ParallaxTexture_var.a*_ParallaxTexture_var.r*_Glow_var);
                float _CustomColors_var = lerp( node_5411, node_5411, UNITY_ACCESS_INSTANCED_PROP( Props, _CustomColors ) );
                fixed4 finalRGBA = fixed4(finalColor,_CustomColors_var);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
