#version 330

#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>
#moj_import <minecraft:globals.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler2;

out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

vec2[] corners = vec2[](
  vec2(0.0, 0.781),
  vec2(0.0, 0.22),
  vec2(1.0, 0.22),
  vec2(1.0, 0.781)
);

void main() {
    vec3 newPosition = Position;

    // לוגיקה מקורית (ascent -2000)
    float id = floor((newPosition.y + 1000.0) / 2000.0);
    newPosition.y = mod(newPosition.y + 1000.0, 2000.0) - 1000.0;

    // זיהוי לפי צבע HEX #0A0B0C (ללא שקיפות - Color.a == 1.0)
    // R: 10/255 (0.039), G: 11/255 (0.043), B: 12/255 (0.047)
    bool isColorTrigger = (Color.r > 0.038 && Color.r < 0.040 && 
                           Color.g > 0.042 && Color.g < 0.044 && 
                           Color.b > 0.046 && Color.b < 0.048 && 
                           Color.a > 0.99);

    // הגדלה פי 3
    if (isColorTrigger) {
        newPosition.xy *= 3.0;
    }

    gl_Position = ProjMat * ModelViewMat * vec4(newPosition, 1.0);

    // הגדרות מהקוד המקורי
    if (id == -1.0) { 
        gl_Position.z -= 0.5; 
    }

    if (id >= 4.0 && id <= 5.0) {
        float aspect = ScreenSize.x / ScreenSize.y;
        vec2 corner = corners[gl_VertexID % 4];
        vec2 scaled = (corner * 2.0 - 1.0) * vec2(1.0, aspect);
        gl_Position = vec4(scaled, -0.9, 1.0); 
    }

    // צבע סופי
    if (isColorTrigger) {
        vertexColor = vec4(1.0, 0.0, 0.0, 1.0); // הופך לאדום
    } else {
        vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    }

    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    texCoord0 = UV0;
}