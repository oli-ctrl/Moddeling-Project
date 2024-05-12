// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/

Shader "Oli/NormalMapMatcap" {
    Properties {
        _Matcap ("Matcap", 2D) = "bump" {}
        _NormaMap ("NormaMap", 2D) = "bump" {}
        _NormalOffset ("NormalOffset", Range(-10, 10)) = 1
        
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
            uniform sampler2D _Matcap; uniform float4 _Matcap_ST;
            uniform sampler2D _NormaMap; uniform float4 _NormaMap_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float, _NormalOffset)
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Emissive:
                float3 node_7269_nrm_base = (float3(-1,-1,1)*mul( UNITY_MATRIX_V, float4(viewDirection,0) ).xyz.rgb) + float3(0,0,1);
                float3 node_7269_nrm_detail = mul( UNITY_MATRIX_V, float4(normalDirection,0) ).xyz.rgb * float3(-1,-1,1);
                float3 node_7269_nrm_combined = node_7269_nrm_base*dot(node_7269_nrm_base, node_7269_nrm_detail)/node_7269_nrm_base.z - node_7269_nrm_detail;
                float3 node_7269 = node_7269_nrm_combined;
                float3 _NormaMap_var = UnpackNormal(tex2D(_NormaMap,TRANSFORM_TEX(i.uv0, _NormaMap)));
                float _NormalOffset_var = UNITY_ACCESS_INSTANCED_PROP( Props, _NormalOffset );
                float3 node_8436 = ((float3(node_7269.rg,0.0)+(_NormaMap_var.rgb*_NormalOffset_var))*0.5+0.5);
                float4 node_97 = tex2D(_Matcap,TRANSFORM_TEX(node_8436, _Matcap));
                float3 emissive = node_97.rgb;
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
