// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32772,y:32698,varname:node_3138,prsc:2|emission-6631-OUT,custl-9261-OUT;n:type:ShaderForge.SFN_Add,id:6247,x:32097,y:33279,varname:node_6247,prsc:2|A-2466-OUT,B-6985-UVOUT;n:type:ShaderForge.SFN_Time,id:3081,x:31694,y:33289,varname:node_3081,prsc:2;n:type:ShaderForge.SFN_Append,id:8850,x:31918,y:33108,varname:node_8850,prsc:2|A-8320-X,B-8320-Y;n:type:ShaderForge.SFN_Multiply,id:6631,x:32461,y:32861,varname:node_6631,prsc:2|A-9958-OUT,B-4094-RGB,C-9014-RGB,D-6038-OUT;n:type:ShaderForge.SFN_Multiply,id:2466,x:31878,y:33279,varname:node_2466,prsc:2|A-8850-OUT,B-3081-T;n:type:ShaderForge.SFN_Tex2d,id:4094,x:32271,y:33279,ptovrint:False,ptlb:ScreenSpace Texture,ptin:_ScreenSpaceTexture,varname:node_4094,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6247-OUT;n:type:ShaderForge.SFN_Vector4Property,id:8320,x:31678,y:33085,ptovrint:False,ptlb:ScreenSpace Scroll,ptin:_ScreenSpaceScroll,varname:node_8320,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_ScreenPos,id:6985,x:31972,y:33428,varname:node_6985,prsc:2,sctp:0;n:type:ShaderForge.SFN_ValueProperty,id:9958,x:32246,y:32861,ptovrint:False,ptlb:Glow,ptin:_Glow,varname:node_9958,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:9014,x:32199,y:32949,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_9014,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_SwitchProperty,id:6038,x:32612,y:33266,ptovrint:False,ptlb:CustomColors,ptin:_CustomColors,varname:node_6038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2100-OUT,B-2100-OUT;n:type:ShaderForge.SFN_Vector1,id:2100,x:32414,y:33266,varname:node_2100,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:9261,x:32540,y:32993,varname:node_9261,prsc:2|A-6038-OUT,B-4156-OUT,C-6378-R,D-922-OUT,E-3783-RGB;n:type:ShaderForge.SFN_Fresnel,id:4156,x:32323,y:33097,varname:node_4156,prsc:2|EXP-4704-OUT;n:type:ShaderForge.SFN_Add,id:9637,x:32042,y:32779,varname:node_9637,prsc:2|A-5217-OUT,B-1630-UVOUT;n:type:ShaderForge.SFN_Time,id:4724,x:31639,y:32789,varname:node_4724,prsc:2;n:type:ShaderForge.SFN_Append,id:6040,x:31863,y:32608,varname:node_6040,prsc:2|A-4404-X,B-4404-Y;n:type:ShaderForge.SFN_Multiply,id:5217,x:31823,y:32779,varname:node_5217,prsc:2|A-6040-OUT,B-4724-T;n:type:ShaderForge.SFN_Vector4Property,id:4404,x:31623,y:32585,ptovrint:False,ptlb:Fresnel Scroll,ptin:_FresnelScroll,varname:_ScreenSpaceScroll_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Tex2d,id:6378,x:32209,y:32633,ptovrint:False,ptlb:Fresnel Distortion Texture,ptin:_FresnelDistortionTexture,varname:node_6378,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9637-OUT;n:type:ShaderForge.SFN_TexCoord,id:1630,x:31873,y:32915,varname:node_1630,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:4704,x:32042,y:33044,ptovrint:False,ptlb:Fresnel Intensity,ptin:_FresnelIntensity,varname:node_4704,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:922,x:32126,y:33131,ptovrint:False,ptlb:Fresnel Glow,ptin:_FresnelGlow,varname:node_922,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Color,id:3783,x:32447,y:33437,ptovrint:False,ptlb:Fresnel Color,ptin:_FresnelColor,varname:node_3783,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:6038-9014-9958-4094-8320-3783-922-4704-6378-4404;pass:END;sub:END;*/

Shader "Shader Forge/screenspace" {
    Properties {
        [MaterialToggle] _CustomColors ("CustomColors", Float ) = 1
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Glow ("Glow", Float ) = 0
        _ScreenSpaceTexture ("ScreenSpace Texture", 2D) = "white" {}
        _ScreenSpaceScroll ("ScreenSpace Scroll", Vector) = (0,0,0,0)
        _FresnelColor ("Fresnel Color", Color) = (0.5,0.5,0.5,1)
        _FresnelGlow ("Fresnel Glow", Float ) = 0
        _FresnelIntensity ("Fresnel Intensity", Float ) = 0
        _FresnelDistortionTexture ("Fresnel Distortion Texture", 2D) = "white" {}
        _FresnelScroll ("Fresnel Scroll", Vector) = (0,0,0,0)
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
            uniform sampler2D _ScreenSpaceTexture; uniform float4 _ScreenSpaceTexture_ST;
            uniform sampler2D _FresnelDistortionTexture; uniform float4 _FresnelDistortionTexture_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _ScreenSpaceScroll)
                UNITY_DEFINE_INSTANCED_PROP( float, _Glow)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _CustomColors)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelScroll)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelIntensity)
                UNITY_DEFINE_INSTANCED_PROP( float, _FresnelGlow)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelColor)
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
                float _Glow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Glow );
                float4 _ScreenSpaceScroll_var = UNITY_ACCESS_INSTANCED_PROP( Props, _ScreenSpaceScroll );
                float4 node_3081 = _Time;
                float2 node_6247 = ((float2(_ScreenSpaceScroll_var.r,_ScreenSpaceScroll_var.g)*node_3081.g)+(sceneUVs * 2 - 1).rg);
                float4 _ScreenSpaceTexture_var = tex2D(_ScreenSpaceTexture,TRANSFORM_TEX(node_6247, _ScreenSpaceTexture));
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float node_2100 = 1.0;
                float _CustomColors_var = lerp( node_2100, node_2100, UNITY_ACCESS_INSTANCED_PROP( Props, _CustomColors ) );
                float3 emissive = (_Glow_var*_ScreenSpaceTexture_var.rgb*_Color_var.rgb*_CustomColors_var);
                float _FresnelIntensity_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelIntensity );
                float4 _FresnelScroll_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelScroll );
                float4 node_4724 = _Time;
                float2 node_9637 = ((float2(_FresnelScroll_var.r,_FresnelScroll_var.g)*node_4724.g)+i.uv0);
                float4 _FresnelDistortionTexture_var = tex2D(_FresnelDistortionTexture,TRANSFORM_TEX(node_9637, _FresnelDistortionTexture));
                float _FresnelGlow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelGlow );
                float4 _FresnelColor_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelColor );
                float3 finalColor = emissive + (_CustomColors_var*pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelIntensity_var)*_FresnelDistortionTexture_var.r*_FresnelGlow_var*_FresnelColor_var.rgb);
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
