#version 330 core

out vec4 FracColor;

in vec2 TexCoord;

//采样图像
uniform sampler2D texture1;
uniform sampler2D texture2;

uniform float factor;
uniform float rotation_angle;

void main(){
  FracColor = mix(texture(texture1, TexCoord), texture(texture2, TexCoord), 0.2);
}