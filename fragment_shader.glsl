#version 460 core
out vec4 FragColor;

in vec3 Normal;   

uniform vec3 lightColor;

void main() {
    
    float brightness = max(dot(normalize(Normal), vec3(0.0, 1.0, 0.0)), 0.2);
    FragColor = vec4(lightColor * brightness, 1.0);
}