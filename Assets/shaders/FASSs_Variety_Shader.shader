// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:False,qofs:0,qpre:1,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:36403,y:32642,varname:node_3138,prsc:2|normal-5609-RGB,emission-396-OUT,alpha-9602-OUT;n:type:ShaderForge.SFN_Tex2d,id:4986,x:31945,y:31748,ptovrint:False,ptlb:Main Texture,ptin:_MainTexture,varname:_MainTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7132-OUT;n:type:ShaderForge.SFN_Color,id:7394,x:31161,y:31498,ptovrint:False,ptlb:Color,ptin:_Color,varname:_MainColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:0;n:type:ShaderForge.SFN_Slider,id:7571,x:32374,y:31688,ptovrint:False,ptlb:Glow,ptin:_Glow,varname:_Glow,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:5;n:type:ShaderForge.SFN_Multiply,id:653,x:35456,y:33077,varname:node_653,prsc:2|A-4986-A,B-7571-OUT;n:type:ShaderForge.SFN_Fresnel,id:7175,x:32236,y:33300,varname:node_7175,prsc:2|EXP-6911-OUT;n:type:ShaderForge.SFN_Color,id:5101,x:32448,y:33627,ptovrint:False,ptlb:Fresnel 1 Color,ptin:_Fresnel1Color,varname:_Fresnel1Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:6911,x:32119,y:33744,ptovrint:False,ptlb:Fresnel 1 Amount,ptin:_Fresnel1Amount,varname:_Fresnel1Amount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.1,max:5;n:type:ShaderForge.SFN_Multiply,id:2813,x:32708,y:33496,varname:node_2813,prsc:2|A-1201-OUT,B-5101-RGB,C-8123-OUT;n:type:ShaderForge.SFN_Tex2d,id:126,x:32109,y:33437,ptovrint:False,ptlb:Fresnel 1 Tex,ptin:_Fresnel1Tex,varname:_Fresnel1Tex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-2325-UVOUT;n:type:ShaderForge.SFN_Multiply,id:1201,x:32472,y:33354,varname:node_1201,prsc:2|A-7175-OUT,B-126-RGB;n:type:ShaderForge.SFN_Add,id:2354,x:33378,y:32461,varname:node_2354,prsc:2|A-4141-OUT,B-6146-OUT;n:type:ShaderForge.SFN_Fresnel,id:5028,x:32314,y:34023,varname:node_5028,prsc:2|EXP-2489-OUT;n:type:ShaderForge.SFN_Color,id:6268,x:32360,y:34401,ptovrint:False,ptlb:Fresnel 2 Color,ptin:_Fresnel2Color,varname:_Fresnel2Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:2489,x:31944,y:34438,ptovrint:False,ptlb:Fresnel 2 Amount,ptin:_Fresnel2Amount,varname:_Fresnel2Amount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.5217391,max:5;n:type:ShaderForge.SFN_Multiply,id:6308,x:32763,y:34207,varname:node_6308,prsc:2|A-8070-OUT,B-6268-RGB,C-9785-OUT;n:type:ShaderForge.SFN_Tex2d,id:5146,x:32124,y:34186,ptovrint:False,ptlb:Fresnel Tex 2,ptin:_FresnelTex2,varname:_FresnelTex2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3885-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8070,x:32456,y:34135,varname:node_8070,prsc:2|A-5028-OUT,B-5146-RGB;n:type:ShaderForge.SFN_Add,id:6146,x:33772,y:34290,varname:node_6146,prsc:2|A-8910-OUT,B-3770-OUT,C-6074-OUT,D-5995-OUT;n:type:ShaderForge.SFN_Color,id:8738,x:32310,y:35055,ptovrint:False,ptlb:Fresnel 3 Color,ptin:_Fresnel3Color,varname:_Fresnel3Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:1006,x:32242,y:34958,ptovrint:False,ptlb:Fresnel 3 Amount,ptin:_Fresnel3Amount,varname:_Fresnel3Amount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.5217391,max:5;n:type:ShaderForge.SFN_Color,id:7910,x:32287,y:35882,ptovrint:False,ptlb:Fresnel 4 Color,ptin:_Fresnel4Color,varname:_Fresnel4Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Power,id:5109,x:32428,y:35633,varname:node_5109,prsc:2|VAL-1411-OUT,EXP-9812-OUT;n:type:ShaderForge.SFN_Slider,id:9812,x:32209,y:35787,ptovrint:False,ptlb:Fresnel 4 Amount,ptin:_Fresnel4Amount,varname:_Fresnel4Amount,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:0.5217391,max:5;n:type:ShaderForge.SFN_Multiply,id:685,x:32652,y:35667,varname:node_685,prsc:2|A-5109-OUT,B-7910-RGB,C-2140-OUT;n:type:ShaderForge.SFN_Multiply,id:1411,x:32236,y:35612,varname:node_1411,prsc:2|A-9857-OUT,B-9227-RGB;n:type:ShaderForge.SFN_Fresnel,id:569,x:32023,y:34647,varname:node_569,prsc:2;n:type:ShaderForge.SFN_Power,id:5820,x:32452,y:34811,varname:node_5820,prsc:2|VAL-5811-OUT,EXP-1006-OUT;n:type:ShaderForge.SFN_Multiply,id:1680,x:32685,y:34838,varname:node_1680,prsc:2|A-5820-OUT,B-8738-RGB,C-6639-OUT;n:type:ShaderForge.SFN_Tex2d,id:5103,x:32085,y:34839,ptovrint:False,ptlb:Fresnel Tex 3,ptin:_FresnelTex3,varname:_FresnelTex3,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7707-UVOUT;n:type:ShaderForge.SFN_Multiply,id:5811,x:32269,y:34783,varname:node_5811,prsc:2|A-569-OUT,B-5103-RGB;n:type:ShaderForge.SFN_Fresnel,id:9857,x:32052,y:35521,varname:node_9857,prsc:2;n:type:ShaderForge.SFN_Tex2d,id:9227,x:32052,y:35668,ptovrint:False,ptlb:Fresnel Tex 4,ptin:_FresnelTex4,varname:_FresnelTex4,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9252-UVOUT;n:type:ShaderForge.SFN_SwitchProperty,id:8910,x:33084,y:33338,ptovrint:False,ptlb:Fresnel 1?,ptin:_Fresnel1,varname:node_8910,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9614-OUT,B-2813-OUT;n:type:ShaderForge.SFN_Vector1,id:9883,x:32431,y:33196,varname:node_9883,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9614,x:32768,y:33207,varname:node_9614,prsc:2|A-9883-OUT,B-2813-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:3770,x:33080,y:34173,ptovrint:False,ptlb:Fresnel 2?,ptin:_Fresnel2,varname:node_3770,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1281-OUT,B-6308-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:6074,x:33132,y:34802,ptovrint:False,ptlb:Fresnel 3?,ptin:_Fresnel3,varname:node_6074,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9955-OUT,B-1680-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:5995,x:33113,y:35621,ptovrint:False,ptlb:Fresnel 4?,ptin:_Fresnel4,varname:node_5995,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-7509-OUT,B-685-OUT;n:type:ShaderForge.SFN_Vector1,id:7460,x:32724,y:34101,varname:node_7460,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:1281,x:32946,y:34054,varname:node_1281,prsc:2|A-7460-OUT,B-6308-OUT;n:type:ShaderForge.SFN_Vector1,id:18,x:32685,y:34677,varname:node_18,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9955,x:32887,y:34677,varname:node_9955,prsc:2|A-18-OUT,B-1680-OUT;n:type:ShaderForge.SFN_Vector1,id:9867,x:32694,y:35519,varname:node_9867,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:7509,x:32920,y:35508,varname:node_7509,prsc:2|A-9867-OUT,B-685-OUT;n:type:ShaderForge.SFN_Time,id:405,x:31481,y:33709,varname:node_405,prsc:2;n:type:ShaderForge.SFN_Panner,id:2325,x:31810,y:33367,varname:node_2325,prsc:2,spu:0,spv:1|UVIN-2371-UVOUT,DIST-7811-OUT;n:type:ShaderForge.SFN_Multiply,id:7811,x:31825,y:33628,varname:node_7811,prsc:2|A-9492-XYZ,B-405-T;n:type:ShaderForge.SFN_TexCoord,id:993,x:31125,y:33950,varname:node_993,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:2219,x:31466,y:34316,varname:node_2219,prsc:2;n:type:ShaderForge.SFN_Panner,id:3885,x:31794,y:33973,varname:node_3885,prsc:2,spu:0,spv:1|UVIN-993-UVOUT,DIST-2094-OUT;n:type:ShaderForge.SFN_Multiply,id:2094,x:31809,y:34235,varname:node_2094,prsc:2|A-4792-XYZ,B-2219-T;n:type:ShaderForge.SFN_Time,id:4735,x:31320,y:35879,varname:node_4735,prsc:2;n:type:ShaderForge.SFN_Panner,id:9252,x:31648,y:35536,varname:node_9252,prsc:2,spu:0,spv:1|UVIN-7193-UVOUT,DIST-3649-OUT;n:type:ShaderForge.SFN_Multiply,id:3649,x:31663,y:35798,varname:node_3649,prsc:2|A-9878-XYZ,B-4735-T;n:type:ShaderForge.SFN_ScreenPos,id:3634,x:30009,y:31524,varname:node_3634,prsc:2,sctp:2;n:type:ShaderForge.SFN_SwitchProperty,id:3592,x:30292,y:31428,ptovrint:False,ptlb:Main Texture Screen Space? (MAY LOOK WEIRD IN-GAME),ptin:_MainTextureScreenSpaceMAYLOOKWEIRDINGAME,varname:node_3592,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-2785-OUT,B-3634-UVOUT;n:type:ShaderForge.SFN_SwitchProperty,id:9602,x:35759,y:33057,ptovrint:False,ptlb:CustomColors,ptin:_CustomColors,varname:node_9602,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-653-OUT,B-653-OUT;n:type:ShaderForge.SFN_Multiply,id:779,x:31702,y:32140,varname:node_779,prsc:2|A-6893-RGB,B-1274-OUT,C-6717-OUT;n:type:ShaderForge.SFN_Fresnel,id:1274,x:31161,y:32369,varname:node_1274,prsc:2|EXP-2255-OUT;n:type:ShaderForge.SFN_Slider,id:2255,x:31082,y:32566,ptovrint:False,ptlb:Tint Amount,ptin:_TintAmount,varname:node_2255,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:10,cur:10,max:0;n:type:ShaderForge.SFN_SwitchProperty,id:5127,x:32312,y:32291,ptovrint:False,ptlb:Tint?,ptin:_Tint,varname:node_5127,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-5404-OUT,B-779-OUT;n:type:ShaderForge.SFN_Tex2d,id:6893,x:31313,y:32099,ptovrint:False,ptlb:Tint (Provide Rainbow Gradient or other texture),ptin:_TintProvideRainbowGradientorothertexture,varname:node_6893,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3630-UVOUT;n:type:ShaderForge.SFN_Slider,id:6717,x:31501,y:32368,ptovrint:False,ptlb:Tint Brightness,ptin:_TintBrightness,varname:node_6717,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:8123,x:32256,y:33852,ptovrint:False,ptlb:Fresnel 1 Glow,ptin:_Fresnel1Glow,varname:node_8123,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:100;n:type:ShaderForge.SFN_Slider,id:9785,x:32295,y:34606,ptovrint:False,ptlb:Fresnel 2 Glow,ptin:_Fresnel2Glow,varname:_Fresnel1Glow_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:100;n:type:ShaderForge.SFN_Slider,id:6639,x:32247,y:35288,ptovrint:False,ptlb:Fresnel 3 Glow,ptin:_Fresnel3Glow,varname:_Fresnel1Glow_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:100;n:type:ShaderForge.SFN_Slider,id:2140,x:32194,y:36046,ptovrint:False,ptlb:Fresnel 4 Glow,ptin:_Fresnel4Glow,varname:_Fresnel1Glow_copy_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3,max:100;n:type:ShaderForge.SFN_Add,id:7532,x:31432,y:31715,varname:node_7532,prsc:2|A-3592-OUT,B-9011-UVOUT;n:type:ShaderForge.SFN_Panner,id:3630,x:31039,y:32092,varname:node_3630,prsc:2,spu:1,spv:1|UVIN-4084-UVOUT,DIST-3614-OUT;n:type:ShaderForge.SFN_Vector4Property,id:7299,x:30627,y:32229,ptovrint:False,ptlb:Rainbow Speed,ptin:_RainbowSpeed,varname:node_7299,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:3614,x:30875,y:32216,varname:node_3614,prsc:2|A-7299-XYZ,B-3518-T;n:type:ShaderForge.SFN_Time,id:3518,x:30647,y:32514,varname:node_3518,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:4084,x:30748,y:32025,varname:node_4084,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:9011,x:31232,y:31783,varname:node_9011,prsc:2,spu:1,spv:1|UVIN-4084-UVOUT,DIST-5960-OUT;n:type:ShaderForge.SFN_Multiply,id:5960,x:30733,y:31852,varname:node_5960,prsc:2|A-1826-XYZ,B-5229-T;n:type:ShaderForge.SFN_Vector4Property,id:1826,x:30374,y:31836,ptovrint:False,ptlb:Maindispspeed,ptin:_Maindispspeed,varname:_RainbowSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Time,id:5229,x:30322,y:32057,varname:node_5229,prsc:2;n:type:ShaderForge.SFN_Vector1,id:2785,x:30030,y:31339,varname:node_2785,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector4Property,id:9492,x:31383,y:33414,ptovrint:False,ptlb:Fresnel,ptin:_Fresnel,varname:node_9492,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_TexCoord,id:2371,x:31607,y:33235,varname:node_2371,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector4Property,id:4792,x:31561,y:34098,ptovrint:False,ptlb:FresnelText2,ptin:_FresnelText2,varname:node_4792,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Panner,id:4322,x:31231,y:32284,varname:node_4322,prsc:2,spu:1,spv:1|UVIN-3083-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9951,x:31067,y:32408,varname:node_9951,prsc:2|A-6125-XYZ,B-9770-T;n:type:ShaderForge.SFN_TexCoord,id:3083,x:30940,y:32217,varname:node_3083,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector4Property,id:6125,x:30819,y:32421,ptovrint:False,ptlb:Rainbow Speed_copy,ptin:_RainbowSpeed_copy,varname:_RainbowSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Time,id:9770,x:30839,y:32706,varname:node_9770,prsc:2;n:type:ShaderForge.SFN_Panner,id:6096,x:31295,y:32348,varname:node_6096,prsc:2,spu:1,spv:1|UVIN-3239-UVOUT;n:type:ShaderForge.SFN_Multiply,id:2538,x:31131,y:32472,varname:node_2538,prsc:2|A-1319-XYZ,B-6483-T;n:type:ShaderForge.SFN_TexCoord,id:3239,x:31004,y:32281,varname:node_3239,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector4Property,id:1319,x:30883,y:32485,ptovrint:False,ptlb:Rainbow Speed_copy_copy,ptin:_RainbowSpeed_copy_copy,varname:_RainbowSpeed_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Time,id:6483,x:30903,y:32770,varname:node_6483,prsc:2;n:type:ShaderForge.SFN_Panner,id:7707,x:31818,y:34791,varname:node_7707,prsc:2,spu:0,spv:1|UVIN-5824-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6803,x:31432,y:35106,varname:node_6803,prsc:2|A-2585-XYZ,B-5691-T;n:type:ShaderForge.SFN_Time,id:5691,x:31089,y:35187,varname:node_5691,prsc:2;n:type:ShaderForge.SFN_Vector4Property,id:2585,x:31184,y:34969,ptovrint:False,ptlb:FresnelText4,ptin:_FresnelText4,varname:_FresnelText4,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Panner,id:5824,x:31417,y:34844,varname:node_5824,prsc:2,spu:0,spv:1|UVIN-7720-UVOUT,DIST-6803-OUT;n:type:ShaderForge.SFN_TexCoord,id:7720,x:30748,y:34821,varname:node_7720,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Desaturate,id:4141,x:32259,y:31540,varname:node_4141,prsc:2|COL-4986-RGB;n:type:ShaderForge.SFN_TexCoord,id:7193,x:31400,y:35416,varname:node_7193,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector4Property,id:9878,x:31343,y:35613,ptovrint:False,ptlb:Fresnel 4 speed,ptin:_Fresnel4speed,varname:node_9878,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Tex2d,id:9809,x:31548,y:31363,ptovrint:False,ptlb:MainTextdisp,ptin:_MainTextdisp,varname:node_9809,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-7532-OUT;n:type:ShaderForge.SFN_Multiply,id:3189,x:31822,y:31495,varname:node_3189,prsc:2|A-9809-R,B-9809-G,C-369-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:369,x:31614,y:31569,varname:node_369,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:7132,x:31772,y:31790,varname:node_7132,prsc:2|A-3189-OUT,B-4243-UVOUT;n:type:ShaderForge.SFN_Panner,id:4243,x:31432,y:31940,varname:node_4243,prsc:2,spu:1,spv:1|UVIN-2216-UVOUT,DIST-4396-OUT;n:type:ShaderForge.SFN_TexCoord,id:2216,x:31160,y:31957,varname:node_2216,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:4396,x:31079,y:31678,varname:node_4396,prsc:2|A-3760-XYZ,B-7971-T;n:type:ShaderForge.SFN_Time,id:7971,x:30557,y:32140,varname:node_7971,prsc:2;n:type:ShaderForge.SFN_Vector4Property,id:3760,x:30710,y:31622,ptovrint:False,ptlb:MainTexturespeed,ptin:_MainTexturespeed,varname:_MainTexturspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0,v2:0,v3:0,v4:0;n:type:ShaderForge.SFN_Multiply,id:396,x:33955,y:32443,varname:node_396,prsc:2|A-2354-OUT,B-5127-OUT;n:type:ShaderForge.SFN_Multiply,id:5404,x:31362,y:31494,varname:node_5404,prsc:2|A-7394-RGB,B-4116-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4116,x:31238,y:31353,ptovrint:False,ptlb:Strength,ptin:_Strength,varname:node_4116,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:5609,x:36105,y:32552,ptovrint:False,ptlb:NormalMap,ptin:_NormalMap,varname:node_5609,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;proporder:9602-3592-4986-7394-7571-8910-126-5101-8123-6911-3770-5146-9785-6268-2489-6074-5103-6639-8738-1006-5995-9227-2140-7910-9812-5127-6893-6717-2255-7299-1826-9492-4792-2585-9878-9809-3760-4116-5609;pass:END;sub:END;*/

