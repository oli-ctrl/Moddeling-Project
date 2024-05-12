// Made with Amplify Shader Editor v1.9.1.7
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "BeatSaber/Alyng/ADVANCED Unlit"
{
	Properties 
  { 
      [HideInInspector] shader_is_using_thry_editor("", Float)=0
		[HideInInspector]m_start_MainSettings("Main Settings", Float) = 0
		_Color("Color", Color) = (1,1,1,1)
		[Toggle]_CustomColors("Custom Colors", Float) = 0
		[StylizedBigTexture]_StylizedTexturePreview("Texture", 2D) = "white" {}
		_Glow("Glow", Range( 0 , 1)) = 0
		[HideInInspector]m_end_MainSettings("Main Settings", Float) = 0
		[HideInInspector]m_start_Gradients("Gradients", Float) = 0
		[Toggle]_Gradient("Gradient", Float) = 0
		[Gradient]_GradientPreview("Gradient Preview", 2D) = "white" {}
		[Toggle]_GradientRotate("Gradient Rotate", Float) = 0
		_GradientSpeed("Gradient Speed", Float) = 1
		_GradientSize("Gradient Size", Float) = 1
		[HideInInspector]m_end_Gradients("Gradients", Float) = 0
		[HideInInspector]m_start_Fresnel("Fresnel", Float) = 0
		[Toggle(_FRESNEL_ON)] _Fresnel("Fresnel", Float) = 0
		_FresnelBias("Fresnel Bias", Float) = 1
		_FresnelPower("Fresnel Power", Float) = 1
		[ASEEnd]_FresnelScale("Fresnel Scale", Float) = 1
		[HideInInspector]m_end_Fresnel("Fresnel", Float) = 0

	}
	
	SubShader
	{
		Tags { "RenderType"="Opaque" }
	LOD 100

		Cull Off
		CGINCLUDE
		#pragma target 3.0 
		ENDCG
		
		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			AlphaToMask Off
			Cull Back
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
			#define UNITY_PASS_FORWARDBASE
			#endif
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _FRESNEL_ON

			uniform float _Gradient;
			uniform float _CustomColors;
			uniform float4 _Color;
			uniform sampler2D _GradientPreview;
			uniform float _GradientSpeed;
			uniform float _GradientRotate;
			uniform float _GradientSize;
			uniform sampler2D _StylizedTexturePreview;
			uniform float _FresnelBias;
			uniform float _FresnelScale;
			uniform float _FresnelPower;
			uniform float _Glow;


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float mulTime393 = _Time.y * _GradientSpeed;
				float2 temp_cast_0 = (_GradientSize).xx;
				float2 texCoord392 = i.ase_texcoord1.xy * temp_cast_0 + float2( 0,0 );
				float2 temp_cast_1 = (( mulTime393 + (( _GradientRotate )?( texCoord392.y ):( texCoord392.x )) )).xx;
				float2 texCoord348 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_cast_2 = (( mulTime393 + (( _GradientRotate )?( texCoord392.y ):( texCoord392.x )) )).xx;
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float fresnelNdotV347 = dot( ase_worldNormal, ase_worldViewDir );
				float fresnelNode347 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV347, _FresnelPower ) );
				float4 temp_cast_3 = (fresnelNode347).xxxx;
				#ifdef _FRESNEL_ON
				float4 staticSwitch367 = temp_cast_3;
				#else
				float4 staticSwitch367 = (( _Gradient )?( tex2D( _GradientPreview, temp_cast_2 ) ):( (( _CustomColors )?( _Color ):( _Color )) ));
				#endif
				
				
				outColor = ( (( _Gradient )?( tex2D( _GradientPreview, temp_cast_1 ) ):( (( _CustomColors )?( _Color ):( _Color )) )) * tex2D( _StylizedTexturePreview, texCoord348 ) * staticSwitch367 ).rgb;
				outAlpha = _Glow;
				clip(outAlpha);
				return float4(outColor,outAlpha);
			}
			ENDCG
		}
		
		
		Pass
		{
			Name "ForwardAdd"
			Tags { "LightMode"="ForwardAdd" }
			ZWrite Off
			Blend One One
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdadd_fullshadows
			#ifndef UNITY_PASS_FORWARDADD
			#define UNITY_PASS_FORWARDADD
			#endif
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _FRESNEL_ON

			uniform float _Gradient;
			uniform float _CustomColors;
			uniform float4 _Color;
			uniform sampler2D _GradientPreview;
			uniform float _GradientSpeed;
			uniform float _GradientRotate;
			uniform float _GradientSize;
			uniform sampler2D _StylizedTexturePreview;
			uniform float _FresnelBias;
			uniform float _FresnelScale;
			uniform float _FresnelPower;
			uniform float _Glow;


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float mulTime393 = _Time.y * _GradientSpeed;
				float2 temp_cast_0 = (_GradientSize).xx;
				float2 texCoord392 = i.ase_texcoord1.xy * temp_cast_0 + float2( 0,0 );
				float2 temp_cast_1 = (( mulTime393 + (( _GradientRotate )?( texCoord392.y ):( texCoord392.x )) )).xx;
				float2 texCoord348 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_cast_2 = (( mulTime393 + (( _GradientRotate )?( texCoord392.y ):( texCoord392.x )) )).xx;
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float fresnelNdotV347 = dot( ase_worldNormal, ase_worldViewDir );
				float fresnelNode347 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV347, _FresnelPower ) );
				float4 temp_cast_3 = (fresnelNode347).xxxx;
				#ifdef _FRESNEL_ON
				float4 staticSwitch367 = temp_cast_3;
				#else
				float4 staticSwitch367 = (( _Gradient )?( tex2D( _GradientPreview, temp_cast_2 ) ):( (( _CustomColors )?( _Color ):( _Color )) ));
				#endif
				
				
				outColor = ( (( _Gradient )?( tex2D( _GradientPreview, temp_cast_1 ) ):( (( _CustomColors )?( _Color ):( _Color )) )) * tex2D( _StylizedTexturePreview, texCoord348 ) * staticSwitch367 ).rgb;
				outAlpha = _Glow;
				clip(outAlpha);
				return float4(outColor,outAlpha);
			}
			ENDCG
		}

		
		Pass
		{
			Name "Deferred"
			Tags { "LightMode"="Deferred" }

			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend Off
			AlphaToMask Off
			Cull Back
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Offset 0 , 0
			
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_prepassfinal
			#ifndef UNITY_PASS_DEFERRED
			#define UNITY_PASS_DEFERRED
			#endif
			#include "UnityCG.cginc"
			
			

			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				
			};
			
			struct v2f
			{
				float4 pos : SV_POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				
			};
			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				
				
				v.vertex.xyz +=  float3(0,0,0) ;
				o.pos = UnityObjectToClipPos(v.vertex);
				#if ASE_SHADOWS
					#if UNITY_VERSION >= 560
						UNITY_TRANSFER_SHADOW( o, v.texcoord );
					#else
						TRANSFER_SHADOW( o );
					#endif
				#endif
				return o;
			}
			
			void frag (v2f i , out half4 outGBuffer0 : SV_Target0, out half4 outGBuffer1 : SV_Target1, out half4 outGBuffer2 : SV_Target2, out half4 outGBuffer3 : SV_Target3)
			{
				
				
				outGBuffer0 = 0;
				outGBuffer1 = 0;
				outGBuffer2 = 0;
				outGBuffer3 = 0;
			}
			ENDCG
		}
		
		
		Pass
		{
			
			Name "ShadowCaster"
			Tags { "LightMode"="ShadowCaster" }
			ZWrite On
			ZTest LEqual
			CGPROGRAM
			
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#ifndef UNITY_PASS_SHADOWCASTER
			#define UNITY_PASS_SHADOWCASTER
			#endif
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _FRESNEL_ON

			uniform float _Gradient;
			uniform float _CustomColors;
			uniform float4 _Color;
			uniform sampler2D _GradientPreview;
			uniform float _GradientSpeed;
			uniform float _GradientRotate;
			uniform float _GradientSize;
			uniform sampler2D _StylizedTexturePreview;
			uniform float _FresnelBias;
			uniform float _FresnelScale;
			uniform float _FresnelPower;
			uniform float _Glow;


			struct appdata
			{
				float4 vertex : POSITION;
				float3 normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
			};
			
			struct v2f
			{
				V2F_SHADOW_CASTER;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
			};

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				
				float3 ase_worldPos = mul(unity_ObjectToWorld, float4( (v.vertex).xyz, 1 )).xyz;
				o.ase_texcoord2.xyz = ase_worldPos;
				float3 ase_worldNormal = UnityObjectToWorldNormal(v.normal);
				o.ase_texcoord3.xyz = ase_worldNormal;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				o.ase_texcoord3.w = 0;
				
				v.vertex.xyz +=  float3(0,0,0) ;
				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}
			
			float4 frag (v2f i ) : SV_Target
			{
				float3 outColor;
				float outAlpha;

				float mulTime393 = _Time.y * _GradientSpeed;
				float2 temp_cast_0 = (_GradientSize).xx;
				float2 texCoord392 = i.ase_texcoord1.xy * temp_cast_0 + float2( 0,0 );
				float2 temp_cast_1 = (( mulTime393 + (( _GradientRotate )?( texCoord392.y ):( texCoord392.x )) )).xx;
				float2 texCoord348 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_cast_2 = (( mulTime393 + (( _GradientRotate )?( texCoord392.y ):( texCoord392.x )) )).xx;
				float3 ase_worldPos = i.ase_texcoord2.xyz;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(ase_worldPos);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord3.xyz;
				float fresnelNdotV347 = dot( ase_worldNormal, ase_worldViewDir );
				float fresnelNode347 = ( _FresnelBias + _FresnelScale * pow( 1.0 - fresnelNdotV347, _FresnelPower ) );
				float4 temp_cast_3 = (fresnelNode347).xxxx;
				#ifdef _FRESNEL_ON
				float4 staticSwitch367 = temp_cast_3;
				#else
				float4 staticSwitch367 = (( _Gradient )?( tex2D( _GradientPreview, temp_cast_2 ) ):( (( _CustomColors )?( _Color ):( _Color )) ));
				#endif
				
				
				outColor = ( (( _Gradient )?( tex2D( _GradientPreview, temp_cast_1 ) ):( (( _CustomColors )?( _Color ):( _Color )) )) * tex2D( _StylizedTexturePreview, texCoord348 ) * staticSwitch367 ).rgb;
				outAlpha = _Glow;
				clip(outAlpha);
				SHADOW_CASTER_FRAGMENT(i)
			}
			ENDCG
		}
		
	}
	CustomEditor "Thry.ShaderEditor"
	
	Fallback Off
}
/*ASEBEGIN
Version=19107
Node;AmplifyShaderEditor.CommentaryNode;382;-690.4858,-1007.611;Inherit;False;330;259;Requires Thry Material Editor;1;378;;1,1,1,1;0;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;234;643.2352,-184.3145;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardAdd;0;1;ForwardAdd;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=ForwardAdd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;235;643.2352,-123.3145;Float;False;False;-1;2;ASEMaterialInspector;100;7;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;Deferred;0;2;Deferred;4;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=Deferred;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;236;643.2352,-294.3145;Float;False;False;-1;2;ASEMaterialInspector;100;1;New Amplify Shader;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ShadowCaster;0;3;ShadowCaster;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=ShadowCaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;358;226.5902,-414.962;Inherit;True;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;341;-834.2949,96.69031;Inherit;False;Property;_FresnelPower;Fresnel Power;17;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;343;-822.1884,16.55408;Inherit;False;Property;_FresnelScale;Fresnel Scale;18;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;340;-809.6928,-58.11086;Inherit;False;Property;_FresnelBias;Fresnel Bias;16;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FresnelNode;347;-589.6681,-41.12087;Inherit;True;Standard;WorldNormal;ViewDir;False;False;5;0;FLOAT3;0,0,1;False;4;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;1;False;3;FLOAT;5;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;367;-131.7326,-177.2348;Inherit;True;Property;_Fresnel;Fresnel;15;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;392;-1442.487,-863.6115;Inherit;True;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleTimeNode;393;-1186.487,-1071.611;Inherit;True;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;394;-914.4863,-959.6115;Inherit;True;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;378;-658.4858,-959.6115;Inherit;True;Property;_GradientPreview;Gradient Preview;9;0;Create;True;0;0;0;False;1;Gradient;False;-1;9b5730783131674408aaec278984df5a;9b5730783131674408aaec278984df5a;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;390;-216.661,-731.1754;Inherit;False;Property;_Gradient;Gradient;8;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;233;643.2352,-294.3145;Float;False;True;-1;2;Thry.ShaderEditor;100;7;BeatSaber/Alyng/ADVANCED Unlit;e1de45c0d41f68c41b2cc20c8b9c05ef;True;ForwardBase;0;0;ForwardBase;3;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;True;True;0;False;;0;False;;True;1;LightMode=ForwardBase;True;2;False;0;;0;0;Standard;0;0;4;True;True;True;True;False;;False;0
Node;AmplifyShaderEditor.ToggleSwitchNode;396;-1186.487,-847.6115;Inherit;False;Property;_GradientRotate;Gradient Rotate;10;0;Create;True;0;0;0;False;0;False;0;True;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;395;-1426.487,-1103.611;Inherit;True;Property;_GradientSpeed;Gradient Speed;11;0;Create;True;0;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;397;-1767.443,-821.2846;Inherit;False;Property;_GradientSize;Gradient Size;12;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;402;-2324.4,-1168.74;Inherit;False;Property;m_end_MainSettings;Main Settings;6;1;[HideInInspector];Fetch;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;405;-2168.629,-1176.741;Inherit;False;Property;m_end_Gradients;Gradients;13;1;[HideInInspector];Fetch;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;401;-2326.084,-1276.682;Inherit;False;Property;m_start_MainSettings;Main Settings;1;1;[HideInInspector];Fetch;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;407;-2167.471,-1262.712;Inherit;False;Property;m_start_Gradients;Gradients;7;1;[HideInInspector];Fetch;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;385;-2316.922,-1353.848;Inherit;False;Property;_shader_is_using_thry_editor;shader_is_using_thry_editor;0;1;[HideInInspector];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;413;-2035.471,-1178.712;Inherit;False;Property;m_end_Fresnel;Fresnel;19;1;[HideInInspector];Fetch;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;412;-2038.471,-1262.712;Inherit;False;Property;m_start_Fresnel;Fresnel;14;1;[HideInInspector];Fetch;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ToggleSwitchNode;419;-431.2822,-637.3787;Inherit;False;Property;_CustomColors;Custom Colors;3;0;Create;True;0;0;0;False;0;False;0;True;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ColorNode;417;-684.4487,-644.8174;Inherit;False;Property;_Color;Color;2;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;365;261.6648,-112.2384;Inherit;False;Property;_Glow;Glow;5;0;Create;True;0;0;0;True;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;348;-398.8876,294.6198;Inherit;False;0;-1;2;3;2;OBJECT;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;421;-122.0231,274.7801;Inherit;True;Property;_StylizedTexturePreview;Texture;4;0;Create;False;0;0;0;True;1;StylizedBigTexture;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
WireConnection;358;0;390;0
WireConnection;358;1;421;0
WireConnection;358;2;367;0
WireConnection;347;1;340;0
WireConnection;347;2;343;0
WireConnection;347;3;341;0
WireConnection;367;1;390;0
WireConnection;367;0;347;0
WireConnection;392;0;397;0
WireConnection;393;0;395;0
WireConnection;394;0;393;0
WireConnection;394;1;396;0
WireConnection;378;1;394;0
WireConnection;390;0;419;0
WireConnection;390;1;378;0
WireConnection;233;0;358;0
WireConnection;233;1;365;0
WireConnection;396;0;392;1
WireConnection;396;1;392;2
WireConnection;419;0;417;0
WireConnection;419;1;417;0
WireConnection;421;1;348;0
ASEEND*/
//CHKSM=668E6A02526426B7E3AE272020EAC7A8697F0CBB