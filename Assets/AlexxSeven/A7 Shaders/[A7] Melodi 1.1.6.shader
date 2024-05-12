Shader "AlexxSeven/Melodi/v1.1.6/Melodi Unlit"
{
	Properties
	{
		[HideInInspector]shader_is_using_thry_editor("shader_is_using_thry_editor", Float) = 0
		[HideInInspector]shader_master_label("<color=#7735dbff>♪♫</color> <color=#ff0000ff>❤</color><color=#ff54ebff>Melodi Unlit (v1.1.6)</color><color=#ff0000ff>❤</color> <color=#7735dbff>♫♪</color>", Float) = 0
		[ThryRichLabel]_editorVersionLowerWarning("<color=#ff0000ff>WARNING: Thry editor version is lower than 2.43.3, some properties might not work!</color>--{condition_show:{type:EDITOR_VERSION,data:<2.43.3}}", Float) = 0
		[ThryRichLabel]_editorVersionHigherWarning("<color=#ebd234ff>NOTICE: Your thry editor version is higher than version: 2.43.3</color>--{condition_show:{type:EDITOR_VERSION,data:>2.43.3}}", Float) = 0
		[ThryRichLabel]_editorVersionHigherWarning1("<color=#ebd234ff>Please let me know if anything broke. ❤💖</color>--{condition_show:{type:EDITOR_VERSION,data:>2.43.3}}", Float) = 0
		[ThryShaderOptimizerLockButton]_ShaderOptimizerEnabled("", Float) = 0
		[HideInInspector]m_start_GROptions("Shader Options", Float) = 0
		[ThryWideEnum(Sphere, 0, Plane, 1, Skybox, 2)]_MatPreviewType("Material Preview Type--{tooltip:This changes how the material preview looks in unity.,on_value_actions:[ {value:0,actions:[{type:SET_PROPERTY,data:preview_type=Sphere}]}, {value:1,actions:[{type:SET_PROPERTY,data:preview_type=Plane}]}, {value:2,actions:[{type:SET_PROPERTY,data:preview_type=Skybox}]} }]}]}", Float) = 0
		[Toggle][ThryWideEnum(Unlit, 0, Physical (Premium Only), 1)][Space (10)]_ShaderLitMode("Shader Lit Mode:--{on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_ShaderLitMode=0}]}]}", Float) = 0
		[HideInInspector]_SrcBlend("Src Blend", Float) = 1
		[HideInInspector]_DstBlend("Dst Blend", Float) = 0
		[Enum(Off,0,Front,1,Back,2)]_CullMode("Cull Mode", Float) = 2
		[Enum(Off,0,On,1)]_ZWriteDepth("ZWrite Depth--{tooltip:This option controls enabling the depth buffer.}", Float) = 1
		[ThryWideEnum(Disabled, 0, Never, 1, Less, 2, Less or Equal, 4, Equal, 3, Greater, 5, Greater or Equal, 7, Not Equal, 6, Always, 8)]_ZTestMode("ZTest Mode--{tooltip:This handles how the depth buffer is used in object rendering.}", Float) = 4
		[ThryWideEnum(Opaque, 0, Cutout, 1, TransClipping, 9, Fade, 2, Transparent, 3, Additive, 4, Soft Additive, 5, Multiplicative, 6, 2x Multiplicative, 7)]_alphaMode("Alpha Mode--{tooltip:You can change the render type with this option.,on_value_actions:[ {value:0,actions:[{type:SET_PROPERTY,data:_MatPreviewType=0}, {type:SET_PROPERTY,data:preview_type=Sphere}, {type:SET_PROPERTY,data:render_queue=2000}, {type:SET_PROPERTY,data:render_type=Opaque},            {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_ZWriteDepth=1}, {type:SET_PROPERTY,data:_CullMode=2}]}, {value:1,actions:[{type:SET_PROPERTY,data:_MatPreviewType=0}, {type:SET_PROPERTY,data:preview_type=Sphere}, {type:SET_PROPERTY,data:render_queue=2450}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_Cutoff=.5}, {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_ZWriteDepth=1}, {type:SET_PROPERTY,data:_CullMode=0}]}, {value:9,actions:[{type:SET_PROPERTY,data:_MatPreviewType=0}, {type:SET_PROPERTY,data:preview_type=Sphere}, {type:SET_PROPERTY,data:render_queue=2450}, {type:SET_PROPERTY,data:render_type=TransparentCutout}, {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10},  {type:SET_PROPERTY,data:_ZWriteDepth=1}, {type:SET_PROPERTY,data:_CullMode=2}]}, {value:2,actions:[{type:SET_PROPERTY,data:_MatPreviewType=0}, {type:SET_PROPERTY,data:preview_type=Sphere}, {type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=5}, {type:SET_PROPERTY,data:_DstBlend=10},  {type:SET_PROPERTY,data:_ZWriteDepth=0}, {type:SET_PROPERTY,data:_CullMode=2}]}, {value:3,actions:[{type:SET_PROPERTY,data:_MatPreviewType=1}, {type:SET_PROPERTY,data:preview_type=Plane}, {type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=10},  {type:SET_PROPERTY,data:_ZWriteDepth=0}, {type:SET_PROPERTY,data:_CullMode=0}]}, {value:4,actions:[{type:SET_PROPERTY,data:_MatPreviewType=0}, {type:SET_PROPERTY,data:preview_type=Sphere}, {type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=1}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_ZWriteDepth=0}, {type:SET_PROPERTY,data:_CullMode=0}]}, {value:5,actions:[{type:SET_PROPERTY,data:_MatPreviewType=0}, {type:SET_PROPERTY,data:preview_type=Sphere}, {type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:RenderType=Transparent},        {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=4}, {type:SET_PROPERTY,data:_DstBlend=1},  {type:SET_PROPERTY,data:_ZWriteDepth=0}, {type:SET_PROPERTY,data:_CullMode=0}]}, {value:6,actions:[{type:SET_PROPERTY,data:_MatPreviewType=0}, {type:SET_PROPERTY,data:preview_type=Sphere}, {type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=0},  {type:SET_PROPERTY,data:_ZWriteDepth=0}, {type:SET_PROPERTY,data:_CullMode=2}]}, {value:7,actions:[{type:SET_PROPERTY,data:_MatPreviewType=0}, {type:SET_PROPERTY,data:preview_type=Sphere}, {type:SET_PROPERTY,data:render_queue=3000}, {type:SET_PROPERTY,data:render_type=Transparent},       {type:SET_PROPERTY,data:_Cutoff=0},  {type:SET_PROPERTY,data:_SrcBlend=2}, {type:SET_PROPERTY,data:_DstBlend=3},  {type:SET_PROPERTY,data:_ZWriteDepth=0}, {type:SET_PROPERTY,data:_CullMode=2}]} }]}]}", Float) = 0
		_Cutoff("Cutoff:--{condition_show:{type:DROPDOWN,data:_alphaMode==1}}", Range( 0 , 1)) = 0
		[HideInInspector][Toggle]Instancing("instancing", Float) = 0
		[HideInInspector]m_start_ALDebugOption("Audiolink Debug:", Float) = 0
		[ToggleUI]_mainALDebug("Disable Audiolink:", Float) = 0
		[Helpbox]_ShaderALDebugTip("This option will set audio link present to FALSE in the shader. Use this to debug the default look.", Float) = 0
		[HideInInspector]m_end_ALDebugOption("", Float) = 0
		[HideInInspector]m_end_GROptions("", Float) = 0
		[ThryRichLabel]_shaderUnlockedWarning("<color=#ff0000ff>Don't forget to lock the material before exporting your asset!</color>--{condition_showS:(_ShaderOptimizerEnabled==0)}", Float) = 0
		[ThryRichLabel]_shaderALDisabledWarning("<color=#ff0000ff>AUDIOLINK IS DISABLED! (be sure to toggle the debug option off.)</color>--{condition_showS:(_mainALDebug==1)}", Float) = 0
		[Helpbox(1)]_LockTooltip("UNITY Animations don't work by default when locked in. Right click a property and set it to animated before locking if you want to animate it. You can also set it to renamed when locked if you need to animate the same property on two materials differently while they're on the same mesh.", Float) = 0
		[ThryRGBAPacker(R,G,B,A)]_MainTex("Diffuse Texture:--{reference_properties:[_MainTexChannel]}", 2D) = "white" {}
		[HideInInspector][Enum(R,0,G,1,B,2,A,3,RGBA,4)]_MainTexChannel("Channel:", Float) = 4
		[HideInInspector]m_start_MainTexOptions("Diffuse Texture Settings", Float) = 0
		[HideInInspector]_TexModeMatcap("TexModeMatcap", Float) = 0
		[ThryWideEnum(Surface, 0, MatCap, 1, Screen Space (Premium Only), 2)]_MainTexMode("Texture Mode:--{on_value_actions:[{value:0,actions:[{type:SET_PROPERTY,data:_TexModeMatcap=0}]}, {value:2,actions:[{type:SET_PROPERTY,data:_TexModeMatcap=0},{type:SET_PROPERTY,data:_MainTexMode=0}]}, {value:1,actions:[{type:SET_PROPERTY,data:_TexModeMatcap=1}]}]}", Float) = 0
		[HideInInspector]g_start_MainTexAniOptions("--{condition_showS:(_MainTexMode!=1)}", Float) = 0
		_MainTexAnimationAngle("Shift Texture Angle:", Range( 0 , 1)) = 0
		[Space(10)]_MainTexAnimationSpeed("Animation Speed:", Range( 0 , 5)) = 0
		_MainTexAnimationAniAngle("Shift Animation Direction:", Range( 0 , 1)) = 0
		[ToggleUI]_MainTexAnimationInvert("Invert Direction:", Float) = 0
		[HideInInspector]g_end_MainTexAniOptions("", Float) = 0
		[HideInInspector]m_end_MainTexOptions("", Float) = 0
		[HideInInspector]m_start_FragColDistortionOptions("Diffuse Distortion Parameters--{reference_property:_EnableFragColDistortion}", Float) = 0
		[HideInInspector][Toggle(_ENABLEFRAGCOLDISTORTION_ON)] _EnableFragColDistortion("Enable Distortion", Float) = 0
		[ThryWideEnum(Surface, 0, Screen Space (Premium Only), 1)]_FragColDistortionTexMode("Texture Mode:--{on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_FragColDistortionTexMode=0}]}]}", Float) = 0
		_FragColDistortionTex("Normal Map:", 2D) = "bump" {}
		_FragColDistortionTexScale("Normal Scale:", Float) = 1
		[Toggle(_FRAGCOLDISTORTIONGENTEX_ON)] _FragColDistortionGenTex("Generate Normal (Premium Only):--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_start_FragColDistortionGenOptions("Generated Normal Settings--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 1
		[HideInInspector]m_end_FragColDistortionGenOptions("", Float) = 1
		[HideInInspector]m_start_FragColDistortionAnimationOptions("Panning Animation Options", Float) = 0
		_FragColDistortionTexAngle("Shift Texture Angle", Range( 0 , 1)) = 0
		[Space(10)]_FragColDistortionTexAnimationSpeed("Animation Speed:", Range( 0 , 5)) = 0
		_FragColDistortionTexAnimationAngle("Shift Animation Direction:", Range( 0 , 1)) = 0
		[ToggleUI]_FragColDistortionTexAnimationInvert("Invert Direction:", Float) = 0
		[HideInInspector]m_end_FragColDistortionAnimationOptions("", Float) = 0
		[HideInInspector]m_end_FragColDistortionOptions("", Float) = 0
		[HideInInspector]m_BSS("Beat Saber Settings", Float) = 0
		[Enum(Solid Color,0,Gradient,1)]_BSColorType("Color Type:--{condition_show:{type:PROPERTY_BOOL,data:_AltSaberColor==0}}", Float) = 0
		[NonModifiableTextureData]_Color("Color:--{condition_showS:(_AltSaberColor==0 && _BSColorType==0)}", Color) = (1,1,1,1)
		[HideInInspector]g_start_BSGradientOptions("BSGradient_Options--{condition_showS:(_AltSaberColor==0 && _BSColorType==1)}", Float) = 0
		[Gradient]_BSColorGradient("Gradient:", 2D) = "white" {}
		_BSGradientScale("Gradient Scale:", Range( 0 , 1)) = 0
		[HideInInspector]m_start_BSGradientAnimOptions("Gradient Animation Options", Float) = 0
		_BSGradientAngle("Shift Gradient Angle:", Range( 0 , 1)) = 0
		_BSGradientAnimSpeed("Animation Speed:", Range( 0 , 1)) = 0
		[ToggleUI]_EmisAltColorGradientInvert("Invert Direction:", Float) = 0
		[HideInInspector]m_end_BSGradientAnimOptions("", Float) = 0
		[HideInInspector]g_end_BSGradientOptions("BSGradient_Options_End", Float) = 0
		[MaterialToggle]_CustomColors("Custom Colors:", Float) = 0
		[HideInInspector]m_start_SFALE("Custom Colors Override--{reference_property:_AltSaberColor}", Float) = 0
		[HideInInspector][ToggleUI]_AltSaberColor("Pull Color Palette Color?", Float) = 0
		[Helpbox]_SFALEHelpbox1("Enabling this option will override custom colors in favor of the color source chosen. More info about your chosen option can be found below.", Float) = 0
		[Helpbox]_SFALEHelpbox2("THIS OPTION WILL USE THE COLORS OF THE OBJECT/MESH VERTEXES, USEFUL FOR VERTEX PAINTED OBJECTS. (Saber trails also use this.)--{condition_showS:(_CCOverrideFrom==0)}", Float) = 0
		[Helpbox]_SFALEHelpbox4("THE LIGHT AND BOOST COLOR OPTIONS REQUIRE USERS TO HAVE AUDIO LINK MOD INSTALLED, THEY PULL THEIR VALUES FROM THE GLOBAL VARIABLES IT CREATES.--{condition_showS:(_CCOverrideFrom>2)}", Float) = 0
		[Helpbox]_SFALEHelpbox3("THE SABER COLOR OPTIONS REQUIRE USERS TO HAVE SABER FACTORY INSTALLED, THEY PULL THEIR VALUES FROM THE GLOBAL VARIABLES IT CREATES.--{condition_showS:(_CCOverrideFrom==1||_CCOverrideFrom==2)} ", Float) = 0
		[Enum(Object Vertex Color,0,Saber Left,1,Saber Right,2,Light Left,3,Light Right,4,Boost Left,5,Boost Right,6)]_CCOverrideFrom("Override Color Using:--{tooltip:This lets you pick which part of the user color palette the material will get its color from.}", Float) = 0
		[HideInInspector]m_end_SFALE("", Float) = 0
		[Toggle(_DODGECOLORS_ON)] _DodgeColors("Dodge Color? (Premium Only)--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		_Glow("Glow:", Range( 0 , 3)) = 0
		[HideInInspector]m_start_TrailMaskOptions("Trail Mask Options (Experimental):--{reference_property:_TrailMaskTexToggle}", Float) = 0
		[ThryRGBAPacker(R,G,B,A)]_TrailMaskTex("Trail Mask:--{reference_properties:[_TrailMaskTexChannel]}", 2D) = "white" {}
		[HideInInspector][Enum(R,0,G,1,B,2,A,3,RGBA,4)]_TrailMaskTexChannel("Channel:", Float) = 4
		[HideInInspector]m_start_TrailALOptions("Audio Link Settings:", Float) = 0
		[Toggle][ToggleUI]_TrailMaskGlowBypass("Alpha/Glow Bypass? (Premium)--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_end_TrailALOptions("", Float) = 0
		[HideInInspector]m_start_TrailMaskNrmOptions("Trail Mask Distortion:--{reference_property:_TrailMaskTexDistortToggle}", Float) = 0
		[HideInInspector][ToggleUI]_TrailMaskTexDistortToggle("TrailMaskTexDistortToggle", Float) = 0
		[ThryWideEnum(Surface, 0, Screen Space (Premium Only), 1)]_TrailMaskTexNrmScreenSpace("Texture Mode:--{on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_TrailMaskTexNrmScreenSpace=0}]}]}", Float) = 0
		_TrailMaskTexNrm("Distortion Texture:", 2D) = "bump" {}
		_TrailMaskTexNrmScale("Normal Scale:--{condition_showS:(_TrailMaskTexNrmGen==0)}", Float) = 1
		[Toggle][ToggleUI]_TrailMaskTexNrmGen("Generate Normal (Premium Only):--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_start_TrailMaskNrmGenOptions("Generated Normal Settings--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_end_TrailMaskNrmGenOptions("", Float) = 0
		[HideInInspector]m_start_TrailMaskNrmAnimOptions("Panning Animation Options", Float) = 0
		_TrailMaskTexNrmAngle("Shift Texture Angle:", Range( 0 , 1)) = 0
		[Space(10)]_TrailMaskTexNrmAnimationSpeed("Animation Speed:", Range( 0 , 1)) = 0
		_TrailMaskTexNrmAnimationAngle("Shift Animation Direction:", Range( 0 , 1)) = 0
		[Toggle][ToggleUI]_TrailMaskTexNrmInvert("Invert Direction:", Float) = 0
		[HideInInspector]m_end_TrailMaskNrmAnimOptions("", Float) = 0
		[HideInInspector]m_start_TrailMaskNrmALOptions("Audio Link Settings:--{reference_property:_TrailMaskTexNrmALToggle}", Float) = 0
		[HideInInspector][Toggle][ToggleUI]_TrailMaskTexNrmALToggle("MainTexMaskALToggle", Float) = 0
		[HideInInspector]m_start_TrailMaskNrmALBandSettings("Audio Band Settings", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)]_TrailMaskTexNrmALBand("Band:", Float) = 0
		[HideInInspector]m_end_TrailMaskNrmALBandSettings("", Float) = 0
		_TrailMaskTexNrmALStrength("Effect Strength:", Range( 0 , 1)) = 0
		[Enum(Increase on Audio,0,Back and Forth,1,Increase on Silent,2,Decrease on Audio,3)][Space(10)]_TrailMaskTexNrmALMode("Rotation Mode:", Float) = 0
		[Enum(Raw,0,Smoothed,1)]_TrailMaskTexNrmALModeType("Motion Type:", Float) = 0
		_TrailMaskTexNrmALSpeed("Rotation Speed:", Range( 0 , 5)) = 0
		[HideInInspector]m_end_TrailMaskNrmALOptions("", Float) = 0
		[HideInInspector]m_end_TrailMaskNrmOptions("", Float) = 0
		[HideInInspector]m_end_TrailMaskOptions("", Float) = 0
		[HideInInspector][Toggle(_TRAILMASKTEXTOGGLE_ON)] _TrailMaskTexToggle("TrailMaskTexToggle", Float) = 0
		[HideInInspector]m_EmissMapOptions("Emission Adv Parameters (Premium Only)--{reference_property:_EmisAdvOptionsEnable,condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_start_EmisMaskAnimOptions("Mask Animation Options", Float) = 0
		[HideInInspector]m_end_EmisMaskAnimOptions("", Float) = 0
		[HideInInspector]m_start_EmisMaskNrmOptions("Emissive Mask Distortion:--{reference_property:_ToggleEmissionMaskNrm}", Float) = 0
		[HideInInspector]m_start_EmisMaskNrmGenOptions("Generated Normal Settings", Float) = 0
		[HideInInspector]m_end_EmisMaskNrmGenOptions("", Float) = 0
		[HideInInspector]m_start_EmisMaskNrmAnimOptions("Panning Animation Options", Float) = 0
		[HideInInspector]m_end_EmisMaskNrmAnimOptions("", Float) = 0
		[HideInInspector]m_end_EmisMaskNrmOptions("", Float) = 0
		[HideInInspector]m_start_EmisAltColorOptions("Emissive Alt Color:--{reference_property:_EmisAltColorEnable}", Float) = 0
		[HideInInspector]g_start_EmisAltColorGradientOptions("--{condition_showS:(_EmisAltColorMode==7 && _EmisAltColorType==1)}", Float) = 0
		[HideInInspector]m_start_EmisAltColorGradientAnimationOptions("Gradient Animation Options", Float) = 0
		[HideInInspector]m_end_EmisAltColorGradientAnimationOptions("", Float) = 0
		[HideInInspector]g_end_EmisAltColorGradientOptions("", Float) = 0
		[HideInInspector]m_end_EmisAltColorOptions("", Float) = 0
		[HideInInspector]m_FragColFresnel("Fresnel Parameters--{reference_property:_FragColFresnelEnable}", Float) = 0
		[HideInInspector][Toggle(_FRAGCOLFRESNELENABLE_ON)] _FragColFresnelEnable("ToggleEnableFresnel", Float) = 0
		_FragColFresnelPower("Fresnel Power:", Range( 0 , 5)) = 5
		_FragColFresnelScale("Fresnel Scale:", Range( 0 , 5)) = 1
		[HideInInspector]m_start_FragColFresnelMaskOptions1("Fresnel Mask Settings:", Float) = 0
		[ThryWideEnum(Surface, 0, Screen Space (Premium Only), 1)]_FragColFresnelMaskScreenSpace("Texture Mode:--{on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_FragColFresnelMaskScreenSpace=0}]}]}", Float) = 0
		[Space(10)][ThryRGBAPacker(R,G,B,A)]_FragColFresnelMask("Fresnel Mask:--{reference_properties:[_FragColFresnelMaskChannel]}", 2D) = "white" {}
		[HideInInspector][Enum(R,0,G,1,B,2,A,3,RGBA,4)]_FragColFresnelMaskChannel("Channel:", Float) = 4
		_FragColFresnelMaskAngle("Shift Texture Angle:", Range( 0 , 1)) = 0
		[HideInInspector]m_start_FragColFresnelMaskAnimOptions("Panning Animation Options", Float) = 0
		_FragColFresnelMaskAnimationAngle("Shift Animation Direction:", Range( 0 , 1)) = 0
		[Space(10)]_FragColFresnelMaskAnimationSpeed("Animation Speed:", Range( 0 , 1)) = 0
		[Toggle][ToggleUI]_FragColFresnelMaskInvert("Invert Direction:", Float) = 0
		[HideInInspector]m_end_FragColFresnelMaskAnimOptionss("", Float) = 0
		[HideInInspector]m_end_FragColFresnelMaskOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelDistortionOptions("Fresnel Distortion: (Premium Only)--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF},reference_property:_FragColFresnelUseNrmMap}", Float) = 0
		[HideInInspector]m_start_FragColFresnelCDistortionMapGenOptions("Generated Normal Settings--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_end_FragColFresnelCDistortionMapGenOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelCDistortionMapAnimOptions("Panning Animation Options", Float) = 0
		[HideInInspector]m_end_FragColFresnelCDistortionMapAnimOptions("", Float) = 0
		[HideInInspector]m_end_FragColFresnelDistortionOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelTexOptions("Fresnel Texture Options: (Premium Only)--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_start_FragColFresnelTexAnimOptions("Panning Animation Options", Float) = 0
		[HideInInspector]m_end_FragColFresnelTexAnimOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelTextureDistortionOptions("Texture Distortion:--{reference_property:_FragColFresnelTexUseNrmMap}", Float) = 0
		[HideInInspector]m_start_FragColFresnelTexDistortionMapGenOptions("Generated Normal Settings--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_end_FragColFresnelTexDistortionMapGenOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelTexDistortionMapAnimOptions("Panning Animation Options", Float) = 0
		[HideInInspector]m_end_FragColFresnelTexDistortionMapAnimOptions("", Float) = 0
		[HideInInspector]m_end_FragColFresnelTextureDistortionOptions("", Float) = 0
		[HideInInspector]m_end_FragColFresnelTexOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelColorOptions("Color Options:", Float) = 0
		[Helpbox]_FragColFresnelColorHelpbox1("This option allows you to pick an alt color from the entire color pallet, or choose a custom one. More info about your chosen option can be found below.", Float) = 0
		[Helpbox]_FragColFresnelColorHelpbox2("THIS OPTION WILL USE THE COLORS OF THE OBJECT/MESH VERTEXES, USEFUL FOR VERTEX PAINTED OBJECTS. (Saber trails also use this.)--{condition_showS:(_FragColFresnelGradientColorFrom==0)}", Float) = 0
		[Helpbox]_FragColFresnelColorHelpbox3("THE SABER COLOR OPTIONS REQUIRE USERS TO HAVE SABER FACTORY INSTALLED, THEY PULL THEIR VALUES FROM THE GLOBAL VARIABLES IT CREATES.--{condition_showS:(_FragColFresnelGradientColorFrom==1||_FragColFresnelGradientColorFrom==2)}", Float) = 0
		[Helpbox]_FragColFresnelColorHelpbox4("THE LIGHT AND BOOST COLOR OPTIONS REQUIRE USERS TO HAVE AUDIO LINK MOD INSTALLED, THEY PULL THEIR VALUES FROM THE GLOBAL VARIABLES IT CREATES.--{condition_showS:(_FragColFresnelGradientColorFrom>2&&_FragColFresnelGradientColorFrom<7)}", Float) = 0
		[Helpbox]_FragColFresnelColorHelpbox5("THE _Color OPTION PULLS FROM THE BASE COLOR VARIABLE OFTEN USED BY THE CUSTOM COLORS TOGGLE, THIS IS ONLY NEEDED OF YOU OVERRIDE THE MAIN COLOR FOR ANY REASON BUT STILL WANT CC AS AN ALT COLOR.--{condition_show:{type:DROPDOWN,data:_FragColFresnelGradientColorFrom==7}}", Float) = 0
		[Helpbox]_FragColFresnelColorHelpbox6("THE CUSTOM OPTION ALLOWS YOU TO SET A STATIC ALT COLOR, THIS DOES NOT PULL FROM THE COLOR PALLET.--{condition_show:{type:DROPDOWN,data:_FragColFresnelGradientColorFrom==8}}", Float) = 0
		[ThryWideEnum(Object Vertex Color, 0, Saber Left, 1, Saber Right, 2, Light Left, 3, Light Right, 4, Boost Left, 5, Boost Right, 6, _Color, 7, Custom, 8)]_FragColFresnelGradientColorFrom("Get Color From:--{tooltip:This lets you pick which part of the user color palette the material will get its color from.}", Float) = 8
		[Enum(Use Main Color,0,Solid Color,1,Gradient,2)]_FragColFresnelGradientColorType("Color Type:--{condition_showS:(_FragColFresnelGradientColorFrom==8)}", Float) = 0
		[Space(10)]_FragColFresnelGradientCustomColor("Color:--{condition_showS:(_FragColFresnelGradientColorType==1 && _FragColFresnelGradientColorFrom == 8)}", Color) = (1,1,1,1)
		[HideInInspector]g_start_FragColFresnelGradient("--{condition_showS:(_FragColFresnelGradientColorType==2 && _FragColFresnelGradientColorFrom==8)}", Float) = 0
		[Gradient][Space(10)]_FragColFresnelGradientTexture("Gradient:", 2D) = "white" {}
		_FragColFresnelGradientScale("Gradient Scale:", Range( 0 , 1)) = 0
		[HideInInspector]m_start_FragColFresnelGradientAni("Gradient Animation Options", Float) = 0
		_FragColFresnelGradientAngle("Shift Gradient Angle:", Range( 0 , 1)) = 0
		_FragColFresnelGradientAnimSpeed("Animation Speed:", Range( 0 , 1)) = 0
		[ToggleUI]_FragColFresnelGradientInvert("Invert Direction:", Float) = 0
		[HideInInspector]m_end_FragColFresnelGradientAni("", Float) = 0
		[HideInInspector]g_end_FragColFresnelGradient("", Float) = 0
		[HideInInspector]m_end_FragColFresnelColorOptions("", Float) = 0
		[HideInInspector]m_VORotMenu("Object Rotation", Float) = 0
		[SmallTexture]_ALVORotMask("Effect Mask: (Premium Only)--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", 2D) = "white" {}
		[Enum(Local Axis,0,World Axis,1)]_VORotAxisMode("Axis Mode:", Float) = 0
		[Enum(X,0,Y,1,Z,2,Custom,3)][Space(15)]_VORotAxisValue("Affected Axis:--{tooltip:The axis that this effect will infuence.}", Float) = 0
		[Helpbox]_VORotCustAxisHelpbox1("Setting X Y Z to all 0 will cause the object to disappear! One of these must always be set to 1!--{condition_show:{type:DROPDOWN,data:_VORotAxisValue==3}}", Float) = 0
		[Vector3]_VORotCustAxis("Custom Axis:--{tooltip:The axis that this effect will infuence.,condition_show:{type:DROPDOWN,data:_VORotAxisValue==3}}", Vector) = (0,0,1,0)
		_VORotSpeed("Rotation Speed:", Range( 0 , 5)) = 0
		[ToggleUI]_InvertVORot("Invert Rotation Direction:", Float) = 0
		[HideInInspector]m_AudioLink("Audio Link Settings", Float) = 0
		[HideInInspector]m_start_MainTexAnimationALOptions("Diffuse Texture Animation--{reference_property:_MainTexAnimationALEnable,condition_showS:(_MainTexMode!=1)}", Float) = 0
		[HideInInspector][Toggle(_MAINTEXANIMATIONALENABLE_ON)] _MainTexAnimationALEnable("MainTexAudioLinkToggle", Float) = 0
		[HideInInspector]m_start_MainTexAnimationALBandSettings("Audio Band Settings", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)]_MainTexAnimationALBand("Band:", Float) = 0
		[HideInInspector]m_end_MainTexAnimationALBandSettings("", Float) = 0
		_MainTexAnimationALStrength("Effect Strength:", Range( 0 , 1)) = 0
		[Enum(Increase on Audio,0,Back and Forth,1,Increase on Silent,2,Decrease on Audio,3)][Space(10)]_MainTexAnimationALMode("Rotation Mode:", Float) = 0
		[Enum(Raw,0,Smoothed,1)]_MainTexAnimationALModeType("Motion Type:", Float) = 0
		_MainTexAnimationALSpeed("Rotation Speed:", Range( 0 , 5)) = 0
		[HideInInspector]m_end_MainTexAnimationALOptions("", Float) = 0
		[HideInInspector]m_start_FragColDistortionALOptions("Diffuse Distortion Animation--{reference_property:_FragColDistortionALAnimationEnabled,condition_showS:(_EnableFragColDistortion==1)}", Float) = 0
		[HideInInspector][Toggle(_FRAGCOLDISTORTIONALANIMATIONENABLED_ON)] _FragColDistortionALAnimationEnabled("FragColDistortionALAnimation", Float) = 0
		[HideInInspector]m_start_FragColDistortionBandOptions("Audio Band Settings", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)]_FragColDistortionALAnimationBand("Band:", Float) = 0
		[HideInInspector]m_end_FragColDistortionBandOptions("", Float) = 0
		_FragColDistortionALAnimationStrength("Effect Strength:", Range( 0 , 1)) = 0
		[Enum(Increase on Audio,0,Back and Forth,1,Increase on Silent,2,Decrease on Audio,3)][Space(10)]_FragColDistortionALAnimationMode("Rotation Mode:", Float) = 0
		[Enum(Raw,0,Smoothed,1)]_FragColDistortionALAnimationModeType("Motion Type:", Float) = 0
		_FragColDistortionALAnimationSpeed("Rotation Speed:", Range( 0 , 5)) = 0
		[HideInInspector]m_end_FragColDistortionALOptions("", Float) = 0
		[HideInInspector]m_start_BSGradientAnimALOptions("BS Gradient Animation--{reference_property:_BSGradientAnimALEnable,condition_showS:(_BSColorType==1)}", Float) = 0
		[HideInInspector][Toggle(_BSGRADIENTANIMALENABLE_ON)] _BSGradientAnimALEnable("BSGradientAnimAudioLinkToggle", Float) = 0
		[HideInInspector]m_start_BSGradientAnimALBandSettings("Audio Band Settings", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)]_BSGradientAnimALBand1("Band:", Float) = 0
		[HideInInspector]m_end_BSGradientAnimALBandSettings("", Float) = 0
		_BSGradientAnimALStrength("Effect Strength:", Range( 0 , 1)) = 0
		[Enum(Increase on Audio,0,Back and Forth,1,Increase on Silent,2,Decrease on Audio,3)][Space(10)]_BSGradientAnimALMode1("Rotation Mode:", Float) = 0
		[Enum(Raw,0,Smoothed,1)]_BSGradientAnimALModeType1("Motion Type:", Float) = 0
		_BSGradientAnimALSpeed1("Rotation Speed:", Range( 0 , 5)) = 0
		[HideInInspector]m_end_BSGradientAnimALOptions("", Float) = 0
		[HideInInspector]m_start_EmisAdvAnimationALOptions("Emissive Adv Animation (Premium Only)--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_start_EmisAdvAnimationALTextureSettings("Emission Mask Animation:--{reference_property:_EmissTexAnimationALEnable,condition_enable:{type:PROPERTY_BOOL,data:_EmisTexMode!=1}}", Float) = 0
		[HideInInspector]m_start_EmisTexAnimationALBandSettings("Audio Band Settings", Float) = 0
		[HideInInspector]m_end_EmisTexAnimationALBandSettings("", Float) = 0
		[HideInInspector]m_end_EmisAdvAnimationALTextureSettings("", Float) = 0
		[HideInInspector]m_start_EmissTexNrmALSettings("Emission Mask Distortion Anim:--{reference_property:_EmissTexNrmAudioLinkToggle,condition_enable:{type:PROPERTY_BOOL,data:_ToggleEmissionMaskNrm==1}}", Float) = 0
		[HideInInspector]m_start_EmissTexNrmALBandSettings("Audio Band Settings", Float) = 0
		[HideInInspector]m_end_EmissTexNrmALBandSettings("", Float) = 0
		[HideInInspector]m_end_EmissTexNrmALSettings("", Float) = 0
		[HideInInspector]m_start_EmisAdvAnimationALAltColorSettings("Emission Alt Color Animation:--{reference_property:_EmissAltColorAnimationALEnable,condition_enable:{type:PROPERTY_BOOL,data:_EmisAltColorEnable}}", Float) = 0
		[HideInInspector]m_start_EmisAltColorAnimationALBandSettings("Audio Band Settings", Float) = 0
		[HideInInspector]m_end_EmisAltColorAnimationALBandSettings("", Float) = 0
		[HideInInspector]m_end_EmisAdvAnimationALAltColorSettings("", Float) = 0
		[HideInInspector]m_end_EmisAdvAnimationALOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelALOptions("Fresnel Options--{condition_showS:(_FragColFresnelEnable==1)}", Float) = 0
		[HideInInspector]m_start_FragColFresnelALScaleOptions("Fresnel Scale--{reference_property:_FresnelScaleALToggle}", Float) = 0
		[HideInInspector][Toggle(_FRESNELSCALEALTOGGLE_ON)] _FresnelScaleALToggle("FresnelScaleALToggle", Float) = 0
		[HideInInspector]m_start_FragColFresnelScaleALBandOptions("Audio Band Settings", Float) = 0
		[ThryWideEnum(Default, 0, Curve Based (Premium Only), 1)]_FragColFresnelScaleSensitivityType("Volume Sensitivity:--{on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_FragColFresnelScaleSensitivityType=0}]}]}", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)][Space(15)]_FragColFresnelScaleALBand("Band:", Float) = 0
		_FragColFresnelScaleALFilterLevel("Filter Level:--{condition_showS:(_FragColFresnelScaleALType==0)}", Range( 0 , 1)) = 0
		_FragColFresnelScaleALFilterAmount("Filter Amount:--{condition_showS:(_FragColFresnelScaleALType==0)}", Range( 0 , 1)) = 0
		[HideInInspector]m_end_FragColFresnelScaleALBandOptions("", Float) = 0
		_FragColFresnelScaleALStrength("Effect Strength:", Range( 0 , 1)) = 0
		[Enum(Unmasked,0,Wave Masked,1)]_FragColFresnelScaleALType("Effect Type:", Float) = 0
		[Enum(Additive,0,Subtractive,1,Multiplicative,2)]_FragColFresnelScaleALBlend("Blend Type:", Float) = 0
		[HideInInspector]m_start_FragColFresnelScaleALWaveOptions("Wave Mask Settings--{condition_showS:(_FragColFresnelScaleALType==1)}", Float) = 0
		_FragColFresnelScaleALWaveDensity("Wave Density:", Range( 0 , 128)) = 32
		_FragColFresnelScaleALWaveDirection("Wave Direction:", Range( 0 , 1)) = 0
		[ToggleUI]_FragColFresnelScaleALWaveInvert("Invert Direction:", Float) = 0
		[ToggleUI]_FragColFresnelScaleALWaveSmooth("Smooth Waves:", Float) = 1
		[HideInInspector]m_end_FragColFresnelScaleALWaveOptions("", Float) = 0
		[HideInInspector]m_end_FragColFresnelALScaleOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelALPowerOptions("Fresnel Power--{reference_property:_FresnelPowerALToggle}", Float) = 0
		[HideInInspector][Toggle(_FRESNELPOWERALTOGGLE_ON)] _FresnelPowerALToggle("FresnelPowerALToggle", Float) = 0
		[HideInInspector]m_start_FragColFresnelPowerALBandOptions("Audio Band Settings", Float) = 0
		[ThryWideEnum(Default, 0, Curve Based (Premium Only), 1)]_FragColFresnelPowerSensitivityType("Volume Sensitivity:--{on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_FragColFresnelPowerSensitivityType=0}]}]}", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)][Space(15)]_FragColFresnelPowerALBand("Band:", Float) = 0
		_FragColFresnelPowerALFilterLevel("Filter Level:--{condition_showS:(_FragColFresnelPowerALType==0)}", Range( 0 , 1)) = 0
		_FragColFresnelPowerALFilterAmount("Filter Amount:--{condition_showS:(_FragColFresnelPowerALType==0)}", Range( 0 , 1)) = 0
		[HideInInspector]m_end_FragColFresnelPowerALBandOptions("", Float) = 0
		_FragColFresnelPowerALStrength("Effect Strength:", Range( 0 , 1)) = 0
		[Enum(Unmasked,0,Wave Masked,1)]_FragColFresnelPowerALType("Effect Type:", Float) = 0
		[Enum(Additive,0,Subtractive,1,Multiplicative,2)]_FragColFresnelPowerALBlend("Blend Type:", Float) = 0
		[HideInInspector]m_start_FragColFresnelPowerALWaveOptions("Wave Mask Settings--{condition_showS:(_FragColFresnelPowerALType==1)}", Float) = 0
		_FragColFresnelPowerALWaveDensity("Wave Density:", Range( 0 , 128)) = 32
		_FragColFresnelPowerALWaveDirection("Wave Direction:", Range( 0 , 1)) = 0
		[ToggleUI]_FragColFresnelPowerALWaveInvert("Invert Direction:", Float) = 0
		[ToggleUI]_FragColFresnelPowerALWaveSmooth("Smooth Waves:", Float) = 1
		[HideInInspector]m_end_FragColFresnelPowerALWaveOptions("", Float) = 0
		[HideInInspector]m_end_FragColFresnelALPowerOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelALMaskOptions("Fresnel Mask:--{reference_property:_FragColFresnelMaskALToggle}", Float) = 0
		[HideInInspector][Toggle][ToggleUI]_FragColFresnelMaskALToggle("FragColFresnelMaskALToggle", Float) = 0
		[HideInInspector]m_start_FragColFresnelMaskALBandOptions("Audio Band Settings", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)]_FragColFresnelMaskALBand("Band:", Float) = 0
		[HideInInspector]m_end_FragColFresnelMaskALBandOptions("", Float) = 0
		_FragColFresnelMaskALStrength("Effect Strength:", Range( 0 , 1)) = 0
		[Enum(Increase on Audio,0,Back and Forth,1,Increase on Silent,2,Decrease on Audio,3)][Space(10)]_FragColFresnelMaskALMode("Rotation Mode:", Float) = 0
		[Enum(Raw,0,Smoothed,1)]_FragColFresnelMaskALModeType("Motion Type:", Float) = 0
		_FragColFresnelMaskALSpeed("Rotation Speed:", Range( 0 , 5)) = 0
		[HideInInspector]m_end_FragColFresnelALMaskOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelALColOptions("Fresnel Color:--{reference_property:_FragColFresnelGradientAnimALEnable}", Float) = 0
		[HideInInspector][Toggle(_FRAGCOLFRESNELGRADIENTANIMALENABLE_ON)] _FragColFresnelGradientAnimALEnable("FragColFresnelGradientAnimAudioLinkToggle", Float) = 0
		[HideInInspector]m_start_FragColFresnelALBandSettings("Audio Band Settings", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)]_FragColFresnelGradientAnimALBand("Band:", Float) = 0
		[HideInInspector]m_end_FragColFresnelALBandSettings("", Float) = 0
		[ThryRichLabel]_FragColFresnelALColOptionsNotice("<color=#ebd234ff>Solid color options coming in a future version!❤</color>--{condition_showS:(_FragColFresnelGradientColorFrom!=7 || _FragColFresnelGradientColorType!=2)}", Float) = 0
		[HideInInspector]g_start_FragColFresnelALColOpts("Gradient_Options--{condition_showS:(_FragColFresnelGradientColorFrom==7 && _FragColFresnelGradientColorType==2)}", Float) = 0
		_FragColFresnelGradientAnimALStrength("Effect Strength:", Range( 0 , 1)) = 0
		[Enum(Increase on Audio,0,Back and Forth,1,Increase on Silent,2,Decrease on Audio,3)][Space(10)]_FragColFresnelGradientAnimALMode("Rotation Mode:", Float) = 0
		[Enum(Raw,0,Smoothed,1)]_FragColFresnelGradientAnimALModeType("Motion Type:", Float) = 0
		_FragColFresnelGradientAnimALSpeed("Rotation Speed:", Range( 0 , 5)) = 0
		[HideInInspector]g_end_FragColFresnelALColOpts("Gradient_Options_End", Float) = 0
		[HideInInspector]m_end_FragColFresnelALColOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelALTextureOptions("Fresnel Texture: (Premium Only)--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF},reference_property:_FresnelTexALToggle}", Float) = 0
		[HideInInspector]m_start_FragColFresnelTextureALBandOptions("Audio Band Settings", Float) = 0
		[HideInInspector]m_end_FragColFresnelTextureALBandOptions("", Float) = 0
		[HideInInspector]m_end_FragColFresnelALTextureOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelALTexNRMOptions("Fresnel Texture Distortion: (Premium Only)--{reference_property:_FragColFresnelTexNrmALToggle,condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_start_FragColFresnelTexNRMALBandOptions("Audio Band Settings", Float) = 0
		[HideInInspector]m_end_FragColFresnelTexNRMALBandOptions("", Float) = 0
		[HideInInspector]m_end_FragColFresnelALTexNRMOptions("", Float) = 0
		[HideInInspector]m_start_FragColFresnelALNRMOptions("Fresnel Distortion: (Premium Only)--{reference_property:_FragColFresnelNrmTexALToggle,condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_start_FragColFresnelNRMALBandOptions("Audio Band Settings", Float) = 0
		[HideInInspector]m_end_FragColFresnelNRMALBandOptions("", Float) = 0
		[HideInInspector]m_end_FragColFresnelALNRMOptions("", Float) = 0
		[HideInInspector]m_end_FragColFresnelALOptions("", Float) = 0
		[HideInInspector]m_start_FragColorFlicker("Color Flashing--{reference_property:_EnableALFragColFlicker}", Float) = 0
		[HideInInspector][Toggle(_ENABLEALFRAGCOLFLICKER_ON)] _EnableALFragColFlicker("ALFragColFlickerToggle", Float) = 0
		[HideInInspector]m_start_ALFragColFlickerBandSettings("Audio Band Settings", Float) = 0
		[ThryWideEnum(Default, 0, Curve Based (Premium Only), 1)]_ALFragColFlickerSensitivityType("Volume Sensitivity:--{on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_ALFragColFlickerSensitivityType=0}]}]}", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)][Space(15)]_ALFragColFlickerBand("Band:", Float) = 0
		[Helpbox]_ALFragColFlickerBandSettingsHelpbox1("The settings below this only apply when the effect type is NOT set to ''Color Waves.''--{condition_showS:(_ALFragColMixedValue!=2)}", Float) = 0
		_ALFragColFlickerFilterLevel("Filter Level:--{condition_showS:(_ALFragColMixedValue!=2)}", Range( 0 , 1)) = 0
		_ALFragColFlickerFilterAmount("Filter Amount:--{condition_showS:(_ALFragColMixedValue!=2)}", Range( 0 , 1)) = 0
		[HideInInspector]m_end_ALFragColFlickerBandSettings("", Float) = 0
		[Enum(Harsh Flicker,0,Smooth Transition,1,Color Waves,2,Color Pump,3)][Space(10)]_ALFragColMixedValue("Color Flashing Mode:", Float) = 0
		[Toggle(_ALFRAGCOLFLICKERSWAP_ON)] _ALFragColFlickerSwap("Swap Primary Color:", Float) = 0
		[HideInInspector]m_start_ALFragAltColor("Color Pallet Options", Float) = 0
		[Helpbox]_ALFragAltColorHelpbox1("This option allows you to pick an alt color from the entire color pallet, or choose a custom one. More info about your chosen option can be found below.", Float) = 0
		[Helpbox]_ALFragAltColorHelpbox2("THIS OPTION WILL USE THE COLORS OF THE OBJECT/MESH VERTEXES, USEFUL FOR VERTEX PAINTED OBJECTS. (Saber trails also use this.)--{condition_showS:(_ALFragAltColorValue==0)}", Float) = 0
		[Helpbox]_ALFragAltColorHelpbox3("THE SABER COLOR OPTIONS REQUIRE USERS TO HAVE SABER FACTORY INSTALLED, THEY PULL THEIR VALUES FROM THE GLOBAL VARIABLES IT CREATES.--{condition_showS:(_ALFragAltColorValue==1||_ALFragAltColorValue==2)}", Float) = 0
		[Helpbox]_ALFragAltColorHelpbox4("THE LIGHT AND BOOST COLOR OPTIONS REQUIRE USERS TO HAVE AUDIO LINK MOD INSTALLED, THEY PULL THEIR VALUES FROM THE GLOBAL VARIABLES IT CREATES.--{condition_showS:(_ALFragAltColorValue>2&&_ALFragAltColorValue<7)}", Float) = 0
		[Helpbox]_ALFragAltColorHelpbox5("THE _Color OPTION PULLS FROM THE BASE COLOR VARIABLE OFTEN USED BY THE CUSTOM COLORS TOGGLE, THIS IS ONLY NEEDED OF YOU OVERRIDE THE MAIN COLOR FOR ANY REASON BUT STILL WANT CC AS AN ALT COLOR.--{condition_show:{type:DROPDOWN,data:_ALFragAltColorValue==7}}", Float) = 0
		[Helpbox]_ALFragAltColorHelpbox6("THE CUSTOM OPTION ALLOWS YOU TO SET A STATIC ALT COLOR, THIS DOES NOT PULL FROM THE COLOR PALLET NOR USES THE CUSTOM COLOR VARIABLE.--{condition_show:{type:DROPDOWN,data:_ALFragAltColorValue==8}}", Float) = 0
		[ThryWideEnum(Object Vertex Color, 0, Saber Left, 1, Saber Right, 2, Light Left, 3, Light Right, 4, Boost Left, 5, Boost Right, 6, _Color, 7, Custom, 8)]_ALFragAltColorValue("Get Color From:--{tooltip:This lets you pick which part of the user color palette the material will get its color from.}", Float) = 0
		[HideInInspector][NonModifiableTextureData]_Color("_Color", Color) = (1,1,1,1)
		_ALFragAltColor("Color:--{condition_show:{type:DROPDOWN,data:_ALFragAltColorValue==8}}", Color) = (0,0,0,1)
		[HideInInspector]m_end_ALFragAltColor("", Float) = 0
		[HideInInspector]m_start_ALFragColFlickerModeOptions("Mode Settings--{condition_showS:(_ALFragColMixedValue!=1)}", Float) = 0
		_ALFragColFlickerThreshold("Flicker Threshold:--{condition_show:{type:PROPERTY_BOOL,data:_ALFragColMixedValue==0}}", Range( 0 , 1)) = 0.5
		_FragColAltMaskAngle("Shift Angle:--{condition_showS:(_ALFragColMixedValue==3)}", Range( 0 , 1)) = 0
		[ToggleUI]_FragColAltMaskNegate("Invert Direction:--{condition_showS:(_ALFragColMixedValue==3)}", Float) = 0
		[Helpbox][Space(5)]_FragColAltMaskHelpbox1("If the alt color isn't fully hidden on silent, or fully covering on max audio level, Enable setup mode to change the max and min coverage values.--{condition_showS:(_ALFragColMixedValue==3&&_FragColAltMaskSetupMode==0)}", Float) = 0
		[Helpbox][Space(5)]_FragColAltMaskHelpbox2("MAKE SURE TO DISABLE SETUP MODE WHEN YOU'RE DONE TO REACTIVATE AUDIO LINK ON THIS EFFECT.--{condition_showS:(_ALFragColMixedValue==3&&_FragColAltMaskSetupMode==1)}", Float) = 0
		[Toggle(_FRAGCOLALTMASKSETUPMODE_ON)] _FragColAltMaskSetupMode("Setup Mode (Disables AL):--{condition_showS:(_ALFragColMixedValue==3)}", Float) = 0
		[Space(5)]_FragColAltMaskStrength("Coverage Intensity:--{condition_showS:(_ALFragColMixedValue==3&&_FragColAltMaskSetupMode==1)}", Range( 0 , 1)) = 0
		_FragColAltMaskMinimum("Coverage Minimum:--{condition_showS:(_ALFragColMixedValue==3&&_FragColAltMaskSetupMode==1)}", Float) = -1
		_FragColAltMaskMaximum("Coverage Maximum:--{condition_showS:(_ALFragColMixedValue==3&&_FragColAltMaskSetupMode==1)}", Float) = 1
		_ALFragColFlickerPumpHistory("Wave Density:--{condition_showS:(_ALFragColMixedValue==2)}", Range( 0 , 128)) = 32
		_ALFragColFlickerPumpAngle("Shift Angle:--{condition_showS:(_ALFragColMixedValue==2)}", Range( 0 , 1)) = 0
		[ToggleUI]_ALFragColFlickerPumpInvert("Invert Direction:--{condition_showS:(_ALFragColMixedValue==2)}", Float) = 0
		[ToggleUI]_ALFragColFlickerPumpSmooth("Smooth Waves:--{condition_showS:(_ALFragColMixedValue==2)}", Float) = 1
		[HideInInspector]m_end_ALFragColFlickerModeOptions("", Float) = 0
		[HideInInspector]m_start_ALFragColFlickerGradientSettings("Mask Settings (Premium Only)--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_start_ALFragColFlickerGradientALAni("Mask AudioLink Settings", Float) = 0
		[HideInInspector]m_end_ALFragColFlickerGradientALAni("", Float) = 0
		[HideInInspector]m_end_ALFragColFlickerGradientSettings("", Float) = 0
		[HideInInspector]m_end_FragColorFlicker("", Float) = 0
		[HideInInspector]m_start_ALFragGlow("Glow Pump--{reference_property:_EnableALFragGlow}", Float) = 0
		[HideInInspector][Toggle(_ENABLEALFRAGGLOW_ON)] _EnableALFragGlow("ALFragGlowToggle", Float) = 0
		[HideInInspector]m_start_ALFragGlowBandSettings("Audio Band Settings", Float) = 0
		[ThryWideEnum(Default, 0, Curve Based (Premium Only), 1)]_ALFragGlowSensitivityType("Volume Sensitivity:--{on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_ALFragGlowSensitivityType=0}]}]}", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)][Space(15)]_ALFragGlowBand("Band:", Float) = 0
		_ALFragGlowFilterLevel("Filter Level:--{condition_showS:(_ALFragGlowMode==0)}", Range( 0 , 1)) = 0
		_ALFragGlowFilterAmount("Filter Amount:--{condition_showS:(_ALFragGlowMode==0)}", Range( 0 , 1)) = 0
		[HideInInspector]m_end_ALFragGlowBandSettings("", Float) = 0
		[Helpbox]_ALFragGlowPumpHelpbox1("This effect is additive, it will scale on top of the initial glow value.", Float) = 0
		_ALFragGlowStrength("Glow Pump Strength:", Range( 0 , 6)) = 0
		[Enum(Unmasked,0,Wave Masked,1)]_ALFragGlowMode("Effect Type:", Float) = 0
		[HideInInspector]m_start_ALFragGlowWaveSettings("Wave settings--{condition_showS:(_ALFragGlowMode==1)}", Float) = 0
		_ALFragGlowWaveFilterHistory("Wave Density:--{condition_showS:(_ALFragGlowMode==1)}", Range( 0 , 128)) = 32
		_ALFragGlowWaveAngle1("Shift Angle:--{condition_showS:(_ALFragGlowMode==1)}", Range( 0 , 1)) = 0
		[ToggleUI]_ALFragGlowWaveNegate("Invert Direction:--{condition_showS:(_ALFragGlowMode==1)}", Float) = 0
		[ToggleUI]_ALFragGlowWaveSmooth("Smooth Waves:--{condition_showS:(_ALFragGlowMode==1)}", Float) = 1
		[HideInInspector]m_end_ALFragGlowWaveSettings("--{condition_showS:(_ALFragGlowMode==1)}", Float) = 0
		[HideInInspector]m_end_ALFragGlow("", Float) = 0
		[HideInInspector]m_start_ALVOScale("Object Scale--{reference_property:_EnableALVOScale}", Float) = 0
		[HideInInspector][Toggle(_ENABLEALVOSCALE_ON)] _EnableALVOScale("ALVertToggle", Float) = 0
		[HideInInspector]m_start_ALVOScaleBandSettings("Audio Band Settings", Float) = 0
		[ThryWideEnum(Default, 0, Curve Based (Premium Only), 1)]_ALVOVertSensitivityType("Volume Sensitivity:--{on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_ALVOVertSensitivityType=0}]}]}", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)][Space(15)]_ALVOVertBand("Band:", Float) = 0
		[Helpbox]_ALVOScaleBandSettingsHelpbox1("The settings below this only apply when the effect type is set to ''Uniform''--{condition_showS:(_ALVOVertScaleType==0)}", Float) = 0
		_ALVOVertFilterLevel("Filter Level:--{condition_showS:(_ALVOVertScaleType==0)}", Range( 0 , 1)) = 0
		_ALVOVertFilterAmount("Filter Amount:--{condition_showS:(_ALVOVertScaleType==0)}", Range( 0 , 1)) = 0
		[HideInInspector]m_end_ALVOScaleBandSettings("", Float) = 0
		[Enum(X,0,Y,1,Z,2,Custom,3)]_ALVOVertScaleAxisValue("Affected Axis:--{tooltip:The axis that this effect will infuence.}", Float) = 0
		[Vector3]_ALVOVertScaleCustAxis("Custom Axis:--{tooltip:The axis that this effect will infuence.,condition_show:{type:DROPDOWN,data:_ALVOVertScaleAxisValue==3}}", Vector) = (1,1,1,0)
		_ALVOVertScaleStrength("Scale Strength:", Range( 0 , 1)) = 0
		[Enum(Uniform,0,Waves,1)]_ALVOVertScaleType("Scale Type:", Float) = 0
		[HideInInspector]m_start_ALVOVertScaleSpecial("Special Option--{button_help:{text:Example.,action:{type:URL,data:https://share.alexxseven.com/u/MelodiWaveExample}}}", Float) = 0
		[Helpbox]m_start_ALVOVertScaleSpecialHelpbox1("This setting is intended for objects with un-smoothed faces. It's unaffected by the object scale axis settings and affects X, Y, Z equally. Click the ''?'' above for an example of what it does.", Float) = 0
		_ALVOVertRotStrength("Vertex Rotation Strength:", Range( 0 , 1)) = 0
		[HideInInspector]m_end_ALVOVertScaleSpecial("", Float) = 0
		[HideInInspector]m_start_ALVOVertScaleMaskOptions("Mask Settings (Premium Only)--{condition_enable:{type:PROPERTY_BOOL,data:_MPKF}}", Float) = 0
		[HideInInspector]m_start_ALVOVertScaleMaskALAnimateOptions("Mask AudioLink Settings", Float) = 0
		[HideInInspector]m_end_ALVOVertScaleMaskALAnimateOptions("", Float) = 0
		[HideInInspector]m_end_ALVOVertScaleMaskOptions("", Float) = 0
		[HideInInspector]m_start_ALVOVertScaleWaveOptions("Wave Settings--{condition_showS:(_ALVOVertScaleType==1)}", Float) = 0
		_ALVOVertScaleWaveHistory("Wave Intnsity:--{condition_showS:(_ALVOVertScaleType==1)}", Range( 0 , 128)) = 32
		_ALVOVertScaleWaveAngle("Shift Angle:--{condition_showS:(_ALVOVertScaleType==1)}", Range( 0 , 1)) = 0
		[ToggleUI]_ALVOVertScaleWaveInvert("Invert Direction:--{condition_showS:(_ALVOVertScaleType==1)}", Float) = 0
		[ToggleUI]_ALVOVertScaleWaveSmooth("Smooth Waves:--{condition_showS:(_ALVOVertScaleType==1)}", Float) = 1
		[HideInInspector]m_end_ALVOVertScaleWaveOptions("", Float) = 0
		[HideInInspector]m_end_ALVOScale("", Float) = 0
		[HideInInspector]m_start_ALVORot("Object Rotation--{reference_property:_EnableALVORot}", Float) = 0
		[HideInInspector][Toggle(_ENABLEALVOROT_ON)] _EnableALVORot("ALVertRotToggle", Float) = 0
		[HideInInspector]m_start_ALVOBandSettings("Audio Band Settings", Float) = 0
		[Helpbox]_ALVOBandSettingsHelpbox1("Some settings in this section only apply when the effect type is set to ''Position Reset''--{condition_show:{type:DROPDOWN,data:_ALVORotEffectMode==0}}", Float) = 0
		[ThryWideEnum(Default, 0, Curve Based (Premium Only), 1)]_ALVORotSensitivityType("Volume Sensitivity:--{condition_show:{type:DROPDOWN,data:_ALVORotEffectMode==1},on_value_actions:[{value:1,actions:[{type:SET_PROPERTY,data:_ALVORotSensitivityType=0}]}]}", Float) = 0
		[Enum(Bass,0,Mid Low,1,Mid High,2,Treble,3)][Space(15)]_ALVORotBand("Band:", Float) = 0
		_ALVORotFilterLevel("Filter Level:--{condition_show:{type:DROPDOWN,data:_ALVORotEffectMode==1}}", Range( 0 , 1)) = 0
		_ALVORotFilterAmount("Filter Amount:--{condition_show:{type:DROPDOWN,data:_ALVORotEffectMode==1}}", Range( 0 , 1)) = 0
		[HideInInspector]m_end_ALVOBandSettings("", Float) = 0
		[Enum(Consistent Add,0,Position Reset,1)]_ALVORotEffectMode("Effect Type:", Float) = 0
		_ALVORotStrength("Effect Strength", Range( 0 , 1)) = 1
		[HideInInspector]m_start_ALVORotModeSettings("Rotation Settings", Float) = 0
		[ToggleUI]_EnableALVORotate("Randomize Axis:", Float) = 0
		[Helpbox]_ALVORotHelpbox1("''Randomize Axis'' is multiplicative with the axis settings set in the ''object rotation'' settings outside of audio link.", Float) = 0
		[Enum(Increase on Audio,0,Back and Forth,1,Increase on Silent,2,Decrease on Audio,3)]_ALVORotMode("Rotation Mode:", Float) = 0
		[Enum(Raw,0,Smoothed,1)]_ALVORotModeType("Motion Type:", Float) = 0
		_ALVORotSpeed("Rotation Speed:", Range( 0 , 5)) = 0
		[HideInInspector]m_end_ALVORotModeSettings("", Float) = 0
		[HideInInspector]m_end_ALVORot("", Float) = 0
		[HideInInspector]footer_KoFi("{texture:{name:icon-KoFi,height:16},action:{type:URL,data:https://ko-fi.com/alexxseven},hover:Ko-Fi}", Float) = 0
		[HideInInspector]footer_Twitter("{texture:{name:icon-Twitter,height:16},action:{type:URL,data:https://twitter.com/AlexxSeven},hover:Twitter}", Float) = 0
		[HideInInspector]footer_Twitch("{texture:{name:icon-Twitch,height:16},action:{type:URL,data:https://www.twitch.tv/alexxseven},hover:Twitch}", Float) = 0
		[HideInInspector]footer_Discord("{texture:{name:icon-Discord,height:16},action:{type:URL,data:https://discord.alexxseven.com/},hover:Discord}", Float) = 0
		[HideInInspector]footer_Beacons("{texture:{name:icon-Beacons,height:16},action:{type:URL,data:https://beacons.ai/alexxseven},hover:Beacons}", Float) = 0

	}

	SubShader
	{
		
		Tags { "RenderType"="Opaque" "Queue"="Geometry" "DisableBatching"="False" "PreviewType"="Sphere" }
	LOD 0

		Cull [_CullMode]
		AlphaToMask Off
		ZWrite [_ZWriteDepth]
		ZTest [_ZTestMode]
		ColorMask RGBA
		
		Blend [_SrcBlend] [_DstBlend]
		

		CGINCLUDE
		#pragma target 4.0

		float4 FixedTess( float tessValue )
		{
			return tessValue;
		}

		float CalcDistanceTessFactor (float4 vertex, float minDist, float maxDist, float tess, float4x4 o2w, float3 cameraPos )
		{
			float3 wpos = mul(o2w,vertex).xyz;
			float dist = distance (wpos, cameraPos);
			float f = clamp(1.0 - (dist - minDist) / (maxDist - minDist), 0.01, 1.0) * tess;
			return f;
		}

		float4 CalcTriEdgeTessFactors (float3 triVertexFactors)
		{
			float4 tess;
			tess.x = 0.5 * (triVertexFactors.y + triVertexFactors.z);
			tess.y = 0.5 * (triVertexFactors.x + triVertexFactors.z);
			tess.z = 0.5 * (triVertexFactors.x + triVertexFactors.y);
			tess.w = (triVertexFactors.x + triVertexFactors.y + triVertexFactors.z) / 3.0f;
			return tess;
		}

		float CalcEdgeTessFactor (float3 wpos0, float3 wpos1, float edgeLen, float3 cameraPos, float4 scParams )
		{
			float dist = distance (0.5 * (wpos0+wpos1), cameraPos);
			float len = distance(wpos0, wpos1);
			float f = max(len * scParams.y / (edgeLen * dist), 1.0);
			return f;
		}

		float DistanceFromPlane (float3 pos, float4 plane)
		{
			float d = dot (float4(pos,1.0f), plane);
			return d;
		}

		bool WorldViewFrustumCull (float3 wpos0, float3 wpos1, float3 wpos2, float cullEps, float4 planes[6] )
		{
			float4 planeTest;
			planeTest.x = (( DistanceFromPlane(wpos0, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[0]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[0]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.y = (( DistanceFromPlane(wpos0, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[1]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[1]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.z = (( DistanceFromPlane(wpos0, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[2]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[2]) > -cullEps) ? 1.0f : 0.0f );
			planeTest.w = (( DistanceFromPlane(wpos0, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos1, planes[3]) > -cullEps) ? 1.0f : 0.0f ) +
						  (( DistanceFromPlane(wpos2, planes[3]) > -cullEps) ? 1.0f : 0.0f );
			return !all (planeTest);
		}

		float4 DistanceBasedTess( float4 v0, float4 v1, float4 v2, float tess, float minDist, float maxDist, float4x4 o2w, float3 cameraPos )
		{
			float3 f;
			f.x = CalcDistanceTessFactor (v0,minDist,maxDist,tess,o2w,cameraPos);
			f.y = CalcDistanceTessFactor (v1,minDist,maxDist,tess,o2w,cameraPos);
			f.z = CalcDistanceTessFactor (v2,minDist,maxDist,tess,o2w,cameraPos);

			return CalcTriEdgeTessFactors (f);
		}

		float4 EdgeLengthBasedTess( float4 v0, float4 v1, float4 v2, float edgeLength, float4x4 o2w, float3 cameraPos, float4 scParams )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;
			tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
			tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
			tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
			tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			return tess;
		}

		float4 EdgeLengthBasedTessCull( float4 v0, float4 v1, float4 v2, float edgeLength, float maxDisplacement, float4x4 o2w, float3 cameraPos, float4 scParams, float4 planes[6] )
		{
			float3 pos0 = mul(o2w,v0).xyz;
			float3 pos1 = mul(o2w,v1).xyz;
			float3 pos2 = mul(o2w,v2).xyz;
			float4 tess;

			if (WorldViewFrustumCull(pos0, pos1, pos2, maxDisplacement, planes))
			{
				tess = 0.0f;
			}
			else
			{
				tess.x = CalcEdgeTessFactor (pos1, pos2, edgeLength, cameraPos, scParams);
				tess.y = CalcEdgeTessFactor (pos2, pos0, edgeLength, cameraPos, scParams);
				tess.z = CalcEdgeTessFactor (pos0, pos1, edgeLength, cameraPos, scParams);
				tess.w = (tess.x + tess.y + tess.z) / 3.0f;
			}
			return tess;
		}
		ENDCG

		
		Pass
		{
			
			Name "ForwardBase"
			Tags { "LightMode"="ForwardBase" }

			Blend [_SrcBlend] [_DstBlend]

			CGPROGRAM
			#pragma multi_compile_instancing
			#define _SPECULAR_SETUP 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_NO_AMBIENT 1

			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#ifndef UNITY_PASS_FORWARDBASE
				#define UNITY_PASS_FORWARDBASE
			#endif
			#include "HLSLSupport.cginc"
			#ifndef UNITY_INSTANCED_LOD_FADE
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#ifndef UNITY_INSTANCED_SH
				#define UNITY_INSTANCED_SH
			#endif
			#ifndef UNITY_INSTANCED_LIGHTMAPSTS
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"

			#include "UnityStandardUtils.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_VERT_NORMAL
			#define ASE_NEEDS_VERT_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_FRAG_COLOR
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#pragma shader_feature_local_fragment _FRAGCOLDISTORTIONGENTEX_ON
			#pragma shader_feature_local_fragment _DODGECOLORS_ON
			#pragma shader_feature_local_vertex _ENABLEALVOROT_ON
			#pragma shader_feature_local_vertex _ENABLEALVOSCALE_ON
			#pragma shader_feature_local_fragment _TRAILMASKTEXTOGGLE_ON
			#pragma shader_feature_local_fragment _FRAGCOLFRESNELENABLE_ON
			#pragma shader_feature_local_fragment _MAINTEXANIMATIONALENABLE_ON
			#pragma shader_feature_local_fragment _ENABLEFRAGCOLDISTORTION_ON
			#pragma shader_feature_local_fragment _FRAGCOLDISTORTIONALANIMATIONENABLED_ON
			#pragma shader_feature_local_fragment _ENABLEALFRAGCOLFLICKER_ON
			#pragma shader_feature_local_fragment _BSGRADIENTANIMALENABLE_ON
			#pragma multi_compile_local_fragment __ _ALFRAGCOLFLICKERSWAP_ON
			#pragma multi_compile_local_fragment __ _FRAGCOLALTMASKSETUPMODE_ON
			#pragma shader_feature_local_fragment _FRAGCOLFRESNELGRADIENTANIMALENABLE_ON
			#pragma shader_feature_local_fragment _FRESNELSCALEALTOGGLE_ON
			#pragma shader_feature_local_fragment _FRESNELPOWERALTOGGLE_ON
			#pragma shader_feature_local_fragment _ENABLEALFRAGGLOW_ON
			#include "Assets/AlexxSeven/Resources/Scripts/Includes/CG_AudioLink.cginc"

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if defined(LIGHTMAP_ON) || (!defined(LIGHTMAP_ON) && SHADER_TARGET >= 30)
					float4 lmap : TEXCOORD0;
				#endif
				#if !defined(LIGHTMAP_ON) && UNITY_SHOULD_SAMPLE_SH
					half3 sh : TEXCOORD1;
				#endif
				#if defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS) && UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(2,3)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(2)
					#else
						SHADOW_COORDS(2)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(4)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_color : COLOR;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

			#ifdef ASE_TRANSMISSION
				float _TransmissionShadow;
			#endif
			#ifdef ASE_TRANSLUCENCY
				float _TransStrength;
				float _TransNormal;
				float _TransScattering;
				float _TransDirect;
				float _TransAmbient;
				float _TransShadow;
			#endif
			#ifdef ASE_TESSELLATION
				float _TessPhongStrength;
				float _TessValue;
				float _TessMin;
				float _TessMax;
				float _TessEdgeLength;
				float _TessMaxDisp;
			#endif
			uniform float m_end_ALFragGlowWaveSettings;
			uniform float m_end_ALVOVertScaleMaskOptions;
			uniform float _ALFragColFlickerBandSettingsHelpbox1;
			uniform float m_end_EmisMaskNrmAnimOptions;
			uniform float m_end_FragColFresnelMaskOptions;
			uniform float _DstBlend;
			uniform float m_start_ALVOVertScaleMaskALAnimateOptions;
			uniform float _ALVOScaleBandSettingsHelpbox1;
			uniform float _ALVOVertSensitivityType;
			uniform float m_start_EmisMaskNrmAnimOptions;
			uniform float m_start_FragColFresnelMaskOptions1;
			uniform float m_start_ALFragGlowWaveSettings;
			uniform float m_end_FragColDistortionGenOptions;
			uniform sampler2D _ALVORotMask;
			uniform float m_end_EmisMaskAnimOptions;
			uniform float m_start_ALVOVertScaleSpecial;
			uniform float m_end_ALVOVertScaleMaskALAnimateOptions;
			uniform float m_end_FragColFresnelMaskAnimOptionss;
			uniform float m_start_ALVOVertScaleSpecialHelpbox1;
			uniform float _CullMode;
			uniform float _ALVORotSensitivityType;
			uniform float m_end_ALVOVertScaleSpecial;
			uniform float _FragColFresnelScaleSensitivityType;
			uniform float m_end_EmisMaskNrmGenOptions;
			uniform float m_start_ALVOVertScaleWaveOptions;
			uniform float m_start_FragColDistortionGenOptions;
			uniform float _ALVORotHelpbox1;
			uniform float m_start_EmisMaskAnimOptions;
			uniform float _FragColDistortionTexMode;
			uniform float _ALFragColFlickerSensitivityType;
			uniform float _SrcBlend;
			uniform float _ALFragGlowSensitivityType;
			uniform float m_end_ALVOVertScaleWaveOptions;
			uniform float m_start_FragColFresnelMaskAnimOptions;
			uniform float m_start_ALVOVertScaleMaskOptions;
			uniform float m_start_EmisMaskNrmGenOptions;
			uniform float _FragColFresnelPowerSensitivityType;
			uniform float _ShaderOptimizerEnabled;
			uniform float shader_is_using_thry_editor;
			uniform float _shaderUnlockedWarning;
			uniform float _MainTexMode;
			uniform float _ZWriteDepth;
			uniform float _ShaderLitMode;
			uniform float _LockTooltip;
			uniform float m_start_ALDebugOption;
			uniform float _ShaderALDebugTip;
			uniform float _FragColFresnelALColOptionsNotice;
			uniform float _FragColAltMaskHelpbox2;
			uniform float _FragColAltMaskHelpbox1;
			uniform float _CustomColors;
			uniform float4 _Color;
			uniform float m_end_ALDebugOption;
			uniform float _MatPreviewType;
			uniform float _alphaMode;
			uniform float _FragColFresnelMaskScreenSpace;
			uniform float _shaderALDisabledWarning;
			uniform float _ZTestMode;
			uniform float _TrailMaskTexNrmGen;
			uniform float _TrailMaskTexNrmScreenSpace;
			uniform float _TrailMaskGlowBypass;
			uniform float _editorVersionLowerWarning;
			uniform float _editorVersionHigherWarning;
			uniform float _editorVersionHigherWarning1;
			uniform float Instancing;
			uniform float _VORotAxisMode;
			uniform float _VORotAxisValue;
			uniform float3 _VORotCustAxis;
			uniform float _mainALDebug;
			uniform float _EnableALVORotate;
			uniform float _ALVORotBand;
			uniform float _ALVORotMode;
			uniform float _ALVORotModeType;
			uniform float _ALVORotSpeed;
			uniform float _InvertVORot;
			uniform float _VORotSpeed;
			uniform float _ALVORotStrength;
			uniform float _ALVORotEffectMode;
			uniform float _ALVORotFilterLevel;
			uniform float _ALVORotFilterAmount;
			uniform float _ALVOVertScaleAxisValue;
			uniform float3 _ALVOVertScaleCustAxis;
			uniform float _ALVOVertScaleType;
			uniform float _ALVOVertBand;
			uniform float _ALVOVertFilterLevel;
			uniform float _ALVOVertFilterAmount;
			uniform float _ALVOVertScaleWaveSmooth;
			uniform float _ALVOVertScaleWaveHistory;
			uniform float _ALVOVertScaleWaveInvert;
			uniform float _ALVOVertScaleWaveAngle;
			uniform float _ALVOVertScaleStrength;
			uniform float _ALVOVertRotStrength;
			uniform float _MainTexChannel;
			uniform float _TexModeMatcap;
			uniform sampler2D _MainTex;
			uniform float _MainTexAnimationSpeed;
			uniform float _MainTexAnimationALBand;
			uniform float _MainTexAnimationALMode;
			uniform float _MainTexAnimationALModeType;
			uniform float _MainTexAnimationALSpeed;
			uniform float _MainTexAnimationALStrength;
			uniform float _MainTexAnimationInvert;
			uniform float _MainTexAnimationAniAngle;
			uniform float4 _MainTex_ST;
			uniform float _MainTexAnimationAngle;
			uniform sampler2D _FragColDistortionTex;
			uniform float _FragColDistortionTexAnimationSpeed;
			uniform float _FragColDistortionALAnimationStrength;
			uniform float _FragColDistortionALAnimationBand;
			uniform float _FragColDistortionALAnimationMode;
			uniform float _FragColDistortionALAnimationModeType;
			uniform float _FragColDistortionALAnimationSpeed;
			uniform float _FragColDistortionTexAnimationInvert;
			uniform float _FragColDistortionTexAnimationAngle;
			uniform float4 _FragColDistortionTex_ST;
			uniform float _FragColDistortionTexAngle;
			uniform float _FragColDistortionTexScale;
			uniform float _Cutoff;
			uniform float _AltSaberColor;
			uniform float _BSColorType;
			uniform sampler2D _BSColorGradient;
			uniform float _BSGradientAnimSpeed;
			uniform float _BSGradientAnimALBand1;
			uniform float _BSGradientAnimALMode1;
			uniform float _BSGradientAnimALModeType1;
			uniform float _BSGradientAnimALSpeed1;
			uniform float _BSGradientAnimALStrength;
			uniform float _EmisAltColorGradientInvert;
			uniform float _BSGradientScale;
			uniform float4 _BSColorGradient_ST;
			uniform float _BSGradientAngle;
			uniform float _CCOverrideFrom;
			uniform float4 _UserColorLeft;
			uniform float4 _UserColorRight;
			uniform float _ALFragColMixedValue;
			uniform float _ALFragColFlickerBand;
			uniform float _ALFragColFlickerFilterLevel;
			uniform float _ALFragColFlickerFilterAmount;
			uniform float _ALFragColFlickerThreshold;
			uniform float _ALFragAltColorValue;
			uniform float4 _ALFragAltColor;
			uniform float _ALFragColFlickerPumpSmooth;
			uniform float _ALFragColFlickerPumpInvert;
			uniform float _ALFragColFlickerPumpAngle;
			uniform float _ALFragColFlickerPumpHistory;
			uniform float _FragColAltMaskNegate;
			uniform float _FragColAltMaskAngle;
			uniform float _FragColAltMaskStrength;
			uniform float _FragColAltMaskMinimum;
			uniform float _FragColAltMaskMaximum;
			uniform float _FragColFresnelGradientColorFrom;
			uniform float _FragColFresnelGradientColorType;
			uniform sampler2D _FragColFresnelGradientTexture;
			uniform float _FragColFresnelGradientAnimSpeed;
			uniform float _FragColFresnelGradientAnimALBand;
			uniform float _FragColFresnelGradientAnimALMode;
			uniform float _FragColFresnelGradientAnimALModeType;
			uniform float _FragColFresnelGradientAnimALSpeed;
			uniform float _FragColFresnelGradientAnimALStrength;
			uniform float _FragColFresnelGradientInvert;
			uniform float _FragColFresnelGradientScale;
			uniform float4 _FragColFresnelGradientTexture_ST;
			uniform float _FragColFresnelGradientAngle;
			uniform float4 _FragColFresnelGradientCustomColor;
			uniform float _FragColFresnelScale;
			uniform float _FragColFresnelScaleALBlend;
			uniform float _FragColFresnelScaleALStrength;
			uniform float _FragColFresnelScaleALType;
			uniform float _FragColFresnelScaleALBand;
			uniform float _FragColFresnelScaleALFilterLevel;
			uniform float _FragColFresnelScaleALFilterAmount;
			uniform float _FragColFresnelScaleALWaveSmooth;
			uniform float _FragColFresnelScaleALWaveDensity;
			uniform float _FragColFresnelScaleALWaveInvert;
			uniform float _FragColFresnelScaleALWaveDirection;
			uniform float _FragColFresnelPower;
			uniform float _FragColFresnelPowerALBlend;
			uniform float _FragColFresnelPowerALStrength;
			uniform float _FragColFresnelPowerALType;
			uniform float _FragColFresnelPowerALBand;
			uniform float _FragColFresnelPowerALFilterLevel;
			uniform float _FragColFresnelPowerALFilterAmount;
			uniform float _FragColFresnelPowerALWaveSmooth;
			uniform float _FragColFresnelPowerALWaveDensity;
			uniform float _FragColFresnelPowerALWaveInvert;
			uniform float _FragColFresnelPowerALWaveDirection;
			uniform float _FragColFresnelMaskChannel;
			uniform sampler2D _FragColFresnelMask;
			uniform float _FragColFresnelMaskALToggle;
			uniform float _FragColFresnelMaskAnimationSpeed;
			uniform float _FragColFresnelMaskALBand;
			uniform float _FragColFresnelMaskALMode;
			uniform float _FragColFresnelMaskALModeType;
			uniform float _FragColFresnelMaskALSpeed;
			uniform float _FragColFresnelMaskALStrength;
			uniform float _FragColFresnelMaskInvert;
			uniform float _FragColFresnelMaskAnimationAngle;
			uniform float4 _FragColFresnelMask_ST;
			uniform float _FragColFresnelMaskAngle;
			uniform float _Glow;
			uniform float _ALFragGlowMode;
			uniform float _ALFragGlowBand;
			uniform float _ALFragGlowFilterLevel;
			uniform float _ALFragGlowFilterAmount;
			uniform float _ALFragGlowWaveSmooth;
			uniform float _ALFragGlowWaveFilterHistory;
			uniform float _ALFragGlowWaveNegate;
			uniform float _ALFragGlowWaveAngle1;
			uniform float _ALFragGlowStrength;
			uniform float _TrailMaskTexChannel;
			uniform sampler2D _TrailMaskTex;
			uniform float _TrailMaskTexDistortToggle;
			uniform float4 _TrailMaskTex_ST;
			uniform sampler2D _TrailMaskTexNrm;
			uniform float _TrailMaskTexNrmALToggle;
			uniform float _TrailMaskTexNrmAnimationSpeed;
			uniform float _TrailMaskTexNrmALBand;
			uniform float _TrailMaskTexNrmALMode;
			uniform float _TrailMaskTexNrmALModeType;
			uniform float _TrailMaskTexNrmALSpeed;
			uniform float _TrailMaskTexNrmALStrength;
			uniform float _TrailMaskTexNrmInvert;
			uniform float _TrailMaskTexNrmAnimationAngle;
			uniform float4 _TrailMaskTexNrm_ST;
			uniform float _TrailMaskTexNrmAngle;
			uniform float _TrailMaskTexNrmScale;


			float IfAudioLinkExists(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			float3 IfAxisDrop( float Value, float3 Output1, float3 Output2, float3 Output3, float3 Output4 )
			{
				if (Value == 0) {
					return Output1;
				}
				else if (Value == 1) {
					return Output2;
				}
				else if(Value == 2) {
					return Output3;
				}
				else {
					return Output4;
				}
			}
			
			int OutputOppositeBands( float BandIn, out int Out2, out int Out3 )
			{
				if (BandIn == 1) {
					Out2 = 2;
					Out3 = 3;
					return 0;
				} else if (BandIn == 2) {
					Out2 = 0;
					Out3 = 3;
					return 1;
				} else if (BandIn == 3) {
					Out2 = 2;
					Out3 = 0;
					return 1;
				} else {
					Out2 = 2;
					Out3 = 3;
					return 1;
				}
			}
			
			inline float AudioLinkDecodeDataAsUInt( uint Band, uint Mode )
			{
				return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
			}
			
			inline float AudioLinkLerp( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			float4 ChannelValueSelector( float Value, float4 In1 )
			{
				if(Value == 0) {
					return In1.x;
				} else if (Value == 1) {
					return In1.y;
				} else if (Value == 2) {
					return In1.z;
				} else if (Value == 3) {
					return In1.w;
				} else {
					return In1;
				}
			}
			
			float4 AlphaClip( float4 ColIn, float Cutoff )
			{
				if (ColIn[0] < Cutoff) discard; return ColIn;
			}
			
			float4 BSIfColDrop( float ALExists, float Value, float4 Output1, float4 Output2, float4 Output3, float4 Output4, float4 Output5, float4 Output6, float4 Output7, float4 Output8 )
			{
				if (Value == 0) {
					return Output1;
				}
				else if (Value == 1) {
					return Output2;
				}
				else if(Value == 2) {
					return Output3;
				}
				else {
					if(ALExists == 1) {
						if(Value == 3) {
							return Output4;
						}
						else if(Value == 4) {
							return Output5;
						}
						else if(Value == 5) {
							return Output6;
						}
						else {
							return Output7;
						}
					}
					else {
						return Output8;
					}
				}
			}
			
			float4 IfColDrop( float ALExists, float Value, float4 Output1, float4 Output2, float4 Output3, float4 Output4, float4 Output5, float4 Output6, float4 Output7, float4 Output8, float4 Output9 )
			{
				if (Value == 0) {
					return Output1;
				}
				else if (Value == 1) {
					return Output2;
				}
				else if(Value == 2) {
					return Output3;
				}
				else if(Value >= 3 && Value <=6) {
					if(ALExists == 1) {
						if(Value == 3) {
							return Output4;
						}
						else if(Value == 4) {
							return Output5;
						}
						else if(Value == 5) {
							return Output6;
						}
						else {
							return Output7;
						}
					}
					else {
						return Output9;
					}
				}
				else if(Value == 7) {
					return Output8;
				}
				else {
					return Output9;
				}
			}
			
			float4 ALFragColMixedMode1000( float Value, float4 Function1, float4 Function2, float4 Function3, float4 Function4 )
			{
				if(Value == 0) {
					return Function1;
				} else if (Value == 1) {
					return Function2;
				} else if (Value == 2) {
					return Function3;
				} else {
					return Function4;
				}
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float CustomAxisValue8_g1169 = _VORotAxisValue;
				float Value24_g1169 = CustomAxisValue8_g1169;
				float3 Output124_g1169 = float3(1,0,0);
				float3 Output224_g1169 = float3(0,1,0);
				float3 Output324_g1169 = float3(0,0,1);
				float3 Output424_g1169 = _VORotCustAxis;
				float3 localIfAxisDrop24_g1169 = IfAxisDrop( Value24_g1169 , Output124_g1169 , Output224_g1169 , Output324_g1169 , Output424_g1169 );
				float3 temp_output_1784_0 = localIfAxisDrop24_g1169;
				float localIfAudioLinkExists855 = IfAudioLinkExists();
				float AudioLinkExists859 = (( _mainALDebug )?( 0.0 ):( localIfAudioLinkExists855 ));
				float BandIn909 = _ALVORotBand;
				int Out2909 = 0;
				int Out3909 = 0;
				int localOutputOppositeBands909 = OutputOppositeBands( BandIn909 , Out2909 , Out3909 );
				uint Band5_g1167 =(uint)localOutputOppositeBands909;
				uint Mode5_g1167 =(uint)( ( (int)_ALVORotMode * 2 ) + (int)_ALVORotModeType );
				float localAudioLinkDecodeDataAsUInt5_g1167 = AudioLinkDecodeDataAsUInt( Band5_g1167 , Mode5_g1167 );
				float temp_output_380_0 = (100000.0 + (_ALVORotSpeed - 0.0) * (10000.0 - 100000.0) / (5.0 - 0.0));
				uint Band5_g1166 =(uint)Out2909;
				uint Mode5_g1166 =(uint)( ( (int)_ALVORotMode * 2 ) + (int)_ALVORotModeType );
				float localAudioLinkDecodeDataAsUInt5_g1166 = AudioLinkDecodeDataAsUInt( Band5_g1166 , Mode5_g1166 );
				uint Band5_g1165 =(uint)Out3909;
				uint Mode5_g1165 =(uint)( ( (int)_ALVORotMode * 2 ) + (int)_ALVORotModeType );
				float localAudioLinkDecodeDataAsUInt5_g1165 = AudioLinkDecodeDataAsUInt( Band5_g1165 , Mode5_g1165 );
				float3 appendResult834 = (float3(( ( localAudioLinkDecodeDataAsUInt5_g1167 % 628319.0 ) / temp_output_380_0 ) , ( ( localAudioLinkDecodeDataAsUInt5_g1166 % 628319.0 ) / temp_output_380_0 ) , ( ( localAudioLinkDecodeDataAsUInt5_g1165 % 628319.0 ) / temp_output_380_0 )));
				#ifdef _ENABLEALVOROT_ON
				float3 staticSwitch1457 = ( AudioLinkExists859 == 0.0 ? temp_output_1784_0 : (( _EnableALVORotate )?( ( temp_output_1784_0 * appendResult834 ) ):( temp_output_1784_0 )) );
				#else
				float3 staticSwitch1457 = temp_output_1784_0;
				#endif
				float4 transform723 = mul(unity_WorldToObject,float4( staticSwitch1457 , 0.0 ));
				float4 vertAxistato2122 = ( _VORotAxisMode == 1.0 ? transform723 : float4( staticSwitch1457 , 0.0 ) );
				float mulTime188 = _Time.y * _VORotSpeed;
				uint Band5_g1164 =(uint)(int)_ALVORotBand;
				uint Mode5_g1164 =(uint)( ( (int)_ALVORotMode * 2 ) + (int)_ALVORotModeType );
				float localAudioLinkDecodeDataAsUInt5_g1164 = AudioLinkDecodeDataAsUInt( Band5_g1164 , Mode5_g1164 );
				float temp_output_2602_8 = ( ( localAudioLinkDecodeDataAsUInt5_g1164 % 628319.0 ) / temp_output_380_0 );
				int Band3_g1161 = (int)_ALVORotBand;
				float Delay3_g1161 = 0.0;
				float localAudioLinkLerp3_g1161 = AudioLinkLerp( Band3_g1161 , Delay3_g1161 );
				int Band3_g1162 = (int)_ALVORotBand;
				float FilteredAmount3_g1162 = ( _ALVORotFilterLevel * 15.0 );
				float localAudioLinkLerp3_g1162 = AudioLinkLerp( Band3_g1162 , FilteredAmount3_g1162 );
				float lerpResult827 = lerp( localAudioLinkLerp3_g1161 , localAudioLinkLerp3_g1162 , _ALVORotFilterAmount);
				#ifdef _ENABLEALVOROT_ON
				float staticSwitch320 = ( AudioLinkExists859 == 0.0 ? mulTime188 : ( mulTime188 + ( _ALVORotStrength * ( _ALVORotEffectMode == 0.0 ? temp_output_2602_8 : ( temp_output_2602_8 * lerpResult827 ) ) ) ) );
				#else
				float staticSwitch320 = mulTime188;
				#endif
				float vertRotato2121 = (( _InvertVORot )?( -staticSwitch320 ):( staticSwitch320 ));
				float CustomAxisValue8_g1163 = _ALVOVertScaleAxisValue;
				float Value24_g1163 = CustomAxisValue8_g1163;
				float3 Output124_g1163 = float3(1,0,0);
				float3 Output224_g1163 = float3(0,1,0);
				float3 Output324_g1163 = float3(0,0,1);
				float3 Output424_g1163 = _ALVOVertScaleCustAxis;
				float3 localIfAxisDrop24_g1163 = IfAxisDrop( Value24_g1163 , Output124_g1163 , Output224_g1163 , Output324_g1163 , Output424_g1163 );
				int Band3_g1158 = (int)_ALVOVertBand;
				float Delay3_g1158 = 0.0;
				float localAudioLinkLerp3_g1158 = AudioLinkLerp( Band3_g1158 , Delay3_g1158 );
				int Band3_g1157 = (int)_ALVOVertBand;
				float FilteredAmount3_g1157 = ( _ALVOVertFilterLevel * 15.0 );
				float localAudioLinkLerp3_g1157 = AudioLinkLerp( Band3_g1157 , FilteredAmount3_g1157 );
				float lerpResult34 = lerp( localAudioLinkLerp3_g1158 , localAudioLinkLerp3_g1157 , _ALVOVertFilterAmount);
				int Band3_g1212 = (int)_ALVOVertBand;
				float2 texCoord781 = v.ase_texcoord.xy * float2( 1,1 ) + float2( 0,0 );
				float lerpResult1135 = lerp( texCoord781.x , texCoord781.y , _ALVOVertScaleWaveAngle);
				float temp_output_778_0 = ( _ALVOVertScaleWaveHistory * (( _ALVOVertScaleWaveInvert )?( ( 1.0 - lerpResult1135 ) ):( lerpResult1135 )) );
				float Delay3_g1212 = (( _ALVOVertScaleWaveSmooth )?( temp_output_778_0 ):( floor( temp_output_778_0 ) ));
				float localAudioLinkLerp3_g1212 = AudioLinkLerp( Band3_g1212 , Delay3_g1212 );
				float temp_output_1151_0 = ( _ALVOVertScaleType == 0.0 ? lerpResult34 : localAudioLinkLerp3_g1212 );
				float lerpResult110 = lerp( 0.0 , 3.0 , temp_output_1151_0);
				float3 ALVertexScaletato220 = ( v.vertex.xyz + ( localIfAxisDrop24_g1163 * ( ( v.normal * lerpResult110 ) * _ALVOVertScaleStrength ) ) );
				float lerpResult90 = lerp( 0.0 , 4.0 , temp_output_1151_0);
				float3 rotatedValue70 = RotateAroundAxis( float3( 0,0,0 ), v.vertex.xyz, v.normal, ( lerpResult90 * _ALVOVertRotStrength ) );
				float3 ALVertexRotato213 = rotatedValue70;
				float3 lerpResult1192 = lerp( ALVertexScaletato220 , ALVertexRotato213 , 0.5);
				#ifdef _ENABLEALVOSCALE_ON
				float3 staticSwitch209 = ( AudioLinkExists859 == 0.0 ? v.vertex.xyz : lerpResult1192 );
				#else
				float3 staticSwitch209 = v.vertex.xyz;
				#endif
				float3 vertPostato2093 = staticSwitch209;
				float3 rotatedValue180 = RotateAroundAxis( float3( 0,0,0 ), vertPostato2093, normalize( vertAxistato2122.xyz ), vertRotato2121 );
				float3 VertexOffsetato371 = rotatedValue180;
				
				float deviation2044 = 0.1;
				float3 appendResult2053 = (float3(0.0 , deviation2044 , 0.0));
				float3x3 ObjectToTangent2043 = float3x3(cross( v.normal , v.tangent.xyz ), v.tangent.xyz, v.normal);
				float3 rotatedValue2097 = RotateAroundAxis( float3( 0,0,0 ), mul( ( appendResult2053 + mul( ObjectToTangent2043, vertPostato2093 ) ), ObjectToTangent2043 ), normalize( vertAxistato2122.xyz ), vertRotato2121 );
				float3 yDeviation2083 = rotatedValue2097;
				float3 appendResult2057 = (float3(deviation2044 , 0.0 , 0.0));
				float3 rotatedValue2098 = RotateAroundAxis( float3( 0,0,0 ), mul( ( appendResult2057 + mul( ObjectToTangent2043, vertPostato2093 ) ), ObjectToTangent2043 ), normalize( vertAxistato2122.xyz ), vertRotato2121 );
				float3 xDeviation2081 = rotatedValue2098;
				float3 normalizeResult2092 = normalize( cross( ( yDeviation2083 - VertexOffsetato371 ) , ( xDeviation2081 - VertexOffsetato371 ) ) );
				
				o.ase_texcoord9.xy = v.ase_texcoord.xy;
				o.ase_color = v.ase_color;
				o.ase_texcoord10 = v.vertex;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord9.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexOffsetato371;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = normalizeResult2092;
				v.tangent = v.tangent;

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				#ifdef DYNAMICLIGHTMAP_ON
				o.lmap.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif
				#ifdef LIGHTMAP_ON
				o.lmap.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif

				#ifndef LIGHTMAP_ON
					#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
						o.sh = 0;
						#ifdef VERTEXLIGHT_ON
						o.sh += Shade4PointLights (
							unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
							unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
							unity_4LightAtten0, worldPos, worldNormal);
						#endif
						o.sh = ShadeSHPerVertex (worldNormal, o.sh);
					#endif
				#endif

				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
					#else
						TRANSFER_SHADOW(o);
					#endif
				#endif

				#ifdef ASE_FOG
					UNITY_TRANSFER_FOG(o,o.pos);
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
					o.screenPos = ComputeScreenPos(o.pos);
				#endif
				return o;
			}

			#if defined(ASE_TESSELLATION)
			struct VertexControl
			{
				float4 vertex : INTERNALTESSPOS;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_color : COLOR;

				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct TessellationFactors
			{
				float edge[3] : SV_TessFactor;
				float inside : SV_InsideTessFactor;
			};

			VertexControl vert ( appdata v )
			{
				VertexControl o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_TRANSFER_INSTANCE_ID(v, o);
				o.vertex = v.vertex;
				o.tangent = v.tangent;
				o.normal = v.normal;
				o.texcoord1 = v.texcoord1;
				o.texcoord2 = v.texcoord2;
				o.ase_texcoord = v.ase_texcoord;
				o.ase_color = v.ase_color;
				return o;
			}

			TessellationFactors TessellationFunction (InputPatch<VertexControl,3> v)
			{
				TessellationFactors o;
				float4 tf = 1;
				float tessValue = _TessValue; float tessMin = _TessMin; float tessMax = _TessMax;
				float edgeLength = _TessEdgeLength; float tessMaxDisp = _TessMaxDisp;
				#if defined(ASE_FIXED_TESSELLATION)
				tf = FixedTess( tessValue );
				#elif defined(ASE_DISTANCE_TESSELLATION)
				tf = DistanceBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, tessValue, tessMin, tessMax, UNITY_MATRIX_M, _WorldSpaceCameraPos );
				#elif defined(ASE_LENGTH_TESSELLATION)
				tf = EdgeLengthBasedTess(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams );
				#elif defined(ASE_LENGTH_CULL_TESSELLATION)
				tf = EdgeLengthBasedTessCull(v[0].vertex, v[1].vertex, v[2].vertex, edgeLength, tessMaxDisp, UNITY_MATRIX_M, _WorldSpaceCameraPos, _ScreenParams, unity_CameraWorldClipPlanes );
				#endif
				o.edge[0] = tf.x; o.edge[1] = tf.y; o.edge[2] = tf.z; o.inside = tf.w;
				return o;
			}

			[domain("tri")]
			[partitioning("fractional_odd")]
			[outputtopology("triangle_cw")]
			[patchconstantfunc("TessellationFunction")]
			[outputcontrolpoints(3)]
			VertexControl HullFunction(InputPatch<VertexControl, 3> patch, uint id : SV_OutputControlPointID)
			{
			   return patch[id];
			}

			[domain("tri")]
			v2f DomainFunction(TessellationFactors factors, OutputPatch<VertexControl, 3> patch, float3 bary : SV_DomainLocation)
			{
				appdata o = (appdata) 0;
				o.vertex = patch[0].vertex * bary.x + patch[1].vertex * bary.y + patch[2].vertex * bary.z;
				o.tangent = patch[0].tangent * bary.x + patch[1].tangent * bary.y + patch[2].tangent * bary.z;
				o.normal = patch[0].normal * bary.x + patch[1].normal * bary.y + patch[2].normal * bary.z;
				o.texcoord1 = patch[0].texcoord1 * bary.x + patch[1].texcoord1 * bary.y + patch[2].texcoord1 * bary.z;
				o.texcoord2 = patch[0].texcoord2 * bary.x + patch[1].texcoord2 * bary.y + patch[2].texcoord2 * bary.z;
				o.ase_texcoord = patch[0].ase_texcoord * bary.x + patch[1].ase_texcoord * bary.y + patch[2].ase_texcoord * bary.z;
				o.ase_color = patch[0].ase_color * bary.x + patch[1].ase_color * bary.y + patch[2].ase_color * bary.z;
				#if defined(ASE_PHONG_TESSELLATION)
				float3 pp[3];
				for (int i = 0; i < 3; ++i)
					pp[i] = o.vertex.xyz - patch[i].normal * (dot(o.vertex.xyz, patch[i].normal) - dot(patch[i].vertex.xyz, patch[i].normal));
				float phongStrength = _TessPhongStrength;
				o.vertex.xyz = phongStrength * (pp[0]*bary.x + pp[1]*bary.y + pp[2]*bary.z) + (1.0f-phongStrength) * o.vertex.xyz;
				#endif
				UNITY_TRANSFER_INSTANCE_ID(patch[0], o);
				return VertexFunction(o);
			}
			#else
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			#endif

			fixed4 frag (v2f IN , bool ase_vface : SV_IsFrontFace
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

				#ifdef LOD_FADE_CROSSFADE
					UNITY_APPLY_DITHER_CROSSFADE(IN.pos.xy);
				#endif

				#if defined(_SPECULAR_SETUP)
					SurfaceOutputStandardSpecular o = (SurfaceOutputStandardSpecular)0;
				#else
					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
				#endif
				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 ScreenPos = IN.screenPos;
				#endif

				float3 temp_cast_0 = (0.0).xxx;
				
				float3 switchResult2032 = (((ase_vface>0)?(float3(0,0,1)):(float3(0,0,-1))));
				
				float Value2757 = _MainTexChannel;
				float mulTime1238 = _Time.y * _MainTexAnimationSpeed;
				float localIfAudioLinkExists855 = IfAudioLinkExists();
				float AudioLinkExists859 = (( _mainALDebug )?( 0.0 ):( localIfAudioLinkExists855 ));
				uint Band5_g1153 =(uint)(int)_MainTexAnimationALBand;
				uint Mode5_g1153 =(uint)( ( (int)_MainTexAnimationALMode * 2 ) + (int)_MainTexAnimationALModeType );
				float localAudioLinkDecodeDataAsUInt5_g1153 = AudioLinkDecodeDataAsUInt( Band5_g1153 , Mode5_g1153 );
				#ifdef _MAINTEXANIMATIONALENABLE_ON
				float staticSwitch1284 = ( AudioLinkExists859 == 0.0 ? mulTime1238 : ( mulTime1238 + ( ( ( localAudioLinkDecodeDataAsUInt5_g1153 % 628319.0 ) / (1000000.0 + (_MainTexAnimationALSpeed - 0.0) * (100000.0 - 1000000.0) / (5.0 - 0.0)) ) * _MainTexAnimationALStrength ) ) );
				#else
				float staticSwitch1284 = mulTime1238;
				#endif
				float2 lerpResult1260 = lerp( float2( 1,0 ) , float2( 0,1 ) , _MainTexAnimationAniAngle);
				float2 uv_MainTex = IN.ase_texcoord9.xy * _MainTex_ST.xy + _MainTex_ST.zw;
				float cos1269 = cos( (0.0 + (_MainTexAnimationAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float sin1269 = sin( (0.0 + (_MainTexAnimationAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float2 rotator1269 = mul( uv_MainTex - float2( 0.5,0.5 ) , float2x2( cos1269 , -sin1269 , sin1269 , cos1269 )) + float2( 0.5,0.5 );
				float2 panner1236 = ( staticSwitch1284 * (( _MainTexAnimationInvert )?( -lerpResult1260 ):( lerpResult1260 )) + rotator1269);
				float2 MainTexUVtato1232 = panner1236;
				float3 _Vector5 = float3(0,0,1);
				float mulTime1309 = _Time.y * _FragColDistortionTexAnimationSpeed;
				uint Band5_g1145 =(uint)(int)_FragColDistortionALAnimationBand;
				uint Mode5_g1145 =(uint)( ( (int)_FragColDistortionALAnimationMode * 2 ) + (int)_FragColDistortionALAnimationModeType );
				float localAudioLinkDecodeDataAsUInt5_g1145 = AudioLinkDecodeDataAsUInt( Band5_g1145 , Mode5_g1145 );
				#ifdef _FRAGCOLDISTORTIONALANIMATIONENABLED_ON
				float staticSwitch1345 = ( AudioLinkExists859 == 0.0 ? mulTime1309 : ( mulTime1309 + ( _FragColDistortionALAnimationStrength * ( ( localAudioLinkDecodeDataAsUInt5_g1145 % 628319.0 ) / (1000000.0 + (_FragColDistortionALAnimationSpeed - 0.0) * (100000.0 - 1000000.0) / (5.0 - 0.0)) ) ) ) );
				#else
				float staticSwitch1345 = mulTime1309;
				#endif
				float2 lerpResult1333 = lerp( float2( 1,0 ) , float2( 0,1 ) , _FragColDistortionTexAnimationAngle);
				float2 uv_FragColDistortionTex = IN.ase_texcoord9.xy * _FragColDistortionTex_ST.xy + _FragColDistortionTex_ST.zw;
				float cos1337 = cos( (0.0 + (_FragColDistortionTexAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float sin1337 = sin( (0.0 + (_FragColDistortionTexAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float2 rotator1337 = mul( uv_FragColDistortionTex - float2( 0.5,0.5 ) , float2x2( cos1337 , -sin1337 , sin1337 , cos1337 )) + float2( 0.5,0.5 );
				float2 panner1324 = ( staticSwitch1345 * (( _FragColDistortionTexAnimationInvert )?( -lerpResult1333 ):( lerpResult1333 )) + rotator1337);
				float3 DistortionParamtato1328 = UnpackScaleNormal( tex2D( _FragColDistortionTex, panner1324 ), _FragColDistortionTexScale );
				#ifdef _ENABLEFRAGCOLDISTORTION_ON
				float3 staticSwitch1327 = DistortionParamtato1328;
				#else
				float3 staticSwitch1327 = _Vector5;
				#endif
				float2 temp_output_2685_0 = (staticSwitch1327).xy;
				float3 break37_g1243 = ( _Vector5 + float3( temp_output_2685_0 ,  0.0 ) );
				float3 appendResult38_g1243 = (float3(break37_g1243.x , break37_g1243.y , 1.0));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal2_g1243 = appendResult38_g1243;
				float3 worldNormal2_g1243 = float3(dot(tanToWorld0,tanNormal2_g1243), dot(tanToWorld1,tanNormal2_g1243), dot(tanToWorld2,tanNormal2_g1243));
				float4 In12757 = ( _TexModeMatcap == 0.0 ? tex2D( _MainTex, ( MainTexUVtato1232 + temp_output_2685_0 ) ) : tex2D( _MainTex, ( 0.5 + ( 0.5 * (mul( UNITY_MATRIX_V, float4( worldNormal2_g1243 , 0.0 ) ).xyz).xy ) ) ) );
				float4 localChannelValueSelector2757 = ChannelValueSelector( Value2757 , In12757 );
				float4 ColIn487 = localChannelValueSelector2757;
				float Cutoff487 = _Cutoff;
				float4 localAlphaClip487 = AlphaClip( ColIn487 , Cutoff487 );
				float mulTime82_g1204 = _Time.y * _BSGradientAnimSpeed;
				uint Band5_g1017 =(uint)(int)_BSGradientAnimALBand1;
				uint Mode5_g1017 =(uint)( ( (int)_BSGradientAnimALMode1 * 2 ) + (int)_BSGradientAnimALModeType1 );
				float localAudioLinkDecodeDataAsUInt5_g1017 = AudioLinkDecodeDataAsUInt( Band5_g1017 , Mode5_g1017 );
				#ifdef _BSGRADIENTANIMALENABLE_ON
				float staticSwitch2317 = ( AudioLinkExists859 == 0.0 ? 0.0 : ( ( ( localAudioLinkDecodeDataAsUInt5_g1017 % 628319.0 ) / (1000000.0 + (_BSGradientAnimALSpeed1 - 0.0) * (100000.0 - 1000000.0) / (5.0 - 0.0)) ) * _BSGradientAnimALStrength ) );
				#else
				float staticSwitch2317 = 0.0;
				#endif
				float2 _Vector15 = float2(1,0);
				float2 uv_BSColorGradient = IN.ase_texcoord9.xy * _BSColorGradient_ST.xy + _BSColorGradient_ST.zw;
				float cos83_g1204 = cos( (0.0 + (_BSGradientAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float sin83_g1204 = sin( (0.0 + (_BSGradientAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float2 rotator83_g1204 = mul( ( _BSGradientScale * uv_BSColorGradient ) - float2( 0.5,0.5 ) , float2x2( cos83_g1204 , -sin83_g1204 , sin83_g1204 , cos83_g1204 )) + float2( 0.5,0.5 );
				float2 panner75_g1204 = ( ( mulTime82_g1204 + staticSwitch2317 ) * (( _EmisAltColorGradientInvert )?( -_Vector15 ):( _Vector15 )) + rotator83_g1204);
				float4 tex2DNode66_g1204 = tex2D( _BSColorGradient, panner75_g1204 );
				float4 temp_output_69_0_g1204 = ( _BSColorType == 0.0 ? _Color : ( _CustomColors == 1.0 ? ( _Color * tex2DNode66_g1204 ) : tex2DNode66_g1204 ) );
				float ALExists42_g1205 = AudioLinkExists859;
				float Value42_g1205 = _CCOverrideFrom;
				float4 Output142_g1205 = IN.ase_color;
				float4 Output242_g1205 = _UserColorLeft;
				float4 Output342_g1205 = _UserColorRight;
				float4 local_ENVLeftColor48_g1205 = ( AudioLinkData(ALPASS_THEME_COLOR0).rgba );
				float4 Output442_g1205 = local_ENVLeftColor48_g1205;
				float4 local_ENVRightColor50_g1205 = ( AudioLinkData(ALPASS_THEME_COLOR1).rgba );
				float4 Output542_g1205 = local_ENVRightColor50_g1205;
				float4 local_BOOSTLeftColor49_g1205 = ( AudioLinkData(ALPASS_THEME_COLOR2).rgba );
				float4 Output642_g1205 = local_BOOSTLeftColor49_g1205;
				float4 local_BOOSTRightColor51_g1205 = ( AudioLinkData(ALPASS_THEME_COLOR3).rgba );
				float4 Output742_g1205 = local_BOOSTRightColor51_g1205;
				float4 Output842_g1205 = temp_output_69_0_g1204;
				float4 localBSIfColDrop42_g1205 = BSIfColDrop( ALExists42_g1205 , Value42_g1205 , Output142_g1205 , Output242_g1205 , Output342_g1205 , Output442_g1205 , Output542_g1205 , Output642_g1205 , Output742_g1205 , Output842_g1205 );
				float4 temp_output_2717_0 = (( _AltSaberColor )?( localBSIfColDrop42_g1205 ):( temp_output_69_0_g1204 ));
				float4 ColorInput626 = temp_output_2717_0;
				float Value1000 = _ALFragColMixedValue;
				int Band3_g484 = (int)_ALFragColFlickerBand;
				float Delay3_g484 = 0.0;
				float localAudioLinkLerp3_g484 = AudioLinkLerp( Band3_g484 , Delay3_g484 );
				int Band3_g485 = (int)_ALFragColFlickerBand;
				float FilteredAmount3_g485 = ( _ALFragColFlickerFilterLevel * 15.0 );
				float localAudioLinkLerp3_g485 = AudioLinkLerp( Band3_g485 , FilteredAmount3_g485 );
				float lerpResult362 = lerp( localAudioLinkLerp3_g484 , localAudioLinkLerp3_g485 , _ALFragColFlickerFilterAmount);
				float ALExists33_g1206 = AudioLinkExists859;
				float Value33_g1206 = _ALFragAltColorValue;
				float4 Output133_g1206 = IN.ase_color;
				float4 Output233_g1206 = _UserColorLeft;
				float4 Output333_g1206 = _UserColorRight;
				float4 local_ENVLeftColor16_g1206 = ( AudioLinkData(ALPASS_THEME_COLOR0).rgba );
				float4 Output433_g1206 = local_ENVLeftColor16_g1206;
				float4 local_ENVRightColor17_g1206 = ( AudioLinkData(ALPASS_THEME_COLOR1).rgba );
				float4 Output533_g1206 = local_ENVRightColor17_g1206;
				float4 local_BOOSTLeftColor21_g1206 = ( AudioLinkData(ALPASS_THEME_COLOR2).rgba );
				float4 Output633_g1206 = local_BOOSTLeftColor21_g1206;
				float4 local_BOOSTRightColor8_g1206 = ( AudioLinkData(ALPASS_THEME_COLOR3).rgba );
				float4 Output733_g1206 = local_BOOSTRightColor8_g1206;
				float4 Output833_g1206 = _Color;
				float4 Output933_g1206 = _ALFragAltColor;
				float4 localIfColDrop33_g1206 = IfColDrop( ALExists33_g1206 , Value33_g1206 , Output133_g1206 , Output233_g1206 , Output333_g1206 , Output433_g1206 , Output533_g1206 , Output633_g1206 , Output733_g1206 , Output833_g1206 , Output933_g1206 );
				float4 temp_output_2714_27 = localIfColDrop33_g1206;
				#ifdef _ALFRAGCOLFLICKERSWAP_ON
				float4 staticSwitch507 = temp_output_2714_27;
				#else
				float4 staticSwitch507 = ColorInput626;
				#endif
				#ifdef _ALFRAGCOLFLICKERSWAP_ON
				float4 staticSwitch505 = ColorInput626;
				#else
				float4 staticSwitch505 = temp_output_2714_27;
				#endif
				float4 Function11000 = ( lerpResult362 < (0.0 + (_ALFragColFlickerThreshold - 0.0) * (0.9 - 0.0) / (1.0 - 0.0)) ? staticSwitch507 : staticSwitch505 );
				float4 lerpResult503 = lerp( staticSwitch507 , staticSwitch505 , lerpResult362);
				float4 Function21000 = lerpResult503;
				int Band3_g1211 = (int)_ALFragColFlickerBand;
				float2 texCoord1107 = IN.ase_texcoord9.xy * float2( 1,1 ) + float2( 0,0 );
				float lerpResult1108 = lerp( texCoord1107.x , texCoord1107.y , _ALFragColFlickerPumpAngle);
				float temp_output_992_0 = ( (( _ALFragColFlickerPumpInvert )?( ( 1.0 - lerpResult1108 ) ):( lerpResult1108 )) * _ALFragColFlickerPumpHistory );
				float Delay3_g1211 = (( _ALFragColFlickerPumpSmooth )?( temp_output_992_0 ):( floor( temp_output_992_0 ) ));
				float localAudioLinkLerp3_g1211 = AudioLinkLerp( Band3_g1211 , Delay3_g1211 );
				float temp_output_1777_0 = localAudioLinkLerp3_g1211;
				#ifdef _ALFRAGCOLFLICKERSWAP_ON
				float staticSwitch997 = ( 1.0 - temp_output_1777_0 );
				#else
				float staticSwitch997 = temp_output_1777_0;
				#endif
				float4 lerpResult1684 = lerp( ColorInput626 , temp_output_2714_27 , staticSwitch997);
				float4 Function31000 = lerpResult1684;
				float2 appendResult673 = (float2(0.0 , 1.0));
				float2 appendResult672 = (float2(1.0 , 0.0));
				float2 lerpResult670 = lerp( appendResult673 , appendResult672 , _FragColAltMaskAngle);
				float2 normalizeResult683 = normalize( (( _FragColAltMaskNegate )?( lerpResult670 ):( -lerpResult670 )) );
				float dotResult666 = dot( IN.ase_texcoord10.xyz , float3( normalizeResult683 ,  0.0 ) );
				float lerpResult688 = lerp( 0.0 , 1.0 , lerpResult362);
				#ifdef _FRAGCOLALTMASKSETUPMODE_ON
				float staticSwitch1127 = _FragColAltMaskStrength;
				#else
				float staticSwitch1127 = lerpResult688;
				#endif
				float temp_output_679_0 = ( dotResult666 + (_FragColAltMaskMinimum + (staticSwitch1127 - 0.0) * (_FragColAltMaskMaximum - _FragColAltMaskMinimum) / (1.0 - 0.0)) );
				float temp_output_736_0 = step( ( ( 1.0 - temp_output_679_0 ) - temp_output_679_0 ) , staticSwitch1127 );
				#ifdef _ALFRAGCOLFLICKERSWAP_ON
				float staticSwitch1068 = ( 1.0 - temp_output_736_0 );
				#else
				float staticSwitch1068 = temp_output_736_0;
				#endif
				float4 lerpResult1683 = lerp( ColorInput626 , temp_output_2714_27 , staticSwitch1068);
				float4 Function41000 = lerpResult1683;
				float4 localALFragColMixedMode1000 = ALFragColMixedMode1000( Value1000 , Function11000 , Function21000 , Function31000 , Function41000 );
				float4 FragColALFunction621 = localALFragColMixedMode1000;
				#ifdef _ENABLEALFRAGCOLFLICKER_ON
				float4 staticSwitch346 = ( AudioLinkExists859 == 0.0 ? temp_output_2717_0 : FragColALFunction621 );
				#else
				float4 staticSwitch346 = ColorInput626;
				#endif
				float4 FragColortato227 = staticSwitch346;
				float4 temp_output_2216_0 = ( localAlphaClip487 * FragColortato227 );
				float ALExists33_g1198 = AudioLinkExists859;
				float Value33_g1198 = _FragColFresnelGradientColorFrom;
				float4 Output133_g1198 = IN.ase_color;
				float4 Output233_g1198 = _UserColorLeft;
				float4 Output333_g1198 = _UserColorRight;
				float4 local_ENVLeftColor16_g1198 = ( AudioLinkData(ALPASS_THEME_COLOR0).rgba );
				float4 Output433_g1198 = local_ENVLeftColor16_g1198;
				float4 local_ENVRightColor17_g1198 = ( AudioLinkData(ALPASS_THEME_COLOR1).rgba );
				float4 Output533_g1198 = local_ENVRightColor17_g1198;
				float4 local_BOOSTLeftColor21_g1198 = ( AudioLinkData(ALPASS_THEME_COLOR2).rgba );
				float4 Output633_g1198 = local_BOOSTLeftColor21_g1198;
				float4 local_BOOSTRightColor8_g1198 = ( AudioLinkData(ALPASS_THEME_COLOR3).rgba );
				float4 Output733_g1198 = local_BOOSTRightColor8_g1198;
				float4 Output833_g1198 = _Color;
				float mulTime1408 = _Time.y * _FragColFresnelGradientAnimSpeed;
				uint Band5_g1185 =(uint)(int)_FragColFresnelGradientAnimALBand;
				uint Mode5_g1185 =(uint)( ( (int)_FragColFresnelGradientAnimALMode * 2 ) + (int)_FragColFresnelGradientAnimALModeType );
				float localAudioLinkDecodeDataAsUInt5_g1185 = AudioLinkDecodeDataAsUInt( Band5_g1185 , Mode5_g1185 );
				#ifdef _FRAGCOLFRESNELGRADIENTANIMALENABLE_ON
				float staticSwitch2348 = ( AudioLinkExists859 == 0.0 ? mulTime1408 : ( mulTime1408 + ( ( ( localAudioLinkDecodeDataAsUInt5_g1185 % 628319.0 ) / (1000000.0 + (_FragColFresnelGradientAnimALSpeed - 0.0) * (100000.0 - 1000000.0) / (5.0 - 0.0)) ) * _FragColFresnelGradientAnimALStrength ) ) );
				#else
				float staticSwitch2348 = mulTime1408;
				#endif
				float2 _Vector16 = float2(1,0);
				float2 uv_FragColFresnelGradientTexture = IN.ase_texcoord9.xy * _FragColFresnelGradientTexture_ST.xy + _FragColFresnelGradientTexture_ST.zw;
				float cos1394 = cos( (0.0 + (_FragColFresnelGradientAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float sin1394 = sin( (0.0 + (_FragColFresnelGradientAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float2 rotator1394 = mul( ( _FragColFresnelGradientScale * uv_FragColFresnelGradientTexture ) - float2( 0.5,0.5 ) , float2x2( cos1394 , -sin1394 , sin1394 , cos1394 )) + float2( 0.5,0.5 );
				float2 panner1393 = ( staticSwitch2348 * (( _FragColFresnelGradientInvert )?( -_Vector16 ):( _Vector16 )) + rotator1394);
				float4 ifLocalVar1410 = 0;
				UNITY_BRANCH 
				if( _FragColFresnelGradientColorType > 1.0 )
				ifLocalVar1410 = tex2D( _FragColFresnelGradientTexture, panner1393 );
				else if( _FragColFresnelGradientColorType == 1.0 )
				ifLocalVar1410 = _FragColFresnelGradientCustomColor;
				else if( _FragColFresnelGradientColorType < 1.0 )
				ifLocalVar1410 = FragColortato227;
				float4 Output933_g1198 = ifLocalVar1410;
				float4 localIfColDrop33_g1198 = IfColDrop( ALExists33_g1198 , Value33_g1198 , Output133_g1198 , Output233_g1198 , Output333_g1198 , Output433_g1198 , Output533_g1198 , Output633_g1198 , Output733_g1198 , Output833_g1198 , Output933_g1198 );
				float4 FresCol1632 = localIfColDrop33_g1198;
				int Band3_g1149 = (int)_FragColFresnelScaleALBand;
				float Delay3_g1149 = 0.0;
				float localAudioLinkLerp3_g1149 = AudioLinkLerp( Band3_g1149 , Delay3_g1149 );
				int Band3_g1147 = (int)_FragColFresnelScaleALBand;
				float FilteredAmount3_g1147 = ( _FragColFresnelScaleALFilterLevel * 15.0 );
				float localAudioLinkLerp3_g1147 = AudioLinkLerp( Band3_g1147 , FilteredAmount3_g1147 );
				float lerpResult1628 = lerp( localAudioLinkLerp3_g1149 , localAudioLinkLerp3_g1147 , _FragColFresnelScaleALFilterAmount);
				int Band3_g1214 = (int)_FragColFresnelScaleALBand;
				float2 texCoord1624 = IN.ase_texcoord9.xy * float2( 1,1 ) + float2( 0,0 );
				float lerpResult1626 = lerp( texCoord1624.x , texCoord1624.y , _FragColFresnelScaleALWaveDirection);
				float temp_output_1627_0 = ( _FragColFresnelScaleALWaveDensity * (( _FragColFresnelScaleALWaveInvert )?( ( 1.0 - lerpResult1626 ) ):( lerpResult1626 )) );
				float Delay3_g1214 = (( _FragColFresnelScaleALWaveSmooth )?( temp_output_1627_0 ):( floor( temp_output_1627_0 ) ));
				float localAudioLinkLerp3_g1214 = AudioLinkLerp( Band3_g1214 , Delay3_g1214 );
				float temp_output_1584_0 = ( _FragColFresnelScaleALStrength * ( _FragColFresnelScaleALType == 0.0 ? lerpResult1628 : localAudioLinkLerp3_g1214 ) );
				float ifLocalVar1588 = 0;
				if( _FragColFresnelScaleALBlend > 1.0 )
				ifLocalVar1588 = ( _FragColFresnelScale * temp_output_1584_0 );
				else if( _FragColFresnelScaleALBlend == 1.0 )
				ifLocalVar1588 = ( _FragColFresnelScale - temp_output_1584_0 );
				else if( _FragColFresnelScaleALBlend < 1.0 )
				ifLocalVar1588 = ( _FragColFresnelScale + temp_output_1584_0 );
				#ifdef _FRESNELSCALEALTOGGLE_ON
				float staticSwitch1575 = ( AudioLinkExists859 == 0.0 ? _FragColFresnelScale : ifLocalVar1588 );
				#else
				float staticSwitch1575 = _FragColFresnelScale;
				#endif
				int Band3_g1148 = (int)_FragColFresnelPowerALBand;
				float Delay3_g1148 = 0.0;
				float localAudioLinkLerp3_g1148 = AudioLinkLerp( Band3_g1148 , Delay3_g1148 );
				int Band3_g1150 = (int)_FragColFresnelPowerALBand;
				float FilteredAmount3_g1150 = ( _FragColFresnelPowerALFilterLevel * 15.0 );
				float localAudioLinkLerp3_g1150 = AudioLinkLerp( Band3_g1150 , FilteredAmount3_g1150 );
				float lerpResult1608 = lerp( localAudioLinkLerp3_g1148 , localAudioLinkLerp3_g1150 , _FragColFresnelPowerALFilterAmount);
				int Band3_g1213 = (int)_FragColFresnelPowerALBand;
				float2 texCoord1597 = IN.ase_texcoord9.xy * float2( 1,1 ) + float2( 0,0 );
				float lerpResult1606 = lerp( texCoord1597.x , texCoord1597.y , _FragColFresnelPowerALWaveDirection);
				float temp_output_1598_0 = ( _FragColFresnelPowerALWaveDensity * (( _FragColFresnelPowerALWaveInvert )?( ( 1.0 - lerpResult1606 ) ):( lerpResult1606 )) );
				float Delay3_g1213 = (( _FragColFresnelPowerALWaveSmooth )?( temp_output_1598_0 ):( floor( temp_output_1598_0 ) ));
				float localAudioLinkLerp3_g1213 = AudioLinkLerp( Band3_g1213 , Delay3_g1213 );
				float temp_output_1576_0 = ( _FragColFresnelPowerALStrength * ( _FragColFresnelPowerALType == 0.0 ? lerpResult1608 : localAudioLinkLerp3_g1213 ) );
				float ifLocalVar1582 = 0;
				if( _FragColFresnelPowerALBlend > 1.0 )
				ifLocalVar1582 = ( _FragColFresnelPower * temp_output_1576_0 );
				else if( _FragColFresnelPowerALBlend == 1.0 )
				ifLocalVar1582 = ( _FragColFresnelPower - temp_output_1576_0 );
				else if( _FragColFresnelPowerALBlend < 1.0 )
				ifLocalVar1582 = ( _FragColFresnelPower + temp_output_1576_0 );
				#ifdef _FRESNELPOWERALTOGGLE_ON
				float staticSwitch1392 = ( AudioLinkExists859 == 0.0 ? _FragColFresnelPower : ifLocalVar1582 );
				#else
				float staticSwitch1392 = _FragColFresnelPower;
				#endif
				float fresnelNdotV1361 = dot( normalize( WorldNormal ), worldViewDir );
				float fresnelNode1361 = ( 0.0 + staticSwitch1575 * pow( 1.0 - fresnelNdotV1361, staticSwitch1392 ) );
				float clampResult2658 = clamp( fresnelNode1361 , 0.0 , _FragColFresnelScale );
				float Value2754 = _FragColFresnelMaskChannel;
				float mulTime16_g1156 = _Time.y * _FragColFresnelMaskAnimationSpeed;
				uint Band5_g1154 =(uint)(int)_FragColFresnelMaskALBand;
				uint Mode5_g1154 =(uint)( ( (int)_FragColFresnelMaskALMode * 2 ) + (int)_FragColFresnelMaskALModeType );
				float localAudioLinkDecodeDataAsUInt5_g1154 = AudioLinkDecodeDataAsUInt( Band5_g1154 , Mode5_g1154 );
				float2 lerpResult6_g1156 = lerp( float2( 1,0 ) , float2( 0,1 ) , _FragColFresnelMaskAnimationAngle);
				float2 uv_FragColFresnelMask = IN.ase_texcoord9.xy * _FragColFresnelMask_ST.xy + _FragColFresnelMask_ST.zw;
				float cos2_g1156 = cos( (0.0 + (_FragColFresnelMaskAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float sin2_g1156 = sin( (0.0 + (_FragColFresnelMaskAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float2 rotator2_g1156 = mul( uv_FragColFresnelMask - float2( 0.5,0.5 ) , float2x2( cos2_g1156 , -sin2_g1156 , sin2_g1156 , cos2_g1156 )) + float2( 0.5,0.5 );
				float2 panner1_g1156 = ( ( _FragColFresnelMaskALToggle == 0.0 ? mulTime16_g1156 : ( AudioLinkExists859 == 0.0 ? mulTime16_g1156 : ( mulTime16_g1156 + ( ( ( localAudioLinkDecodeDataAsUInt5_g1154 % 628319.0 ) / (1000000.0 + (_FragColFresnelMaskALSpeed - 0.0) * (100000.0 - 1000000.0) / (5.0 - 0.0)) ) * _FragColFresnelMaskALStrength ) ) ) ) * ( _FragColFresnelMaskInvert == 0.0 ? lerpResult6_g1156 : -lerpResult6_g1156 ) + rotator2_g1156);
				float4 In12754 = tex2D( _FragColFresnelMask, panner1_g1156 );
				float4 localChannelValueSelector2754 = ChannelValueSelector( Value2754 , In12754 );
				float4 FresnelMasktato2378 = localChannelValueSelector2754;
				float4 lerpResult1902 = lerp( float4( 0,0,0,0 ) , ( FresCol1632 * clampResult2658 ) , FresnelMasktato2378);
				float4 FresnelFunctato1362 = lerpResult1902;
				float lerpResult1901 = lerp( 0.0 , clampResult2658 , FresnelMasktato2378.x);
				float FresnelRaw1572 = lerpResult1901;
				float4 lerpResult1682 = lerp( temp_output_2216_0 , FresnelFunctato1362 , FresnelRaw1572);
				#ifdef _FRAGCOLFRESNELENABLE_ON
				float4 staticSwitch1439 = lerpResult1682;
				#else
				float4 staticSwitch1439 = temp_output_2216_0;
				#endif
				float4 break938 = staticSwitch1439;
				float FragColAlpha944 = break938.w;
				float temp_output_9_0 = ( _Glow * FragColAlpha944 );
				int Band3_g1170 = (int)_ALFragGlowBand;
				float Delay3_g1170 = 0.0;
				float localAudioLinkLerp3_g1170 = AudioLinkLerp( Band3_g1170 , Delay3_g1170 );
				int Band3_g1171 = (int)_ALFragGlowBand;
				float FilteredAmount3_g1171 = ( _ALFragGlowFilterLevel * 15.0 );
				float localAudioLinkLerp3_g1171 = AudioLinkLerp( Band3_g1171 , FilteredAmount3_g1171 );
				float lerpResult885 = lerp( localAudioLinkLerp3_g1170 , localAudioLinkLerp3_g1171 , _ALFragGlowFilterAmount);
				int Band3_g1210 = (int)_ALFragGlowBand;
				float2 texCoord952 = IN.ase_texcoord9.xy * float2( 1,1 ) + float2( 0,0 );
				float lerpResult1091 = lerp( texCoord952.x , texCoord952.y , _ALFragGlowWaveAngle1);
				float temp_output_951_0 = ( _ALFragGlowWaveFilterHistory * (( _ALFragGlowWaveNegate )?( ( 1.0 - lerpResult1091 ) ):( lerpResult1091 )) );
				float Delay3_g1210 = (( _ALFragGlowWaveSmooth )?( temp_output_951_0 ):( floor( temp_output_951_0 ) ));
				float localAudioLinkLerp3_g1210 = AudioLinkLerp( Band3_g1210 , Delay3_g1210 );
				float lerpResult234 = lerp( 0.0 , ( _ALFragGlowMode == 0.0 ? lerpResult885 : localAudioLinkLerp3_g1210 ) , FragColAlpha944);
				#ifdef _ENABLEALFRAGGLOW_ON
				float staticSwitch231 = ( AudioLinkExists859 == 0.0 ? temp_output_9_0 : ( temp_output_9_0 + ( lerpResult234 * _ALFragGlowStrength ) ) );
				#else
				float staticSwitch231 = temp_output_9_0;
				#endif
				float FragAlphaCompounded945 = staticSwitch231;
				float4 appendResult939 = (float4(break938.x , break938.y , break938.z , FragAlphaCompounded945));
				float4 FragMaintato609 = appendResult939;
				float4 temp_output_85_0_g1244 = FragMaintato609;
				float Value91_g1244 = _TrailMaskTexChannel;
				float2 uv_TrailMaskTex = IN.ase_texcoord9.xy * _TrailMaskTex_ST.xy + _TrailMaskTex_ST.zw;
				float mulTime16_g1246 = _Time.y * _TrailMaskTexNrmAnimationSpeed;
				uint Band5_g1245 =(uint)(int)_TrailMaskTexNrmALBand;
				uint Mode5_g1245 =(uint)( ( (int)_TrailMaskTexNrmALMode * 2 ) + (int)_TrailMaskTexNrmALModeType );
				float localAudioLinkDecodeDataAsUInt5_g1245 = AudioLinkDecodeDataAsUInt( Band5_g1245 , Mode5_g1245 );
				float2 lerpResult6_g1246 = lerp( float2( 1,0 ) , float2( 0,1 ) , _TrailMaskTexNrmAnimationAngle);
				float2 uv_TrailMaskTexNrm = IN.ase_texcoord9.xy * _TrailMaskTexNrm_ST.xy + _TrailMaskTexNrm_ST.zw;
				float cos2_g1246 = cos( (0.0 + (_TrailMaskTexNrmAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float sin2_g1246 = sin( (0.0 + (_TrailMaskTexNrmAngle - 0.0) * (( 3.14 / 2.0 ) - 0.0) / (1.0 - 0.0)) );
				float2 rotator2_g1246 = mul( uv_TrailMaskTexNrm - float2( 0.5,0.5 ) , float2x2( cos2_g1246 , -sin2_g1246 , sin2_g1246 , cos2_g1246 )) + float2( 0.5,0.5 );
				float2 panner1_g1246 = ( ( _TrailMaskTexNrmALToggle == 0.0 ? mulTime16_g1246 : ( AudioLinkExists859 == 0.0 ? mulTime16_g1246 : ( mulTime16_g1246 + ( ( ( localAudioLinkDecodeDataAsUInt5_g1245 % 628319.0 ) / (1000000.0 + (_TrailMaskTexNrmALSpeed - 0.0) * (100000.0 - 1000000.0) / (5.0 - 0.0)) ) * _TrailMaskTexNrmALStrength ) ) ) ) * ( _TrailMaskTexNrmInvert == 0.0 ? lerpResult6_g1246 : -lerpResult6_g1246 ) + rotator2_g1246);
				float4 In191_g1244 = tex2D( _TrailMaskTex, (( _TrailMaskTexDistortToggle )?( ( float3( uv_TrailMaskTex ,  0.0 ) + UnpackScaleNormal( tex2D( _TrailMaskTexNrm, panner1_g1246 ), _TrailMaskTexNrmScale ) ) ):( float3( uv_TrailMaskTex ,  0.0 ) )).xy );
				float4 localChannelValueSelector91_g1244 = ChannelValueSelector( Value91_g1244 , In191_g1244 );
				float4 lerpResult87_g1244 = lerp( float4( 0,0,0,0 ) , temp_output_85_0_g1244 , localChannelValueSelector91_g1244);
				#ifdef _TRAILMASKTEXTOGGLE_ON
				float4 staticSwitch83_g1244 = lerpResult87_g1244;
				#else
				float4 staticSwitch83_g1244 = temp_output_85_0_g1244;
				#endif
				
				float temp_output_86_0_g1244 = (FragMaintato609).a;
				float lerpResult88_g1244 = lerp( 0.0 , temp_output_86_0_g1244 , localChannelValueSelector91_g1244.x);
				#ifdef _TRAILMASKTEXTOGGLE_ON
				float staticSwitch84_g1244 = lerpResult88_g1244;
				#else
				float staticSwitch84_g1244 = temp_output_86_0_g1244;
				#endif
				
				o.Albedo = temp_cast_0;
				o.Normal = switchResult2032;
				o.Emission = staticSwitch83_g1244.rgb;
				#if defined(_SPECULAR_SETUP)
					o.Specular = fixed3( 0, 0, 0 );
				#else
					o.Metallic = 0;
				#endif
				o.Smoothness = 0;
				o.Occlusion = 1;
				o.Alpha = staticSwitch84_g1244;
				float AlphaClipThreshold = 0.5;
				float AlphaClipThresholdShadow = 0.5;
				float3 BakedGI = 0;
				float3 RefractionColor = 1;
				float RefractionIndex = 1;
				float3 Transmission = 1;
				float3 Translucency = 1;

				#ifdef _ALPHATEST_ON
					clip( o.Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifndef USING_DIRECTIONAL_LIGHT
					fixed3 lightDir = normalize(UnityWorldSpaceLightDir(worldPos));
				#else
					fixed3 lightDir = _WorldSpaceLightPos0.xyz;
				#endif

				fixed4 c = 0;
				float3 worldN;
				worldN.x = dot(IN.tSpace0.xyz, o.Normal);
				worldN.y = dot(IN.tSpace1.xyz, o.Normal);
				worldN.z = dot(IN.tSpace2.xyz, o.Normal);
				worldN = normalize(worldN);
				o.Normal = worldN;

				UnityGI gi;
				UNITY_INITIALIZE_OUTPUT(UnityGI, gi);
				gi.indirect.diffuse = 0;
				gi.indirect.specular = 0;
				gi.light.color = _LightColor0.rgb;
				gi.light.dir = lightDir;

				UnityGIInput giInput;
				UNITY_INITIALIZE_OUTPUT(UnityGIInput, giInput);
				giInput.light = gi.light;
				giInput.worldPos = worldPos;
				giInput.worldViewDir = worldViewDir;
				giInput.atten = atten;
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
					giInput.lightmapUV = IN.lmap;
				#else
					giInput.lightmapUV = 0.0;
				#endif
				#if UNITY_SHOULD_SAMPLE_SH && !UNITY_SAMPLE_FULL_SH_PER_PIXEL
					giInput.ambient = IN.sh;
				#else
					giInput.ambient.rgb = 0.0;
				#endif
				giInput.probeHDR[0] = unity_SpecCube0_HDR;
				giInput.probeHDR[1] = unity_SpecCube1_HDR;
				#if defined(UNITY_SPECCUBE_BLENDING) || defined(UNITY_SPECCUBE_BOX_PROJECTION)
					giInput.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif
				#ifdef UNITY_SPECCUBE_BOX_PROJECTION
					giInput.boxMax[0] = unity_SpecCube0_BoxMax;
					giInput.probePosition[0] = unity_SpecCube0_ProbePosition;
					giInput.boxMax[1] = unity_SpecCube1_BoxMax;
					giInput.boxMin[1] = unity_SpecCube1_BoxMin;
					giInput.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif

				#if defined(_SPECULAR_SETUP)
					LightingStandardSpecular_GI(o, giInput, gi);
				#else
					LightingStandard_GI( o, giInput, gi );
				#endif

				#ifdef ASE_BAKEDGI
					gi.indirect.diffuse = BakedGI;
				#endif

				#if UNITY_SHOULD_SAMPLE_SH && !defined(LIGHTMAP_ON) && defined(ASE_NO_AMBIENT)
					gi.indirect.diffuse = 0;
				#endif

				#if defined(_SPECULAR_SETUP)
					c += LightingStandardSpecular (o, worldViewDir, gi);
				#else
					c += LightingStandard( o, worldViewDir, gi );
				#endif

				#ifdef ASE_TRANSMISSION
				{
					float shadow = _TransmissionShadow;
					#ifdef DIRECTIONAL
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 transmission = max(0 , -dot(o.Normal, gi.light.dir)) * lightAtten * Transmission;
					c.rgb += o.Albedo * transmission;
				}
				#endif

				#ifdef ASE_TRANSLUCENCY
				{
					float shadow = _TransShadow;
					float normal = _TransNormal;
					float scattering = _TransScattering;
					float direct = _TransDirect;
					float ambient = _TransAmbient;
					float strength = _TransStrength;

					#ifdef DIRECTIONAL
						float3 lightAtten = lerp( _LightColor0.rgb, gi.light.color, shadow );
					#else
						float3 lightAtten = gi.light.color;
					#endif
					half3 lightDir = gi.light.dir + o.Normal * normal;
					half transVdotL = pow( saturate( dot( worldViewDir, -lightDir ) ), scattering );
					half3 translucency = lightAtten * (transVdotL * direct + gi.indirect.diffuse * ambient) * Translucency;
					c.rgb += o.Albedo * translucency * strength;
				}
				#endif

				c.rgb += o.Emission;

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
				return c;
			}
			ENDCG
		}

	
	}
	CustomEditor "Thry.ShaderEditor"
	Fallback Off
}