// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ossocore/MatCap(TkVersion)"
{
	Properties
	{
		_Color("Color", Color) = (1,0,0,0)
		[Toggle(_CUSTOMCOLORS_ON)] _CustomColors("Custom Colors", Float) = 0
		_MatCapTexture("MatCap Texture", 2D) = "white" {}
		[Toggle(_GRAYSCALE_ON)] _Grayscale("Grayscale", Float) = 0
		_ColormaskRange("Colormask Range", Float) = 0.84
		_Glow("Glow", Float) = 1
		_ColormaskFuzziness("Colormask Fuzziness", Float) = 0.21
		_Contrast("Contrast", Float) = 2.7
		_LightSoftness("LightSoftness", Float) = 6.65

	}
	
	SubShader
	{
		
		
		Tags { "RenderType"="Opaque" }
	LOD 100

		CGINCLUDE
		#pragma target 3.0
		ENDCG
		Blend Off
		Cull Off
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
			#pragma shader_feature _CUSTOMCOLORS_ON
			#pragma shader_feature _GRAYSCALE_ON


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float3 ase_normal : NORMAL;
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
#ifdef ASE_NEEDS_FRAG_WORLD_POSITION
				float3 worldPos : TEXCOORD0;
#endif
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord1 : TEXCOORD1;
			};

			uniform float4 _Color;
			uniform float _Glow;
			uniform sampler2D _MatCapTexture;
			uniform float _ColormaskRange;
			uniform float _ColormaskFuzziness;
			uniform float _LightSoftness;
			uniform float _Contrast;

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				UNITY_TRANSFER_INSTANCE_ID(v, o);

				float3 ase_worldNormal = UnityObjectToWorldNormal(v.ase_normal);
				o.ase_texcoord1.xyz = ase_worldNormal;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord1.w = 0;
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
				float3 ase_worldNormal = i.ase_texcoord1.xyz;
				float4 tex2DNode22 = tex2D( _MatCapTexture, ( ( mul( UNITY_MATRIX_V, float4( ase_worldNormal , 0.0 ) ).xyz * 0.496 ) + 0.496 ).xy );
				float4 color24 = IsGammaSpace() ? float4(1,1,1,0) : float4(1,1,1,0);
				float4 temp_cast_5 = (_Contrast).xxxx;
				float4 break33 = pow( ( tex2DNode22 + ( saturate( ( 1.0 - ( ( distance( color24.rgb , tex2DNode22.rgb ) - _ColormaskRange ) / max( _ColormaskFuzziness , 1E-05 ) ) ) ) / _LightSoftness ) ) , temp_cast_5 );
				float4 appendResult8 = (float4(break33.r , break33.g , break33.b , break33.a));
				float grayscale11 = Luminance(appendResult8.xyz);
				float4 temp_cast_7 = (grayscale11).xxxx;
				#ifdef _GRAYSCALE_ON
				float4 staticSwitch10 = temp_cast_7;
				#else
				float4 staticSwitch10 = appendResult8;
				#endif
				
				
				finalColor = ( ( _Color * _Glow ) * staticSwitch10 );
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18100
409;92;1595;655;1090.149;-102.4686;1.148728;True;False
Node;AmplifyShaderEditor.ViewMatrixNode;1;-3714.956,-174.8136;Inherit;False;0;1;FLOAT4x4;0
Node;AmplifyShaderEditor.WorldNormalVector;2;-3784.856,-32.29646;Inherit;True;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RangedFloatNode;3;-3216.708,243.3082;Float;False;Constant;_Scaling;Scaling;-1;0;Create;True;0;0;False;0;False;0.496;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;4;-3487.59,-116.1221;Inherit;True;2;2;0;FLOAT4x4;0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;5;-2985.527,50.24573;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;6;-2738.065,225.0338;Inherit;True;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;24;-1867.391,455.4037;Inherit;False;Constant;_Color1;Color 1;3;0;Create;True;0;0;False;0;False;1,1,1,0;0,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;32;-1830.391,732.4044;Inherit;False;Property;_ColormaskFuzziness;Colormask Fuzziness;6;0;Create;True;0;0;False;0;False;0.21;0.21;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;23;-1867.391,615.4039;Inherit;False;Property;_ColormaskRange;Colormask Range;4;0;Create;True;0;0;False;0;False;0.84;0.84;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;22;-2248.958,276.399;Inherit;True;Property;_MatCapTexture;MatCap Texture;2;0;Create;True;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;27;-1441.72,618.9189;Inherit;False;Property;_LightSoftness;LightSoftness;8;0;Create;True;0;0;False;0;False;6.65;6.65;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;26;-1546.445,411.9697;Inherit;False;Color Mask;-1;;2;eec747d987850564c95bde0e5a6d1867;0;4;1;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;28;-1206.308,412.8929;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;31;-966.543,587.1735;Inherit;False;Property;_Contrast;Contrast;7;0;Create;True;0;0;False;0;False;2.7;2.7;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;30;-960.491,360.0429;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.PowerNode;21;-795.3906,426.2681;Inherit;True;False;2;0;COLOR;0,0,0,0;False;1;FLOAT;1;False;1;COLOR;0
Node;AmplifyShaderEditor.BreakToComponentsNode;33;-270.3293,446.6657;Inherit;False;COLOR;1;0;COLOR;0,0,0,0;False;16;FLOAT;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT;5;FLOAT;6;FLOAT;7;FLOAT;8;FLOAT;9;FLOAT;10;FLOAT;11;FLOAT;12;FLOAT;13;FLOAT;14;FLOAT;15
Node;AmplifyShaderEditor.DynamicAppendNode;8;66.80486,281.7101;Inherit;True;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;18;449.452,93.74811;Inherit;False;Property;_Glow;Glow;5;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;17;574.452,-62.25189;Inherit;False;Property;_Color;Color;0;0;Create;True;0;0;False;0;False;1,0,0,0;1,0,0,0;True;0;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.TFHCGrayscale;11;315.5833,366.1939;Inherit;False;0;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;19;739.452,184.7481;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;10;542.0779,276.2094;Inherit;False;Property;_Grayscale;Grayscale;3;0;Create;True;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT4;0,0,0,0;False;0;FLOAT4;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT4;0,0,0,0;False;5;FLOAT4;0,0,0,0;False;6;FLOAT4;0,0,0,0;False;7;FLOAT4;0,0,0,0;False;8;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;12;883.3932,241.8333;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;20;316.4433,-156.9941;Inherit;False;Property;_CustomColors;Custom Colors;1;0;Create;True;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;1099.114,163.1626;Float;False;True;-1;2;ASEMaterialInspector;100;1;ossocore/MatCap(TkVersion);0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;False;True;2;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;RenderType=Opaque=RenderType;True;2;0;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;0
WireConnection;4;0;1;0
WireConnection;4;1;2;0
WireConnection;5;0;4;0
WireConnection;5;1;3;0
WireConnection;6;0;5;0
WireConnection;6;1;3;0
WireConnection;22;1;6;0
WireConnection;26;1;22;0
WireConnection;26;3;24;0
WireConnection;26;4;23;0
WireConnection;26;5;32;0
WireConnection;28;0;26;0
WireConnection;28;1;27;0
WireConnection;30;0;22;0
WireConnection;30;1;28;0
WireConnection;21;0;30;0
WireConnection;21;1;31;0
WireConnection;33;0;21;0
WireConnection;8;0;33;0
WireConnection;8;1;33;1
WireConnection;8;2;33;2
WireConnection;8;3;33;3
WireConnection;11;0;8;0
WireConnection;19;0;17;0
WireConnection;19;1;18;0
WireConnection;10;1;8;0
WireConnection;10;0;11;0
WireConnection;12;0;19;0
WireConnection;12;1;10;0
WireConnection;0;0;12;0
ASEEND*/
//CHKSM=E5EB2700EA6227BD781DEC5291B5054CA05A8703