# CS_550-Project5-Shaders


Goal of this project is to create an animated pattern by using OpenGL vertex and fragment shaders. 

Requirements:

    Draw a 3D object (your choice).
    Use a vertex shader to place a vertex-changing pattern on it. The pattern must be different for different parts of the object. Key off of the (s,t) coordinates or the (x,y,z) coordinates. Doing the exact same operation to all vertices doesn't count!
    Use a fragment shader to place a color-changing pattern on it. The pattern must not be a rectangle, because you have the code for this in the notes. The pattern must be different in different parts of the object. Key off of the (s,t) coordinates or the (x,y,z) coordinates.
    Doing the exact same operation to all fragments doesn't count! Just sliding the pattern around the object isn't good enough.
    The choice of patterns is (almost) up to you (see above).
    The choice of colors is up to you.
    Perform some sort of animation (your choice) on the patterns. That is, make the vertex and fragment patterns change with time.
    You can key off of anything you would like. Typically that is XYZ in model coordinates, XYZ in world coordinates, or ST. Be aware that, in the GLUT library, only the teapot has ST coordinates. The OsuSphere( ) also does.

    You must have the ability to show both patterns animating at the same time, and the ability to have each pattern animating separately. One way to control this is with keyboard keys:
    'b'	Animate both the vertex and fragment shader patterns together
    'f'	Freeze both animations
    'F'	Animate just the fragment shader pattern, freezing the vertex shader pattern
    'V'	Animate just the vertex shader pattern, freezing the fragment shader pattern 
    
    
    
    
This Project is Compatible with MAC environment.
