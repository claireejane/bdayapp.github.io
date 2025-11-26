shader_type canvas_item;

uniform float wave_amount = 0.0;   // how strong the wobble is (0–something)
uniform float wave_speed  = 2.0;
uniform float wave_freq   = 20.0;

void fragment() {
    vec2 uv = UV;

    // horizontal wobble based on y position + time
    float offset = sin(uv.y * wave_freq + TIME * wave_speed) * wave_amount;
    uv.x += offset;

    COLOR = texture(TEXTURE, uv);
}