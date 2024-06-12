float4 main(float4 pos : POSITION) : SV_POSITION
{
    return pos;
}
struct VertexShaderOutput
{
    float32_t4 position : SV_Position;
};

struct VertexShaderInput
{
    float32_t4 position : POSITION0;
};

VertexShaderOutput main(VertexShaderInput input)
{
    VertexShaderOutput output;
    output.position = input.position;
    return output;
}

struct PixelShaderOutput
{
    float32_t4 color : SV_TARGET0;
};

VertexShaderOutput main()
{
    VertexShaderOutput output;
    output.color = float32_t4(1.0, 1.0, 1.0, 1.0);
    return output;
}