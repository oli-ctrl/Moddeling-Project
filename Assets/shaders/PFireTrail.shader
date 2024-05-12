// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:1,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33408,y:32811,varname:node_3138,prsc:2|emission-6829-OUT,alpha-5973-OUT;n:type:ShaderForge.SFN_Tex2d,id:961,x:31577,y:32654,ptovrint:False,ptlb:Texture1,ptin:_Texture1,varname:node_961,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-5586-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:993,x:31471,y:32962,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_993,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6652-UVOUT;n:type:ShaderForge.SFN_Add,id:9823,x:32192,y:32456,varname:node_9823,prsc:2|A-6791-OUT,B-8432-OUT;n:type:ShaderForge.SFN_Multiply,id:6791,x:31863,y:32486,varname:node_6791,prsc:2|A-961-G,B-1432-OUT;n:type:ShaderForge.SFN_Multiply,id:8432,x:31802,y:32858,varname:node_8432,prsc:2|A-993-RGB,B-4822-OUT;n:type:ShaderForge.SFN_Tex2d,id:440,x:33180,y:32369,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:node_440,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:True,tagnrm:False,ntxv:0,isnm:False|UVIN-2284-OUT;n:type:ShaderForge.SFN_Panner,id:5586,x:31244,y:32893,varname:node_5586,prsc:2,spu:1,spv:1|UVIN-8311-UVOUT,DIST-2239-OUT;n:type:ShaderForge.SFN_Time,id:1554,x:30655,y:33040,varname:node_1554,prsc:2;n:type:ShaderForge.SFN_Color,id:1608,x:31587,y:33010,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1608,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:4835,x:32793,y:32990,varname:node_4835,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-440-RGB;n:type:ShaderForge.SFN_ValueProperty,id:2867,x:33137,y:33097,ptovrint:False,ptlb:Glow,ptin:_Glow,varname:node_2867,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ComponentMask,id:2284,x:32892,y:32176,varname:node_2284,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3546-OUT;n:type:ShaderForge.SFN_Add,id:3546,x:32614,y:32174,varname:node_3546,prsc:2|A-7270-UVOUT,B-9823-OUT;n:type:ShaderForge.SFN_Panner,id:7270,x:32187,y:32186,varname:node_7270,prsc:2,spu:1,spv:1|UVIN-6332-UVOUT,DIST-6200-OUT;n:type:ShaderForge.SFN_TexCoord,id:6332,x:31911,y:32161,varname:node_6332,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Divide,id:6200,x:32011,y:32324,varname:node_6200,prsc:2|A-422-XYZ,B-3122-OUT;n:type:ShaderForge.SFN_Vector1,id:3122,x:31863,y:32429,varname:node_3122,prsc:2,v1:3;n:type:ShaderForge.SFN_Multiply,id:2239,x:30951,y:32960,varname:node_2239,prsc:2|A-9122-XYZ,B-1554-T;n:type:ShaderForge.SFN_TexCoord,id:2369,x:32167,y:32740,varname:node_2369,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:5066,x:32588,y:32687,varname:node_5066,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-7189-UVOUT;n:type:ShaderForge.SFN_Hue,id:7947,x:32440,y:32760,varname:node_7947,prsc:2|IN-9617-OUT;n:type:ShaderForge.SFN_Multiply,id:8833,x:32307,y:32609,varname:node_8833,prsc:2|A-299-OUT,B-2369-UVOUT;n:type:ShaderForge.SFN_ValueProperty,id:299,x:32177,y:32609,ptovrint:False,ptlb:RgbScale,ptin:_RgbScale,varname:node_299,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_SwitchProperty,id:9136,x:32743,y:32859,ptovrint:False,ptlb:Rgb,ptin:_Rgb,varname:node_9136,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-340-OUT,B-7947-OUT;n:type:ShaderForge.SFN_Multiply,id:6829,x:32890,y:32783,varname:node_6829,prsc:2|A-5867-OUT,B-9136-OUT,C-440-A;n:type:ShaderForge.SFN_ValueProperty,id:5867,x:32929,y:32621,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:node_5867,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Panner,id:7189,x:32536,y:32485,varname:node_7189,prsc:2,spu:1,spv:1|UVIN-8833-OUT,DIST-3851-OUT;n:type:ShaderForge.SFN_Time,id:6654,x:32343,y:32456,varname:node_6654,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3851,x:32502,y:32342,varname:node_3851,prsc:2|A-6654-T,B-1226-OUT;n:type:ShaderForge.SFN_ValueProperty,id:1226,x:32187,y:32351,ptovrint:False,ptlb:RGBspeed,ptin:_RGBspeed,varname:node_1226,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_SwitchProperty,id:9617,x:32718,y:32587,ptovrint:False,ptlb:Rotate Rainbow,ptin:_RotateRainbow,varname:node_9617,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8445-OUT,B-5066-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8445,x:32767,y:32444,varname:node_8445,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-7189-UVOUT;n:type:ShaderForge.SFN_Multiply,id:5973,x:33260,y:32991,varname:node_5973,prsc:2|A-4835-OUT,B-2867-OUT;n:type:ShaderForge.SFN_TexCoord,id:8311,x:30701,y:32698,varname:node_8311,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector4Property,id:9122,x:30583,y:32875,ptovrint:False,ptlb:Texture 1 Speed,ptin:_Texture1Speed,varname:node_9122,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:4380,x:31001,y:32517,varname:node_4380,prsc:2|A-6637-XYZ,B-9521-T;n:type:ShaderForge.SFN_Time,id:9521,x:30881,y:32635,varname:node_9521,prsc:2;n:type:ShaderForge.SFN_Vector4Property,id:6637,x:30622,y:32551,ptovrint:False,ptlb:Texture 2 Speed_copy,ptin:_Texture2Speed_copy,varname:_TextureSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_TexCoord,id:4983,x:30740,y:32374,varname:node_4983,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:6652,x:31239,y:32542,varname:node_6652,prsc:2,spu:1,spv:1|UVIN-4983-UVOUT,DIST-4380-OUT;n:type:ShaderForge.SFN_Slider,id:2580,x:31175,y:32753,ptovrint:False,ptlb:Texture2 intensity,ptin:_Texture2intensity,varname:node_2580,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:1921,x:31375,y:32542,ptovrint:False,ptlb:Texture1 intensity,ptin:_Texture1intensity,varname:_Texture2intensity_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Divide,id:1432,x:31715,y:32467,varname:node_1432,prsc:2|A-1921-OUT,B-526-OUT;n:type:ShaderForge.SFN_Vector1,id:526,x:31483,y:32443,varname:node_526,prsc:2,v1:2;n:type:ShaderForge.SFN_Divide,id:4822,x:31649,y:32784,varname:node_4822,prsc:2|A-2580-OUT,B-2498-OUT;n:type:ShaderForge.SFN_Vector1,id:2498,x:31489,y:32804,varname:node_2498,prsc:2,v1:2;n:type:ShaderForge.SFN_VertexColor,id:2074,x:31982,y:32941,varname:node_2074,prsc:2;n:type:ShaderForge.SFN_SwitchProperty,id:340,x:32198,y:32920,ptovrint:False,ptlb:Use Vertex colors,ptin:_UseVertexcolors,varname:node_340,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-1608-RGB,B-2074-RGB;n:type:ShaderForge.SFN_Vector4Property,id:422,x:31550,y:32273,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_422,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;proporder:1608-2867-5867-9136-9617-299-1226-440-961-9122-1921-993-6637-2580-340-422;pass:END;sub:END;*/

