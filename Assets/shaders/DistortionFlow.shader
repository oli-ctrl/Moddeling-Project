// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "ossocore/DistortionFlow"
{
	Properties
	{
		_Color("Color", Color) = (1,1,1,0)
		[Toggle(_CUSTOMCOLORS_ON)] _CustomColors("Custom Colors", Float) = 0
		_EmissionStrength("Emission Strength", Float) = 1
	
		_Texture("Texture", 2D) = "white" {}
		_Speed("Speed", Vector) = (0.3,0,0,0)
		[NoScaleOffset]_DistortionTexture("Distortion Texture", 2D) = "white" {}
		_TilingDistortion("Tiling Distortion", Vector) = (5,5,0,0)
		_Tiling("Tiling", Vector) = (5,5,0,0)
		_TextureWeight("Texture Weight", Float) = 1
		_DistortionWeight("Distortion Weight", Float) = 1
		_TexturePanningAmount("Texture Panning Amount", Range( 0 , 1)) = 0
		_DistortionTexturePanningAmount("Distortion Texture Panning Amount", Range( 0 , 1)) = 0
		_SpeedDistortion("Speed Distortion", Vector) = (-0.55,0,0,0)
		[Toggle(_GRAYSCALE_ON)] _Grayscale("Grayscale", Float) = 0

	}
	
	SubShader
	{
		
		
		Tags { "RenderType"="Opaque" }
	LOD 100

		CGINCLUDE
		#pragma target 3.0
		ENDCG
		Blend Off
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
			#pragma shader_feature _CUSTOMCOLORS_ON
			#pragma shader_feature _GRAYSCALE_ON


			struct appdata
			{
				float4 vertex : POSITION;
				float4 color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord : TEXCOORD0;
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
			uniform float _EmissionStrength;
			uniform sampler2D _Texture;
			uniform sampler2D _DistortionTexture;
			uniform float _DistortionWeight;
			uniform float2 _SpeedDistortion;
			uniform float2 _TilingDistortion;
			uniform float _DistortionTexturePanningAmount;
			uniform float _TextureWeight;
			uniform float2 _Speed;
			uniform float2 _Tiling;
			uniform float _TexturePanningAmount;
		
			
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
				float mulTime29 = _Time.y * float2( 0.5,0.5 ).x;
				float2 uv030 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 panner22 = ( mulTime29 * _SpeedDistortion + ( uv030 * _TilingDistortion ));
				float2 uv051 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 lerpResult52 = lerp( panner22 , uv051 , ( 1.0 - _DistortionTexturePanningAmount ));
				float4 tex2DNode13 = tex2D( _DistortionTexture, ( _DistortionWeight * lerpResult52 ) );
				float4 appendResult15 = (float4(tex2DNode13.r , tex2DNode13.g , tex2DNode13.b , 0.0));
				float mulTime6 = _Time.y * float2( 0.5,0.5 ).x;
				float2 uv012 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 panner9 = ( mulTime6 * _Speed + ( uv012 * _Tiling ));
				float2 uv049 = i.ase_texcoord1.xy * float2( 1,1 ) + float2( 0,0 );
				float2 lerpResult44 = lerp( panner9 , uv049 , ( 1.0 - _TexturePanningAmount ));
				float4 tex2DNode10 = tex2D( _Texture, ( appendResult15 + float4( ( _TextureWeight * lerpResult44 ), 0.0 , 0.0 ) ).xy );
				float4 appendResult11 = (float4(tex2DNode10.r , tex2DNode10.g , tex2DNode10.b , 0.0));
				float4 temp_output_1_0_g4 = appendResult11;
				float grayscale4_g4 = Luminance(temp_output_1_0_g4.rgb);
				float4 temp_cast_6 = (grayscale4_g4).xxxx;
				#ifdef _GRAYSCALE_ON
				float4 staticSwitch2_g4 = temp_cast_6;
				#else
				float4 staticSwitch2_g4 = temp_output_1_0_g4;
				#endif
				
				
				finalColor = ( ( _Color * _EmissionStrength ) * staticSwitch2_g4 );
				return finalColor;
			}
			ENDCG
		}
	}
	CustomEditor "ASEMaterialInspector"
	
	
}
/*ASEBEGIN
Version=18100
8;826;2105;584;3162.311;741.9257;1.668465;True;True
Node;AmplifyShaderEditor.CommentaryNode;34;-3399.082,-791.3898;Inherit;False;1808.863;864.9521;Comment;14;47;57;52;56;54;22;51;28;27;29;53;41;24;30;DistortionPanning;1,1,1,1;0;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;30;-3088.627,-677.7822;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;24;-2895.915,-285.5569;Inherit;True;Constant;_alsospeedDis;also speedDis;7;0;Create;True;0;0;False;0;False;0.5,0.5;0.4,0.5;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;41;-3013.036,-536.3867;Inherit;False;Property;_TilingDistortion;Tiling Distortion;7;0;Create;True;0;0;False;0;False;5,5;5,5;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;28;-3114.595,-397.3085;Inherit;True;Property;_SpeedDistortion;Speed Distortion;13;0;Create;True;0;0;False;0;False;-0.55,0;0.4,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;27;-2722.234,-670.9673;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;53;-2468.15,-416.3896;Inherit;False;Property;_DistortionTexturePanningAmount;Distortion Texture Panning Amount;12;0;Create;True;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;35;-3405.987,157.1832;Inherit;False;1826.103;896.5759;Comment;13;42;44;9;45;49;6;8;12;3;46;48;50;55;Main Texture Panning;1,1,1,1;0;0
Node;AmplifyShaderEditor.SimpleTimeNode;29;-2670.291,-290.1182;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;12;-3198.477,261.9451;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;42;-3184.951,413.4243;Inherit;False;Property;_Tiling;Tiling;8;0;Create;True;0;0;False;0;False;5,5;5,5;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TextureCoordinatesNode;51;-2405.199,-280.1414;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.Vector2Node;3;-2889.408,719.1322;Inherit;True;Constant;_alsospeed;also speed;6;0;Create;True;0;0;False;0;False;0.5,0.5;0.4,0.5;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.PannerNode;22;-2475.028,-674.3564;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode;54;-2178.778,-478.2755;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;45;-2537.186,627.6852;Inherit;False;Property;_TexturePanningAmount;Texture Panning Amount;11;0;Create;True;0;0;False;0;False;0;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;8;-3069.782,607.3816;Inherit;True;Property;_Speed;Speed;5;0;Create;True;0;0;False;0;False;0.3,0;0.4,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.LerpOp;52;-2010.3,-663.8027;Inherit;True;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;56;-2011.198,-307.6059;Inherit;False;Property;_DistortionWeight;Distortion Weight;10;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;50;-2912.458,276.588;Inherit;True;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleTimeNode;6;-2694.85,698.4907;Inherit;False;1;0;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;57;-1742.896,-303.3637;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.OneMinusNode;55;-2236.289,558.8423;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;49;-2506.862,484.9218;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;1,1;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PannerNode;9;-2576.22,250.2753;Inherit;True;3;0;FLOAT2;0,0;False;2;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;46;-1964.777,210.7359;Inherit;False;Property;_TextureWeight;Texture Weight;9;0;Create;True;0;0;False;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;13;-1542.29,-278.6684;Inherit;True;Property;_DistortionTexture;Distortion Texture;6;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;c6837332c1041ab4bb419cff17bfb083;c6837332c1041ab4bb419cff17bfb083;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.LerpOp;44;-2033.645,316.0732;Inherit;True;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;48;-1741.812,251.9727;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;15;-1200.15,-260.8138;Inherit;True;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleAddOpNode;33;-1001.007,-29.19881;Inherit;True;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT2;0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SamplerNode;10;-766.4218,-1.82251;Inherit;True;Property;_Texture;Texture;4;1;[NoScaleOffset];Create;True;0;0;False;0;False;-1;d9b63f7f15ccaf64b908a7a92c0265c1;b5d18297878f47d4baa6df577b010334;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;6;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;5;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;11;-437.7416,22.04438;Inherit;False;FLOAT4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.FunctionNode;17;-231.6799,-100.2075;Inherit;False;CC;0;;1;a22727c7a4d3b524f93be21b893ea2cd;0;0;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;40;-258.2203,17.45746;Inherit;False;Grayscale;14;;4;6e3db16a50428da41ac407e29e763e55;0;1;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;18;-8.705449,-16.32086;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;47;-2586.028,-159.6333;Inherit;False;Constant;_Float0;Float 0;8;0;Create;True;0;0;False;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;0;174.5561,-9.990644;Float;False;True;-1;2;ASEMaterialInspector;100;1;ossocore/DistortionFlow;0770190933193b94aaa3065e307002fa;True;Unlit;0;0;Unlit;2;True;0;1;False;-1;0;False;-1;0;1;False;-1;0;False;-1;True;0;False;-1;0;False;-1;True;False;True;0;False;-1;True;True;True;True;True;0;False;-1;True;False;255;False;-1;255;False;-1;255;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;7;False;-1;1;False;-1;1;False;-1;1;False;-1;True;1;False;-1;True;3;False;-1;True;True;0;False;-1;0;False;-1;True;1;RenderType=Opaque=RenderType;True;2;0;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;0;;0;0;Standard;1;Vertex Position,InvertActionOnDeselection;1;0;1;True;False;;0
WireConnection;27;0;30;0
WireConnection;27;1;41;0
WireConnection;29;0;24;0
WireConnection;22;0;27;0
WireConnection;22;2;28;0
WireConnection;22;1;29;0
WireConnection;54;0;53;0
WireConnection;52;0;22;0
WireConnection;52;1;51;0
WireConnection;52;2;54;0
WireConnection;50;0;12;0
WireConnection;50;1;42;0
WireConnection;6;0;3;0
WireConnection;57;0;56;0
WireConnection;57;1;52;0
WireConnection;55;0;45;0
WireConnection;9;0;50;0
WireConnection;9;2;8;0
WireConnection;9;1;6;0
WireConnection;13;1;57;0
WireConnection;44;0;9;0
WireConnection;44;1;49;0
WireConnection;44;2;55;0
WireConnection;48;0;46;0
WireConnection;48;1;44;0
WireConnection;15;0;13;1
WireConnection;15;1;13;2
WireConnection;15;2;13;3
WireConnection;33;0;15;0
WireConnection;33;1;48;0
WireConnection;10;1;33;0
WireConnection;11;0;10;1
WireConnection;11;1;10;2
WireConnection;11;2;10;3
WireConnection;40;1;11;0
WireConnection;18;0;17;0
WireConnection;18;1;40;0
WireConnection;0;0;18;0
ASEEND*/
//CHKSM=9B3E31FEEE3A850DABDD6C29538521EF3AA7531B