
#version 330 core
layout (location = 0) in vec3 aPos;   // the position variable has attribute position 0
layout (location = 1) in vec3 aColor; // the color variable has attribute position 1
  
out vec3 ourColor; // output a color to the fragment shader
//out vec3 ourPosition;
uniform float xOffset;

void main()
{
    //gl_Position = vec4(aPos, 1.0);
	//gl_Position = vec4(aPos.x, -aPos.y, aPos.z, 1.0); // just add a - to the y position
	gl_Position = vec4(aPos.x + xOffset, aPos.y, aPos.z, 1.0); // add the xOffset to the x position of the vertex position
    ourColor = aColor; // set ourColor to the input color we got from the vertex data
	//ourPosition = aPos;
} 


    