Shader "Just_Ashtin_/PUBLIC_FireTrail" {
    Properties {
        [Header(Color  RGB  Glow  Settings)]
        [Header(Set color to white before exporting)]
        _Color ("Color", Color) = (1,1,1,1)
        [MaterialToggle] _UseVertexcolors ("Use Vertex colors", Float ) = 1
        [MaterialToggle] _CustomColors("Custom Colors", Float) = 0
        _Glow ("Glow", Float ) = 0
        _ColorIntensity ("ColorIntensity", Float ) = 0
        [MaterialToggle] _Rgb ("Rgb", Float ) = 1
        [MaterialToggle] _RotateRainbow ("Rotate Rainbow", Float ) = 0
        _RgbScale ("RgbScale", Float ) = 1
        _RGBspeed ("RGBspeed", Float ) = 0
        [Header(Main Texture Settings)]
        _MainTexture ("MainTexture", 2D) = "white" {}
         _Offset ("Offset", Vector) = (0,0,0,0)
         [Header(Distortion 1)]
        _Texture1 ("Texture1", 2D) = "white" {}
        _Texture1Speed ("Texture 1 Speed", Vector) = (0,0,0,0)
        _Texture1intensity ("Texture1 intensity", Range(-1, 1)) = 0
        [Header(Distortion 2)]
        _Texture ("Texture2", 2D) = "white" {}
        _Texture2Speed_copy ("Texture 2 Speed", Vector) = (0,0,0,0)
        _Texture2intensity ("Texture2 Intensity", Range(-1, 1)) = 0
      
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "PreviewType"="Plane"
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
            #pragma multi_compile_instancing
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _Texture1; uniform float4 _Texture1_ST;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform sampler2D _MainTexture;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Glow)
                UNITY_DEFINE_INSTANCED_PROP( float, _RgbScale)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Rgb)
                UNITY_DEFINE_INSTANCED_PROP( float, _ColorIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _RGBspeed)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _RotateRainbow)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Texture1Speed)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Texture2Speed_copy)
                UNITY_DEFINE_INSTANCED_PROP( float, _Texture2intensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _Texture1intensity)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _UseVertexcolors)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Offset)
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float _ColorIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ColorIntensity );
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float3 _UseVertexcolors_var = lerp( _Color_var.rgb, i.vertexColor.rgb, UNITY_ACCESS_INSTANCED_PROP( Props, _UseVertexcolors ) );
                float4 node_6654 = _Time;
                float _RGBspeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RGBspeed );
                float _RgbScale_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RgbScale );
                float2 node_7189 = ((_RgbScale_var*i.uv0)+(node_6654.g*_RGBspeed_var)*float2(1,1));
                float _RotateRainbow_var = lerp( node_7189.g, node_7189.r, UNITY_ACCESS_INSTANCED_PROP( Props, _RotateRainbow ) );
                float3 _Rgb_var = lerp( _UseVertexcolors_var, saturate(3.0*abs(1.0-2.0*frac(_RotateRainbow_var+float3(0.0,-1.0/3.0,1.0/3.0)))-1), UNITY_ACCESS_INSTANCED_PROP( Props, _Rgb ) );
                float4 _Offset_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Offset );
                float4 _Texture1Speed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Texture1Speed );
                float4 node_1554 = _Time;
                float2 node_5586 = (i.uv0+(_Texture1Speed_var.rgb*node_1554.g)*float2(1,1));
                float4 _Texture1_var = tex2D(_Texture1,TRANSFORM_TEX(node_5586, _Texture1));
                float _Texture1intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Texture1intensity );
                float4 _Texture2Speed_copy_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Texture2Speed_copy );
                float4 node_9521 = _Time;
                float2 node_6652 = (i.uv0+(_Texture2Speed_copy_var.rgb*node_9521.g)*float2(1,1));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_6652, _Texture));
                float _Texture2intensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Texture2intensity );
                float2 node_2284 = (float3((i.uv0+(_Offset_var.rgb/3.0)*float2(1,1)),0.0)+((_Texture1_var.g*(_Texture1intensity_var/2.0))+(_Texture_var.rgb*(_Texture2intensity_var/2.0)))).rg;
                float4 _MainTexture_var = tex2D(_MainTexture,node_2284);
                float3 emissive = (_ColorIntensity_var*_Rgb_var*_MainTexture_var.a);
                float3 finalColor = emissive;
                float node_4835 = _MainTexture_var.rgb.r;
                float _Glow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Glow );
                return fixed4(finalColor,(node_4835*_Glow_var));
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
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
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