Shader "FASS/Just_Ashtin_ Edit/FASS's Variety Shader" {
    Properties {
        [MaterialToggle] _CustomColors ("CustomColors", Float ) = 0
        [MaterialToggle] _MainTextureScreenSpaceMAYLOOKWEIRDINGAME ("Main Texture Screen Space? (MAY LOOK WEIRD IN-GAME)", Float ) = 0
        _MainTexture ("Main Texture", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,0)
        _Glow ("Glow", Range(0, 5)) = 0
        [MaterialToggle] _Fresnel1 ("Fresnel 1?", Float ) = 0
        _Fresnel1Tex ("Fresnel 1 Tex", 2D) = "white" {}
        _Fresnel1Color ("Fresnel 1 Color", Color) = (1,1,1,1)
        _Fresnel1Glow ("Fresnel 1 Glow", Range(0, 100)) = 0
        _Fresnel1Amount ("Fresnel 1 Amount", Range(0.1, 5)) = 0.1
        [MaterialToggle] _Fresnel2 ("Fresnel 2?", Float ) = 0
        _FresnelTex2 ("Fresnel Tex 2", 2D) = "white" {}
        _Fresnel2Glow ("Fresnel 2 Glow", Range(0, 100)) = 0
        _Fresnel2Color ("Fresnel 2 Color", Color) = (1,1,1,1)
        _Fresnel2Amount ("Fresnel 2 Amount", Range(0.1, 5)) = 0.5217391
        [MaterialToggle] _Fresnel3 ("Fresnel 3?", Float ) = 0
        _FresnelTex3 ("Fresnel Tex 3", 2D) = "white" {}
        _Fresnel3Glow ("Fresnel 3 Glow", Range(0, 100)) = 0
        _Fresnel3Color ("Fresnel 3 Color", Color) = (1,1,1,1)
        _Fresnel3Amount ("Fresnel 3 Amount", Range(0.1, 5)) = 0.5217391
        [MaterialToggle] _Fresnel4 ("Fresnel 4?", Float ) = 0
        _FresnelTex4 ("Fresnel Tex 4", 2D) = "white" {}
        _Fresnel4Glow ("Fresnel 4 Glow", Range(0, 100)) = 3
        _Fresnel4Color ("Fresnel 4 Color", Color) = (1,1,1,1)
        _Fresnel4Amount ("Fresnel 4 Amount", Range(0.1, 5)) = 0.5217391
        [MaterialToggle] _Tint ("Tint?", Float ) = 0
        _TintProvideRainbowGradientorothertexture ("Tint (Provide Rainbow Gradient or other texture)", 2D) = "white" {}
        _TintBrightness ("Tint Brightness", Range(0, 1)) = 0
        _TintAmount ("Tint Amount", Range(10, 0)) = 10
        _RainbowSpeed ("Rainbow Speed", Vector) = (0,0,0,0)
        _Maindispspeed ("Maindispspeed", Vector) = (0,0,0,0)
        _Fresnel ("Fresnel", Vector) = (0,0,0,0)
        _FresnelText2 ("FresnelText2", Vector) = (0,0,0,0)
        _FresnelText4 ("FresnelText4", Vector) = (0,0,0,0)
        _Fresnel4speed ("Fresnel 4 speed", Vector) = (0,0,0,0)
        _MainTextdisp ("MainTextdisp", 2D) = "white" {}
        _MainTexturespeed ("MainTexturespeed", Vector) = (0,0,0,0)
        _Strength ("Strength", Float ) = 0
        _NormalMap ("NormalMap", 2D) = "bump" {}
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "RenderType"="Transparent"
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
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _Fresnel1Tex; uniform float4 _Fresnel1Tex_ST;
            uniform sampler2D _FresnelTex2; uniform float4 _FresnelTex2_ST;
            uniform sampler2D _FresnelTex3; uniform float4 _FresnelTex3_ST;
            uniform sampler2D _FresnelTex4; uniform float4 _FresnelTex4_ST;
            uniform sampler2D _TintProvideRainbowGradientorothertexture; uniform float4 _TintProvideRainbowGradientorothertexture_ST;
            uniform sampler2D _MainTextdisp; uniform float4 _MainTextdisp_ST;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            UNITY_INSTANCING_BUFFER_START( Props )
                UNITY_DEFINE_INSTANCED_PROP( float4, _Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Glow)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnel1Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel1Amount)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnel2Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel2Amount)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnel3Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel3Amount)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnel4Color)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel4Amount)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Fresnel1)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Fresnel2)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Fresnel3)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Fresnel4)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _MainTextureScreenSpaceMAYLOOKWEIRDINGAME)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _CustomColors)
                UNITY_DEFINE_INSTANCED_PROP( float, _TintAmount)
                UNITY_DEFINE_INSTANCED_PROP( fixed, _Tint)
                UNITY_DEFINE_INSTANCED_PROP( float, _TintBrightness)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel1Glow)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel2Glow)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel3Glow)
                UNITY_DEFINE_INSTANCED_PROP( float, _Fresnel4Glow)
                UNITY_DEFINE_INSTANCED_PROP( float4, _RainbowSpeed)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Maindispspeed)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnel)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelText2)
                UNITY_DEFINE_INSTANCED_PROP( float4, _FresnelText4)
                UNITY_DEFINE_INSTANCED_PROP( float4, _Fresnel4speed)
                UNITY_DEFINE_INSTANCED_PROP( float4, _MainTexturespeed)
                UNITY_DEFINE_INSTANCED_PROP( float, _Strength)
            UNITY_INSTANCING_BUFFER_END( Props )
            struct VertexInput {
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_VERTEX_INPUT_INSTANCE_ID
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                UNITY_SETUP_INSTANCE_ID( v );
                UNITY_TRANSFER_INSTANCE_ID( v, o );
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                UNITY_SETUP_INSTANCE_ID( i );
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = _NormalMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
////// Lighting:
////// Emissive:
                float2 _MainTextureScreenSpaceMAYLOOKWEIRDINGAME_var = lerp( 0.0, sceneUVs.rg, UNITY_ACCESS_INSTANCED_PROP( Props, _MainTextureScreenSpaceMAYLOOKWEIRDINGAME ) );
                float4 _Maindispspeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Maindispspeed );
                float4 node_5229 = _Time;
                float2 node_7532 = (_MainTextureScreenSpaceMAYLOOKWEIRDINGAME_var+(i.uv0+(_Maindispspeed_var.rgb*node_5229.g)*float2(1,1)));
                float4 _MainTextdisp_var = tex2D(_MainTextdisp,TRANSFORM_TEX(node_7532, _MainTextdisp));
                float4 _MainTexturespeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _MainTexturespeed );
                float4 node_7971 = _Time;
                float2 node_7132 = ((_MainTextdisp_var.r*_MainTextdisp_var.g*i.uv0)+(i.uv0+(_MainTexturespeed_var.rgb*node_7971.g)*float2(1,1)));
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(node_7132, _MainTexture));
                float _Fresnel1Amount_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel1Amount );
                float4 _Fresnel_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel );
                float4 node_405 = _Time;
                float2 node_2325 = (i.uv0+(_Fresnel_var.rgb*node_405.g)*float2(0,1));
                float4 _Fresnel1Tex_var = tex2D(_Fresnel1Tex,TRANSFORM_TEX(node_2325, _Fresnel1Tex));
                float4 _Fresnel1Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel1Color );
                float _Fresnel1Glow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel1Glow );
                float3 node_2813 = ((pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel1Amount_var)*_Fresnel1Tex_var.rgb)*_Fresnel1Color_var.rgb*_Fresnel1Glow_var);
                float3 _Fresnel1_var = lerp( (0.0*node_2813), node_2813, UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel1 ) );
                float _Fresnel2Amount_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel2Amount );
                float4 _FresnelText2_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelText2 );
                float4 node_2219 = _Time;
                float2 node_3885 = (i.uv0+(_FresnelText2_var.rgb*node_2219.g)*float2(0,1));
                float4 _FresnelTex2_var = tex2D(_FresnelTex2,TRANSFORM_TEX(node_3885, _FresnelTex2));
                float4 _Fresnel2Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel2Color );
                float _Fresnel2Glow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel2Glow );
                float3 node_6308 = ((pow(1.0-max(0,dot(normalDirection, viewDirection)),_Fresnel2Amount_var)*_FresnelTex2_var.rgb)*_Fresnel2Color_var.rgb*_Fresnel2Glow_var);
                float3 _Fresnel2_var = lerp( (0.0*node_6308), node_6308, UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel2 ) );
                float4 node_4675 = _Time;
                float4 _FresnelText4_var = UNITY_ACCESS_INSTANCED_PROP( Props, _FresnelText4 );
                float4 node_5691 = _Time;
                float2 node_7707 = ((i.uv0+(_FresnelText4_var.rgb*node_5691.g)*float2(0,1))+node_4675.g*float2(0,1));
                float4 _FresnelTex3_var = tex2D(_FresnelTex3,TRANSFORM_TEX(node_7707, _FresnelTex3));
                float _Fresnel3Amount_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel3Amount );
                float4 _Fresnel3Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel3Color );
                float _Fresnel3Glow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel3Glow );
                float3 node_1680 = (pow(((1.0-max(0,dot(normalDirection, viewDirection)))*_FresnelTex3_var.rgb),_Fresnel3Amount_var)*_Fresnel3Color_var.rgb*_Fresnel3Glow_var);
                float3 _Fresnel3_var = lerp( (0.0*node_1680), node_1680, UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel3 ) );
                float4 _Fresnel4speed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel4speed );
                float4 node_4735 = _Time;
                float2 node_9252 = (i.uv0+(_Fresnel4speed_var.rgb*node_4735.g)*float2(0,1));
                float4 _FresnelTex4_var = tex2D(_FresnelTex4,TRANSFORM_TEX(node_9252, _FresnelTex4));
                float _Fresnel4Amount_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel4Amount );
                float4 _Fresnel4Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel4Color );
                float _Fresnel4Glow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel4Glow );
                float3 node_685 = (pow(((1.0-max(0,dot(normalDirection, viewDirection)))*_FresnelTex4_var.rgb),_Fresnel4Amount_var)*_Fresnel4Color_var.rgb*_Fresnel4Glow_var);
                float3 _Fresnel4_var = lerp( (0.0*node_685), node_685, UNITY_ACCESS_INSTANCED_PROP( Props, _Fresnel4 ) );
                float4 _Color_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Color );
                float _Strength_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Strength );
                float4 _RainbowSpeed_var = UNITY_ACCESS_INSTANCED_PROP( Props, _RainbowSpeed );
                float4 node_3518 = _Time;
                float2 node_3630 = (i.uv0+(_RainbowSpeed_var.rgb*node_3518.g)*float2(1,1));
                float4 _TintProvideRainbowGradientorothertexture_var = tex2D(_TintProvideRainbowGradientorothertexture,TRANSFORM_TEX(node_3630, _TintProvideRainbowGradientorothertexture));
                float _TintAmount_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TintAmount );
                float _TintBrightness_var = UNITY_ACCESS_INSTANCED_PROP( Props, _TintBrightness );
                float3 _Tint_var = lerp( (_Color_var.rgb*_Strength_var), (_TintProvideRainbowGradientorothertexture_var.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_TintAmount_var)*_TintBrightness_var), UNITY_ACCESS_INSTANCED_PROP( Props, _Tint ) );
                float3 emissive = ((dot(_MainTexture_var.rgb,float3(0.3,0.59,0.11))+(_Fresnel1_var+_Fresnel2_var+_Fresnel3_var+_Fresnel4_var))*_Tint_var);
                float3 finalColor = emissive;
                float _Glow_var = UNITY_ACCESS_INSTANCED_PROP( Props, _Glow );
                float node_653 = (_MainTexture_var.a*_Glow_var);
                float _CustomColors_var = lerp( node_653, node_653, UNITY_ACCESS_INSTANCED_PROP( Props, _CustomColors ) );
                return fixed4(finalColor,_CustomColors_var);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
