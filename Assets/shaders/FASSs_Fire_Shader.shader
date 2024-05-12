// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "FASS/Polished Era/FASSs Fire Shader"
{
	Properties
	{
		[Toggle(_CUSTOMCOLORS_ON)] _CustomColors("Custom Colors", Float) = 1
		_Maintex("Main tex", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,0)
		_MainTexglow("Main Tex glow", Range( 0 , 5)) = 1
		_MainTexDisplace("Main Tex Displace", 2D) = "white" {}
		_DisplaceAmount("Displace Amount", Range( 0 , 1)) = 0
		[Toggle(_TOPGRADIENTFIRE_ON)] _TopGradientFire("Top Gradient Fire?", Float) = 0
		_GradientGlow("Gradient Glow", Range( 0 , 10)) = 0.5
		_XandYPanSpeed("X and Y Pan Speed", Vector) = (0,0,0,0)

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
			#pragma shader_feature_local _CUSTOMCOLORS_ON
			#pragma shader_feature_local _TOPGRADIENTFIRE_ON


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

			uniform float _GradientGlow;
			uniform sampler2D _Maintex;
			uniform sampler2D _MainTexDisplace;
			uniform float2 _XandYPanSpeed;
			uniform float _DisplaceAmount;
			uniform float _MainTexglow;
			uniform float4 _Color;

			
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
				float2 temp_cast_0 = (1.0).xx;
				float2 texCoord35 = i.ase_texcoord1.xy * float2( 1,1 ) + temp_cast_0;
				float temp_output_38_0 = pow( texCoord35.y , -16.0 );
				#ifdef _TOPGRADIENTFIRE_ON
				float staticSwitch71 = temp_output_38_0;
				#else
				float staticSwitch71 = ( temp_output_38_0 * 0.0 );
				#endif
				float2 texCoord47 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 texCoord49 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 panner52 = ( 1.0 * _Time.y * _XandYPanSpeed + texCoord49);
				float4 lerpResult46 = lerp( float4( texCoord47, 0.0 , 0.0 ) , tex2D( _MainTexDisplace, panner52 ) , _DisplaceAmount);
				float4 temp_output_29_0 = ( ( tex2D( _Maintex, lerpResult46.rg ) * _MainTexglow ) * _Color );
				float2 temp_cast_3 = (0.08966178).xx;
				float2 texCoord1 = i.ase_texcoord1.xy * float2( 1,1 ) + temp_cast_3;
				
				
				finalColor = ( ( ( staticSwitch71 * _GradientGlow ) * temp_output_29_0 ) + ( ( _GradientGlow * pow( texCoord1.y , 10.0 ) ) * temp_output_29_0 ) );
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	Fallback "FASSs Fire Shader"
}
/*ASEBEGIN
Version=18935
8;81;1904;912;2759.477;-750.7521;1.404523;False;False
Node;AmplifyShaderEditor.CommentaryNode;64;-3075.77,605.3519;Inherit;False;3306.719;974.4476;;12;61;49;52;47;54;48;46;31;24;30;28;29;Main Texture;0.7388158,0,1,1;0;0
Node;AmplifyShaderEditor.Vector2Node;61;-2893.139,1275.799;Inherit;False;Property;_XandYPanSpeed;X and Y Pan Speed;8;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TextureCoordinatesNode;49;-3025.77,999.166;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.CommentaryNode;74;-3074.255,-760.7538;Inherit;False;3000.365;1234.172;;14;10;1;19;42;43;44;25;21;20;37;34;38;36;35;Gradients;1,0,0,1;0;0
Node;AmplifyShaderEditor.PannerNode;52;-2609.758,976.0538;Inherit;False;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;34;-3024.255,-690.1812;Inherit;False;Constant;_Float2;Float 2;0;0;Create;True;0;0;0;False;0;False;1;0;-1;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;48;-2130.141,986.4099;Inherit;True;Property;_MainTexDisplace;Main Tex Displace;4;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;54;-2230.745,1204.597;Inherit;False;Property;_DisplaceAmount;Displace Amount;5;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;47;-2164.626,655.3519;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;46;-1527.807,775.0654;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;10;-2675.531,-123.9824;Inherit;False;Constant;_Float0;Float 0;0;0;Create;True;0;0;0;False;0;False;0.08966178;0;-5;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;35;-2674.746,-710.7538;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SamplerNode;24;-1006.468,735.4326;Inherit;True;Property;_Maintex;Main tex;1;0;Create;True;0;0;0;False;0;False;-1;None;c24341d865f87614a96c74d941d7cae9;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.BreakToComponentsNode;36;-2325.603,-647.3348;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.RangedFloatNode;37;-2585.205,-417.3657;Inherit;False;Constant;_Float3;Float 3;0;0;Create;True;0;0;0;False;0;False;-16;0;-16;15;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;1;-2317.853,-151.1697;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;31;-785.9595,936.2748;Inherit;False;Property;_MainTexglow;Main Tex glow;3;0;Create;True;0;0;0;True;0;False;1;3.294118;0;5;0;1;FLOAT;0
Node;AmplifyShaderEditor.PowerNode;38;-2100.236,-506.6407;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;72;-1842.525,-318.4424;Inherit;False;Constant;_Float4;Float 4;8;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;30;-398.034,747.6353;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;19;-2011.453,-117.0654;Inherit;False;FLOAT;1;0;FLOAT;0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.ColorNode;28;-510.5757,1097.248;Inherit;False;Property;_Color;Color;2;0;Create;True;0;0;0;False;0;False;1,1,1,0;1,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;29;-4.051738,854.7706;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;73;-1556.58,-387.8131;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;21;-2349.19,215.4184;Inherit;False;Constant;_Float1;Float 1;0;0;Create;True;0;0;0;False;0;False;10;0;-15;15;0;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;69;-1802.085,65.84267;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;32;288.3268,542.9756;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.PowerNode;20;-1677.149,180.3698;Inherit;False;False;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;42;-1416.702,-52.94007;Inherit;False;Property;_GradientGlow;Gradient Glow;7;0;Create;True;0;0;0;False;0;False;0.5;0;0;10;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;71;-1308.939,-458.6244;Inherit;False;Property;_TopGradientFire;Top Gradient Fire?;6;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;33;-191.1087,499.0516;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;43;-940.7596,-253.2541;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;44;-1153.069,194.1481;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;40;-1366.809,351.7003;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;25;-741.83,188.6512;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.CommentaryNode;76;-1826.676,1715.507;Inherit;False;354;188;;1;75;Custom Colors;0.9473977,1,0,1;0;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;39;-596.9693,-209.1402;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;75;-1776.676,1765.507;Inherit;False;Property;_CustomColors;Custom Colors;0;0;Create;True;0;0;0;True;0;False;0;1;1;True;;Toggle;2;Key0;Key1;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;41;-308.8894,155.4382;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;730.8744,403.8754;Float;False;True;-1;2;ASEMaterialInspector;100;1;FASS/Polished Era/FASSs Fire Shader;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;False;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;False;False;False;False;False;False;False;False;False;True;0;False;-1;False;True;0;False;-1;False;True;True;True;True;True;0;False;-1;False;False;False;False;False;False;False;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;False;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;RenderType=Opaque=RenderType;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;False;0;FASSs Fire Shader;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;0;1;True;False;;False;0
WireConnection;52;0;49;0
WireConnection;52;2;61;0
WireConnection;48;1;52;0
WireConnection;46;0;47;0
WireConnection;46;1;48;0
WireConnection;46;2;54;0
WireConnection;35;1;34;0
WireConnection;24;1;46;0
WireConnection;36;0;35;2
WireConnection;1;1;10;0
WireConnection;38;0;36;0
WireConnection;38;1;37;0
WireConnection;30;0;24;0
WireConnection;30;1;31;0
WireConnection;19;0;1;2
WireConnection;29;0;30;0
WireConnection;29;1;28;0
WireConnection;73;0;38;0
WireConnection;73;1;72;0
WireConnection;69;0;19;0
WireConnection;32;0;29;0
WireConnection;20;0;69;0
WireConnection;20;1;21;0
WireConnection;71;1;73;0
WireConnection;71;0;38;0
WireConnection;33;0;32;0
WireConnection;43;0;71;0
WireConnection;43;1;42;0
WireConnection;44;0;42;0
WireConnection;44;1;20;0
WireConnection;40;0;29;0
WireConnection;25;0;44;0
WireConnection;25;1;33;0
WireConnection;39;0;43;0
WireConnection;39;1;40;0
WireConnection;41;0;39;0
WireConnection;41;1;25;0
WireConnection;0;0;41;0
ASEEND*/
//CHKSM=50795D5CEDD19211497EDE08433304441129E228