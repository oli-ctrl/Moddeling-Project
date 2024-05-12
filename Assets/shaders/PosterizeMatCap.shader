// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1161,x:32758,y:32842,varname:node_1161,prsc:2|emission-2212-OUT;n:type:ShaderForge.SFN_ValueProperty,id:683,x:32529,y:32998,ptovrint:False,ptlb:Amount,ptin:_Amount,varname:node_683,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:5;n:type:ShaderForge.SFN_Tex2d,id:5991,x:32353,y:32838,ptovrint:False,ptlb:MatCap,ptin:_MatCap,varname:node_5991,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2059-OUT;n:type:ShaderForge.SFN_NormalVector,id:483,x:32186,y:33246,prsc:2,pt:False;n:type:ShaderForge.SFN_ComponentMask,id:2059,x:32370,y:33045,varname:node_2059,prsc:2,cc1:0,cc2:1,cc3:2,cc4:-1|IN-6328-OUT;n:type:ShaderForge.SFN_Transform,id:2280,x:32360,y:33246,varname:node_2280,prsc:2,tffrom:0,tfto:3|IN-483-OUT;n:type:ShaderForge.SFN_RemapRange,id:6328,x:32529,y:33246,varname:node_6328,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-2280-XYZ;n:type:ShaderForge.SFN_Posterize,id:2212,x:32581,y:32838,varname:node_2212,prsc:2|IN-5991-RGB,STPS-683-OUT;proporder:683-5991;pass:END;sub:END;*/

Shader "3DGE/Posterize MatCap" {
    Properties {
        _Amount ("Amount", Float ) = 5
        _MatCap ("MatCap", 2D) = "white" {}
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
            #pragma multi_compile_fog
            #pragma target 3.0
            uniform sampler2D _MatCap; uniform float4 _MatCap_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _Amount)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float3 normalDir : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 node_2059 = (mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb*0.5+0.5).rgb;
                float4 _MatCap_var = tex2D(_MatCap,TRANSFORM_TEX(node_2059, _MatCap));
                float _Amount_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Amount );
                float3 emissive = floor(_MatCap_var.rgb * _Amount_var) / (_Amount_var - 1);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
