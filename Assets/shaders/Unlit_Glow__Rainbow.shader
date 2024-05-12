// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33539,y:32562,varname:node_3138,prsc:2|emission-3112-OUT,alpha-1220-OUT;n:type:ShaderForge.SFN_TexCoord,id:4893,x:32331,y:32820,varname:node_4893,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4716,x:32625,y:32971,varname:node_4716,prsc:2,spu:1,spv:1|UVIN-1815-OUT,DIST-9317-OUT;n:type:ShaderForge.SFN_Time,id:3758,x:32236,y:33120,varname:node_3758,prsc:2;n:type:ShaderForge.SFN_Multiply,id:9317,x:32430,y:33086,varname:node_9317,prsc:2|A-3889-OUT,B-3758-T;n:type:ShaderForge.SFN_ComponentMask,id:9634,x:32778,y:32905,varname:node_9634,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-4716-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4435,x:32778,y:33038,varname:node_4435,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-4716-UVOUT;n:type:ShaderForge.SFN_SwitchProperty,id:4562,x:33064,y:33013,ptovrint:False,ptlb:Rotate,ptin:_Rotate,varname:_Rotate,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-4435-OUT,B-9634-OUT;n:type:ShaderForge.SFN_Hue,id:4890,x:33193,y:32803,varname:node_4890,prsc:2|IN-4562-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3889,x:32236,y:33065,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_3889,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_ValueProperty,id:1220,x:33267,y:33013,ptovrint:False,ptlb:Glow,ptin:_Glow,varname:node_1220,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:7891,x:32331,y:32764,ptovrint:False,ptlb:Size,ptin:_Size,varname:node_7891,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Multiply,id:1815,x:32522,y:32752,varname:node_1815,prsc:2|A-7891-OUT,B-4893-UVOUT;n:type:ShaderForge.SFN_SwitchProperty,id:3112,x:33355,y:32706,ptovrint:False,ptlb:Rainbow,ptin:_Rainbow,varname:node_3112,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8765-RGB,B-4890-OUT;n:type:ShaderForge.SFN_Color,id:8765,x:33125,y:32601,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_8765,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;proporder:8765-1220-3112-4562-7891-3889;pass:END;sub:END;*/

Shader "BeatSaber/Unlit Glow + Rainbow" {
    Properties {
        _Color ("Color", Color) = (1,0,0,1)
	[MaterialToggle] _CustomColors("Custom Colors", Float) = 0
	_MainTex ("Texture", 2D) = "white" {}
        _Glow ("Glow", Float ) = 1
	[Header(Rainbow Settings)]
        [MaterialToggle] _Rainbow ("Rainbow", Float ) = 1
        [MaterialToggle] _Rotate ("Rotate", Float ) = 0
        _Size ("Size", Float ) = 20
        _Speed ("Speed", Float ) = 20
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Rotate)
                UNITY_DEFINE_INSTANCED_PROP( float, _Speed)
                UNITY_DEFINE_INSTANCED_PROP( float, _Glow)
                UNITY_DEFINE_INSTANCED_PROP( float, _Size)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Rainbow)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
////// Lighting:
////// Emissive:
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float _Speed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Speed );
                float4 node_3758 = _Time;
                float _Size_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Size );
                float2 node_4716 = ((_Size_var*i.uv0)+(_Speed_var*node_3758.g)*float2(1,1));
                float _Rotate_var = lerp( node_4716.g, node_4716.r, UNITY_ACCESS_INSTANCED_PROP( Props, _Rotate ) );
                float3 _Rainbow_var = lerp( _Color_var.rgb, saturate(3.0*abs(1.0-2.0*frac(_Rotate_var+float3(0.0,-1.0/3.0,1.0/3.0)))-1), UNITY_ACCESS_INSTANCED_PROP( Props, _Rainbow ) );
                float3 emissive = _Rainbow_var;
                float3 finalColor = emissive;
                float _Glow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Glow );
                return fixed4(finalColor,_Glow_var);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
