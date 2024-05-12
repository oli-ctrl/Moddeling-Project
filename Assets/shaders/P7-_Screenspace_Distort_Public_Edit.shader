// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "PiXel/P7- Screenspace Distortion Public Edit"
{
	Properties
	{
		_Screenspacetex("Screenspace tex", 2D) = "white" {}
		[Toggle]_GrayScaleToggle("GrayScale Toggle", Float) = 1
		_Color("Color", Color) = (1,0,0,1)
		_Glow("Glow", float) = 1
		[Toggle(_CUSTOMCOLORS_ON)] _CustomColors("CustomColors", Float) = 1
		_DistortTextureA("Distort Texture A", 2D) = "white" {}
		_DistortTextureB("Distort Texture B", 2D) = "white" {}
		_Size("Size", Range( 0 , 10)) = 1
		_DistortionOpacity("Distortion Opacity", Range( 0 , 10)) = 1
		_DistortionPower("Distortion Power", Range( 0 , 10)) = 1
		_DistortionSpeed("Distortion Speed", Range( 0 , 10)) = 0.1
		_Offset("Offset", Float) = 0.5
		[Toggle]_MadebyPiXel4441("Made by PiXel#4441 :)", Float) = 0
		[HideInInspector]_SizeXY("SizeXY", Vector) = (1,1,0,0)
		[HideInInspector] _texcoord( "", 2D ) = "white" {}

	}
	
	SubShader
	{
		
		
		Tags { "RenderType"="Opaque" }
	LOD 100

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
		
		
		
		Pass
		{
			Name "Unlit"
			Tags { "LightMode"="ForwardBase" }
			CGPROGRAM

			

			#ifndef UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX
			//only defining to not throw compilation error over Unity 5.5
			#define UNITY_SETUP_STEREO_EYE_INDEX_POST_VERTEX(input)
			#endif
			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_instancing
			#include "UnityCG.cginc"
			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#pragma shader_feature _CUSTOMCOLORS_ON


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
				#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 worldPos : TEXCOORD0;
				#endif
				float4 ase_texcoord1 : TEXCOORD1;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			uniform float _GrayScaleToggle;
			uniform sampler2D _DistortTextureA;
			uniform float _Size;
			uniform sampler2D _DistortTextureB;
			uniform float4 _DistortTextureB_ST;
			uniform float2 _SizeXY;
			uniform float _Offset;
			uniform float _DistortionPower;
			uniform float _DistortionSpeed;
			uniform float _DistortionOpacity;
			uniform sampler2D _Screenspacetex;
			uniform float4 _Color;
			uniform float _Glow;
			uniform float _MadebyPiXel4441;

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				o.ase_texcoord1.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.zw = 0;
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
				float2 temp_output_4_0_g2 = (( i.ase_texcoord1.xy / _Size )).xy;
				float2 uv_DistortTextureB = i.ase_texcoord1.xy * _DistortTextureB_ST.xy + _DistortTextureB_ST.zw;
				float2 temp_output_41_0_g2 = ( (tex2D( _DistortTextureB, uv_DistortTextureB )*float4( _SizeXY, 0.0 , 0.0 ) + _Offset).rg + 0.5 );
				float2 temp_cast_2 = (_DistortionPower).xx;
				float2 temp_output_17_0_g2 = temp_cast_2;
				float mulTime22_g2 = _Time.y * _DistortionSpeed;
				float temp_output_27_0_g2 = frac( mulTime22_g2 );
				float2 temp_output_11_0_g2 = ( temp_output_4_0_g2 + ( temp_output_41_0_g2 * temp_output_17_0_g2 * temp_output_27_0_g2 ) );
				float2 temp_output_12_0_g2 = ( temp_output_4_0_g2 + ( temp_output_41_0_g2 * temp_output_17_0_g2 * frac( ( mulTime22_g2 + 0.5 ) ) ) );
				float4 lerpResult9_g2 = lerp( tex2D( _DistortTextureA, temp_output_11_0_g2 ) , tex2D( _DistortTextureA, temp_output_12_0_g2 ) , ( abs( ( temp_output_27_0_g2 - 0.5 ) ) / 0.5 ));
				float4 temp_cast_3 = (_DistortionOpacity).xxxx;
				float3 normalizeResult10 = normalize( ( _WorldSpaceCameraPos - WorldPosition ) );
				float4 temp_output_27_0 = pow( ( pow( lerpResult9_g2 , temp_cast_3 ) * pow( tex2D( _Screenspacetex, normalizeResult10.xy ) , 1.0 ) ) , 1.0 );
				float grayscale57 = dot(temp_output_27_0.rgb, float3(0.299,0.587,0.114));
				float4 temp_cast_6 = (grayscale57).xxxx;
				
				
				finalColor = ( ( ( (( _GrayScaleToggle )?( temp_cast_6 ):( temp_output_27_0 )) * 1.0 ) * ( _Color * _Glow ) ) + (( _MadebyPiXel4441 )?( 0.0 ):( 0.0 )) );
				return finalColor;
			}
			ENDCG
		}
	}
	
	
	Fallback "False"
}
/*ASEBEGIN
Version=18800
7;29;1906;1014;-1662.328;430.558;1;True;True
Node;AmplifyShaderEditor.WorldPosInputsNode;7;-923.8892,-448.637;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldSpaceCameraPos;8;-984.8893,-645.4371;Inherit;False;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleSubtractOpNode;9;-657.692,-539.6375;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;24;-656.0281,179.3862;Inherit;True;Property;_DistortTextureB;Distort Texture B;6;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;43;-318.8972,198.8783;Inherit;False;Property;_SizeXY;SizeXY;15;1;[HideInInspector];Create;True;0;0;0;False;0;False;1,1;1,1;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;44;-259.6976,350.5795;Inherit;False;Property;_Offset;Offset;13;0;Create;True;0;0;0;False;0;False;0.5;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;10;-336.6919,-605.6373;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TexturePropertyNode;22;-810.6592,-27.75836;Inherit;True;Property;_DistortTextureA;Distort Texture A;5;0;Create;True;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.ScaleAndOffsetNode;45;-143.2541,196.8196;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;1,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;23;-110.9425,606.4593;Inherit;False;Property;_DistortionSpeed;Distortion Speed;12;0;Create;True;0;0;0;False;0;False;0.1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;41;-200.4776,464.2596;Inherit;False;Property;_DistortionPower;Distortion Power;11;0;Create;True;0;0;0;False;0;False;1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;26;182.4379,-46.05737;Inherit;False;Property;_DistortionOpacity;Distortion Opacity;10;0;Create;True;0;0;0;False;0;False;1;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;46;135.2462,160.6416;Inherit;True;Flow;7;;2;acad10cc8145e1f4eb8042bebe2d9a42;2,50,0,51,0;5;5;SAMPLER2D;;False;2;FLOAT2;0,0;False;18;FLOAT2;0,0;False;17;FLOAT2;1,1;False;24;FLOAT;0.2;False;1;COLOR;0
Node;AmplifyShaderEditor.SamplerNode;12;-176.3917,-539.3373;Inherit;True;Property;_Screenspacetex;Screenspace tex;0;0;Create;True;0;0;0;False;0;False;-1;81143712918f99c4f968be0a2ee44790;81143712918f99c4f968be0a2ee44790;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PowerNode;13;529.2537,-414.3575;Inherit;True;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.PowerNode;25;513.638,28.44275;Inherit;True;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;19;831.2456,-163.1585;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PowerNode;27;1182.439,-165.9573;Inherit;True;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.TFHCGrayscale;57;1571.116,92.74176;Inherit;True;1;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;47;1848.058,-315.2518;Inherit;False;Property;_Glow;Glow;3;0;Create;True;0;0;0;False;0;False;1;0.9;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;49;1878.959,-154.3506;Inherit;False;Property;_Color;Color;2;0;Create;True;0;0;0;False;0;False;1,0,0,1;1,0,0,1;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.ToggleSwitchNode;60;1834.28,67.97229;Inherit;True;Property;_GrayScaleToggle;GrayScale Toggle;1;0;Create;True;0;0;0;False;0;False;1;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;62;2044.915,420.4945;Inherit;False;Constant;_GrayScaleStrenght;GrayScale Strenght;13;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;51;2201.151,-110.802;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;61;2101.915,119.4945;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;55;2255.11,70.35764;Inherit;True;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.ToggleSwitchNode;65;2302.329,360.442;Inherit;False;Property;_MadebyPiXel4441;Made by PiXel#4441 :);14;0;Create;True;0;0;0;False;0;False;0;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;50;2556.677,-127.1087;Inherit;False;Property;_CustomColors;CustomColors;4;0;Create;True;0;0;0;True;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Create;False;True;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;56;2493.976,127.551;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;2581.294,6.60362;Float;False;True;-1;2;;100;1;PiXel/P7- Screenspace Distortion Public Edit;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;True;0;False;-1;True;0;False;-1;True;True;True;True;True;0;False;-1;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;RenderType=Opaque=RenderType;True;2;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;False;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;False;0
WireConnection;9;0;8;0
WireConnection;9;1;7;0
WireConnection;10;0;9;0
WireConnection;45;0;24;0
WireConnection;45;1;43;0
WireConnection;45;2;44;0
WireConnection;46;5;22;0
WireConnection;46;18;45;0
WireConnection;46;17;41;0
WireConnection;46;24;23;0
WireConnection;12;1;10;0
WireConnection;13;0;12;0
WireConnection;25;0;46;0
WireConnection;25;1;26;0
WireConnection;19;0;25;0
WireConnection;19;1;13;0
WireConnection;27;0;19;0
WireConnection;57;0;27;0
WireConnection;60;0;27;0
WireConnection;60;1;57;0
WireConnection;51;0;49;0
WireConnection;51;1;47;0
WireConnection;61;0;60;0
WireConnection;61;1;62;0
WireConnection;55;0;61;0
WireConnection;55;1;51;0
WireConnection;56;0;55;0
WireConnection;56;1;65;0
WireConnection;0;0;56;0
ASEEND*/
//CHKSM=6503F404E67DBF3FD6084452FC0CCC5D0C24A4D3