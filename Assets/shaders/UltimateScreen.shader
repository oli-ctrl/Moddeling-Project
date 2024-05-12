
Shader "Just_Ashtin_/ScreenSpaceUltimate"
{
	Properties
	{
		[Header(Color  Glow  Settings)]
		_Color0("Color 0", Color) = (1,1,1,1)
		[Toggle] _CustomColors("Custom Colors", Float) = 0
		_Glow("Glow", Float) = 0
		[Header(_)]
		_Sparkle("Sparkle", Float) = 0
		_Scale("Scale", Float) = 0
		_Bias("Bias", Float) = 0
		[Header(_)]
		[Header(RGB Settings)]
		[Header(NOTE Rgb type True means that the rgb will be a shift while False means a gradient)]
		[Toggle(_KEYWORD0_ON)] _Keyword0("Rgb", Float) = 0
		[Toggle(_KEYWORD1_ON)] _Keyword1("Rotate Rgb", Float) = 0
		[Toggle(_KEYWORD14_ON)] _Keyword14("Rgb Type", Float) = 0
		_RgbSpeed("RgbSpeed", Float) = 0.15
		
		_Float2("Rgb Size", int) = 0
	
		[Header(_)]
		[Header(Texture Settings)]
		[Header(Honestly just throw enough space textures at it until it looks good)]
		_BackgroundTexture("Background Texture", 2D) = "white" {}
		_BackgroundSpeed("Background Speed", Vector) = (0,0,0,0)
		_DistortionTexture("BackgroudDistortionTexture", 2D) = "white" {}
		_DisplacementIntensity("Displacement Intensity", Range( 0 , 1)) = 0
		_DisplaceSpeed("Displacement Speed", Vector) = (0,0,0,0)
		_TopTexture("TopTexture", 2D) = "white" {}
		_SparkleTexture("Sparkle Texture", 2D) = "white" {}
		[Header(_)]
		[Header(Fresnel Settings)]
		_FresnelTexture("Fresnel Texture", 2D) = "white" {}
		_FresnelSpeed("FresnelSpeed", Vector) = (0,0,0,0)
		_Power2("Power 2", Float) = 2.64
		_Scale2("Scale 2", Float) = 1.5
		_Float4("FresnelStrength", Float) = 0
	

	}
	
	SubShader
	{
		
		
		Tags { "RenderType"="Opaque" "Queue"="Geometry" }
	LOD 100

		CGINCLUDE
		#pragma target 3.0
		ENDCG
		Blend One Zero
		AlphaToMask Off
		Cull Back
		ColorMask RGBA
		ZWrite On
		ZTest LEqual
		Offset 0 , 0
		
		
		
		Pass
		{
			Name "Unlit"
			Tags { "LightMode"="ForwardBase" }
			CGPROGRAM

			

			#ifndef UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX
			#define UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input)
			#endif
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_instancing
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature_local _CUSTOMCOLORS_ON
			#pragma shader_feature_local _KEYWORD0_ON
			#pragma shader_feature_local _KEYWORD14_ON
			#pragma shader_feature_local _KEYWORD1_ON


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				float3 ase_normal : NORMAL;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 worldPos : TEXCOORD0;
				#endif
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			uniform sampler2D _FresnelTexture;
			uniform float4 _FresnelTexture_ST;
			uniform float3 _FresnelSpeed;
			uniform float _Float4;
			uniform float _Scale2;
			uniform float _Power2;
			uniform float _Bias;
			uniform float _Scale;
			uniform float _Sparkle;
			uniform sampler2D _TopTexture;
			uniform float4 _TopTexture_ST;
			uniform sampler2D _SparkleTexture;
			uniform sampler2D _BackgroundTexture;
			uniform float4 _BackgroundTexture_ST;
			uniform float3 _BackgroundSpeed;
			uniform sampler2D _DistortionTexture;
			uniform float3 _DisplaceSpeed;
			uniform float4 _DistortionTexture_ST;
			uniform float _DisplacementIntensity;
			uniform float _Glow;
			uniform float4 _Color0;
			uniform float _Float2;
			uniform float _RgbSpeed;
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord2.xyz = ase_worldNormal;
				float4 ase_clipPos = UnityObjectToClipPos(v.vertex);
				float4 screenPos = ComputeScreenPos(ase_clipPos);
				o.ase_texcoord3 = screenPos;
				
				o.ase_texcoord1.xy = v.ase_texcoord.xy;

				o.ase_texcoord1.zw = 0;
				o.ase_texcoord2.w = 0;
				float3 vertexValue = float3(0, 0, 0);
				#if ASE_ABSOLUTE_VERTEX_POS
				vertexValue = v.vertex.xyz;
				#endif
				vertexValue = vertexValue;
				#if ASE_ABSOLUTE_VERTEX_POS
				v.vertex.xyz = vertexValue;
				#else
				v.vertex.xyz += vertexValue;
				#endif
				o.vertex = UnityObjectToClipPos(v.vertex);

				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				o.worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				#endif
				return o;
			}
			
			fixed4 frag (v2f i ) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(i);
				UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(i);
				fixed4 finalColor;
				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 WorldPosition = i.worldPos;
				#endif
				float2 panner227 = ( 1.0 * _Time.y * _FresnelSpeed.xy + float2( 0,0 ));
				float2 texCoord229 = i.ase_texcoord1.xy * _FresnelTexture_ST.xy + panner227;
				float3 ase_worldViewDir = UnityWorldSpaceViewDir(WorldPosition);
				ase_worldViewDir = normalize(ase_worldViewDir);
				float3 ase_worldNormal = i.ase_texcoord2.xyz;
				float fresnelNdotV219 = dot( ase_worldNormal, ase_worldViewDir );
				float fresnelNode219 = ( 0.0 + _Scale2 * pow( 1.0 - fresnelNdotV219, _Power2 ) );
				float grayscale226 = Luminance(( ( tex2D( _FresnelTexture, texCoord229 ) * _Float4 ) * fresnelNode219 ).rgb);
				float fresnelNdotV143 = dot( ase_worldNormal, ase_worldViewDir );
				float fresnelNode143 = ( _Bias + _Scale * pow( 1.0 - fresnelNdotV143, ( 1.0 - _Sparkle ) ) );
				float2 texCoord242 = i.ase_texcoord1.xy * _TopTexture_ST.xy + float2( 0,0 );
				float4 screenPos = i.ase_texcoord3;
				float4 ase_screenPosNorm = screenPos / screenPos.w;
				ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
				float2 texCoord246 = i.ase_texcoord1.xy * _TopTexture_ST.xy + float2( 0,0 );
				float4 lerpResult192 = lerp( tex2D( _TopTexture, ( float4( texCoord242, 0.0 , 0.0 ) + (float4( -0.5,-0.5,0,0 ) + (ase_screenPosNorm - float4( 0,0,0,0 )) * (float4( 0.5,0.5,0,0 ) - float4( -0.5,-0.5,0,0 )) / (float4( 1,1,0,0 ) - float4( 0,0,0,0 ))) ).xy ) , tex2D( _SparkleTexture, ( float4( texCoord246, 0.0 , 0.0 ) + (float4( -0.5,-0.5,0,0 ) + (ase_screenPosNorm - float4( 0,0,0,0 )) * (float4( 0.5,0.5,0,0 ) - float4( -0.5,-0.5,0,0 )) / (float4( 1,1,0,0 ) - float4( 0,0,0,0 ))) ).xy ) , float4( 0,0,0,0.5019608 ));
				float grayscale179 = Luminance(lerpResult192.rgb);
				float2 texCoord247 = i.ase_texcoord1.xy * _BackgroundTexture_ST.xy + float2( 0,0 );
				float2 panner161 = ( 1.0 * _Time.y * float2( 0,0 ) + ( float4( texCoord247, 0.0 , 0.0 ) + (float4( -0.5,-0.5,0,0 ) + ((ase_screenPosNorm).xyzw - float4( 0,0,0,0 )) * (float4( 0.5,0.5,0,0 ) - float4( -0.5,-0.5,0,0 )) / (float4( 1,1,0,0 ) - float4( 0,0,0,0 ))) ).xy);
				float2 texCoord114 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord249 = i.ase_texcoord1.xy * _DistortionTexture_ST.xy + float2( 0,0 );
				float2 panner258 = ( 1.0 * _Time.y * _DisplaceSpeed.xy + texCoord249);
				float4 tex2DNode117 = tex2D( _DistortionTexture, panner258 );
				float3 desaturateInitialColor252 = tex2DNode117.rgb;
				float desaturateDot252 = dot( desaturateInitialColor252, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar252 = lerp( desaturateInitialColor252, desaturateDot252.xxx, 0.0 );
				float2 panner106 = ( 1.0 * _Time.y * _BackgroundSpeed.xy + ( float3( texCoord114 ,  0.0 ) * desaturateVar252 ).xy);
				float grayscale164 = Luminance(tex2D( _BackgroundTexture, ( float4( panner161, 0.0 , 0.0 ) + float4( panner106, 0.0 , 0.0 ) + ( tex2DNode117 * _DisplacementIntensity ) ).rg ).rgb);
				float temp_output_153_0 = ( fresnelNode143 * grayscale179 * grayscale164 );
				float3 temp_cast_18 = (temp_output_153_0).xxx;
				float3 desaturateInitialColor215 = temp_cast_18;
				float desaturateDot215 = dot( desaturateInitialColor215, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar215 = lerp( desaturateInitialColor215, desaturateDot215.xxx, 0.0 );
				float temp_output_214_0 = ( temp_output_153_0 + ( desaturateVar215.y * desaturateVar215.y ) );
				float temp_output_241_0 = ( _Glow + -1.75 );
				float blendOpSrc261 = temp_output_214_0;
				float blendOpDest261 = 0.0;
				float temp_output_277_0 = ( _Time.y * _RgbSpeed );
				float2 temp_cast_19 = (temp_output_277_0).xx;
				float2 texCoord288 = i.ase_texcoord1.xy * float2( 1,1 ) + temp_cast_19;
				#ifdef _KEYWORD1_ON
				float staticSwitch291 = ( texCoord288.x * _Float2 );
				#else
				float staticSwitch291 = ( _Float2 * texCoord288.y );
				#endif
				float3 hsvTorgb3_g6 = HSVToRGB( float3(staticSwitch291,1.0,1.0) );
				float3 hsvTorgb281 = HSVToRGB( float3(temp_output_277_0,1.0,1.0) );
				#ifdef _KEYWORD14_ON
				float3 staticSwitch290 = hsvTorgb281;
				#else
				float3 staticSwitch290 = hsvTorgb3_g6;
				#endif
				#ifdef _KEYWORD0_ON
				float4 staticSwitch287 = float4( ( 0.36 + staticSwitch290 ) , 0.0 );
				#else
				float4 staticSwitch287 = _Color0;
				#endif
				float3 desaturateInitialColor240 = staticSwitch287.rgb;
				float desaturateDot240 = dot( desaturateInitialColor240, float3( 0.299, 0.587, 0.114 ));
				float3 desaturateVar240 = lerp( desaturateInitialColor240, desaturateDot240.xxx, 0.0 );
				float3 break234 = desaturateVar240;
				
				
				finalColor = ( ( grayscale226 + temp_output_214_0 + ( temp_output_241_0 * ( saturate( ( 0.5 - 2.0 * ( blendOpSrc261 - 0.5 ) * ( blendOpDest261 - 0.5 ) ) )) ) ) * ( staticSwitch287 * ( break234.x + break234.z + break234.y + temp_output_241_0 ) ) );
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
