#version 330 core

out vec4 FracColor;

in vec3 ourColor;
in vec2 ourTexCoord;

//采样图像
uniform sampler2D texture1;
uniform sampler2D texture2;

uniform float factor;
uniform float rotation_angle;

void main(){
  FracColor = mix(texture(texture1, ourTexCoord), texture(texture2, ourTexCoord), abs(sin(factor)*0.5));
  // FracColor = vec4(ourTexCoord.x, ourTexCoord.y, 1.0f, 1.0f);
  // FracColor = vec4(1.0f, 0.0f, 1.0f, 1.0f);
}