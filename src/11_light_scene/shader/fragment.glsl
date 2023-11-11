#version 330 core

out vec4 FracColor;

in vec2 TexCoord;

//采样图像
uniform sampler2D texture1;
uniform sampler2D texture2;
uniform vec3 lightColor;
uniform vec3 objectColor;

void main(){
  FracColor = vec4(lightColor, 1.0f) * mix(texture(texture1, TexCoord), texture(texture2, TexCoord), 0.2);
  // FracColor = vec4(lightColor * objectColor, 1.0f);
}