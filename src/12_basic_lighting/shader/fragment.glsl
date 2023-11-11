#version 330 core

out vec4 FracColor;

in vec3 outNormal;
in vec3 outFragPos;

uniform vec3 lightColor;
uniform vec3 objectColor;
uniform vec3 lightPos;
uniform vec3 viewPos;

void main(){
  float ambientStrength = 0.1;
  vec3 ambient = ambientStrength * lightColor;

  vec3 norm = normalize(outNormal);
  vec3 lightDir = normalize(lightPos - outFragPos);
  float diff = max(dot(norm, lightDir), 0.0);
  vec3 diffuse = diff * lightColor;

  float specularStrength = 0.5;
  vec3 viewDir = normalize(viewPos - outFragPos);
  vec3 reflectDir = reflect(-lightDir, norm);
  float spec = pow(max(dot(viewDir, reflectDir), 0.0), 32);
  vec3 specular = specularStrength * spec * lightColor;


  vec3 result = (ambient + diffuse + specular) * objectColor;
  FracColor = vec4(result, 1.0);

  // FracColor = vec4(FracColor, 1.0f) * mix(texture(texture1, TexCoord), texture(texture2, TexCoord), 0.2);
}