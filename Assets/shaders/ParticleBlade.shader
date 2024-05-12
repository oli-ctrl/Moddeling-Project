// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33333,y:32620,varname:node_4795,prsc:2|emission-5923-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32235,y:32601,ptovrint:False,ptlb:texture,ptin:_texture,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b681cf4425afdd7448f5bc362035e411,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:2393,x:32495,y:32793,varname:node_2393,prsc:2|A-6074-RGB,B-2053-RGB,C-961-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:32235,y:32772,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:5185,x:31552,y:32668,varname:node_5185,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:6443,x:31339,y:32917,varname:node_6443,prsc:2;n:type:ShaderForge.SFN_Slider,id:8110,x:31260,y:32850,ptovrint:False,ptlb:inside texture speed,ptin:_insidetexturespeed,varname:node_8110,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Multiply,id:7356,x:31567,y:32917,varname:node_7356,prsc:2|A-8110-OUT,B-6443-T;n:type:ShaderForge.SFN_Tex2d,id:7999,x:32000,y:32689,ptovrint:False,ptlb:inside texture,ptin:_insidetexture,varname:node_7999,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9495-UVOUT;n:type:ShaderForge.SFN_Panner,id:9495,x:31785,y:32788,varname:node_9495,prsc:2,spu:1,spv:0|UVIN-5185-UVOUT,DIST-7356-OUT;n:type:ShaderForge.SFN_Color,id:9462,x:31876,y:32961,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_9462,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2735849,c2:0.2735849,c3:0.2735849,c4:1;n:type:ShaderForge.SFN_Add,id:9585,x:32095,y:32862,varname:node_9585,prsc:2|A-7999-RGB,B-9462-RGB;n:type:ShaderForge.SFN_Multiply,id:961,x:32403,y:33088,varname:node_961,prsc:2|A-6074-RGB,B-6982-RGB;n:type:ShaderForge.SFN_Color,id:6982,x:32235,y:32949,ptovrint:True,ptlb:inside color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:True,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:1699,x:32810,y:32885,varname:node_1699,prsc:2|A-2393-OUT,B-9585-OUT;n:type:ShaderForge.SFN_Multiply,id:5923,x:33059,y:32953,varname:node_5923,prsc:2|A-1699-OUT,B-1085-RGB,C-7125-OUT;n:type:ShaderForge.SFN_Tex2d,id:1085,x:32834,y:33082,ptovrint:False,ptlb:mask,ptin:_mask,varname:node_1085,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:7125,x:32701,y:33302,ptovrint:False,ptlb:emission strength,ptin:_emissionstrength,varname:node_7125,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;proporder:7125-7999-8110-6074-9462-6982-1085;pass:END;sub:END;*/

Shader "ThyWalrus/ParticleBlade" {
    Properties {
        _emissionstrength ("emission strength", Range(0, 5)) = 0
        _insidetexture ("inside texture", 2D) = "white" {}
        _insidetexturespeed ("inside texture speed", Range(0, 10)) = 10
        _texture ("texture", 2D) = "white" {}
        _Color ("Color", Color) = (1,1,1,1)
        [HideInInspector]_TintColor ("inside color", Color) = (1,1,1,1)
        _mask ("mask", 2D) = "white" {}
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
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _texture; uniform float4 _texture_ST;
            uniform sampler2D _insidetexture; uniform float4 _insidetexture_ST;
            uniform sampler2D _mask; uniform float4 _mask_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _insidetexturespeed)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float4, _TintColor)
                UNITY_DEFINE_INSTANCED_PROP( float, _emissionstrength)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
////// Lighting:
////// Emissive:
                float4 _texture_var = tex2D(_texture,TRANSFORM_TEX(i.uv0, _texture));
                float4 _TintColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TintColor );
                float _insidetexturespeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _insidetexturespeed );
                float4 node_6443 = _Time;
                float2 node_9495 = (i.uv0+(_insidetexturespeed_var*node_6443.g)*float2(1,0));
                float4 _insidetexture_var = tex2D(_insidetexture,TRANSFORM_TEX(node_9495, _insidetexture));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float4 _mask_var = tex2D(_mask,TRANSFORM_TEX(i.uv0, _mask));
                float _emissionstrength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _emissionstrength );
                float3 emissive = (((_texture_var.rgb*i.vertexColor.rgb*(_texture_var.rgb*_TintColor_var.rgb))+(_insidetexture_var.rgb+_Color_var.rgb))*_mask_var.rgb*_emissionstrength_var);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG_COLOR(i.fogCoord, finalRGBA, fixed4(0.5,0.5,0.5,1));
                return finalRGBA;
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
