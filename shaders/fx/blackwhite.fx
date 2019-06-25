
//
// blackwhite.fx
//

texture screenSource;
 
sampler TextureSampler = sampler_state
{
    Texture = <screenSource>;
};

float4 PixelShaderFunction(float2 TextureCoordinate : TEXCOORD0) : COLOR0
{
    float4 color = tex2D(TextureSampler, TextureCoordinate);
 
    float value = (color.r + color.g + color.b) / 3; 
    color.r = value;
    color.g = value;
    color.b = value;
 
    return color;
}
 
technique BlackAndWhite
{
    pass Pass1
    {
        PixelShader = compile ps_2_0 PixelShaderFunction();
    }
}
texture BlackWhiteTexture;	

sampler screenSampler = sampler_state
{
	Texture = <BlackWhiteTexture>;
};

float4 main(float2 uv : TEXCOORD0) : COLOR0 
{ 
    float4 Color; 
    Color = tex2D( screenSampler , uv); 
	Color.rgb = (Color.r+Color.g+Color.b)/3.0f; 
	if (Color.r<0.2 || Color.r>0.9) Color.r = 0; else Color.r = 1.0f; 
	if (Color.g<0.2 || Color.g>0.9) Color.g = 0; else Color.g = 1.0f; 
	if (Color.b<0.2 || Color.b>0.9) Color.b = 0; else Color.b = 1.0f;
    return Color; 
};

technique BlackWhite
{
	pass P1
	{
		PixelShader = compile ps_2_0 main();
	}
}