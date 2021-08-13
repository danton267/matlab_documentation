---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/volume_visualization/streamtube/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/streamtube.html
                    github: volume_visualization/streamtube.md
                    ---

                    ## Visualize flow 









> Use the `streamtube` function to indicate flow in the `wind` data set. The inputs include the coordinates, vector field components, and starting location for the stream tubes. 

<pre class="mcode">load wind
[sx,sy,sz] = meshgrid(80,20:10:50,0:5:15);
streamtube(x,y,z,u,v,w,sx,sy,sz);
view(3);
axis tight
shading interp;
camlight; 
lighting gouraud</pre>

![Figure contains an axes. The axes contains 16 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/StreamtubeVisualizeFlowExample_01.png)

## Visualize Flow Using Vertex Data and Divergence 









> Use vertex data returned by the `stream3` function and divergence data to visualize flow.

<pre class="mcode">load wind
[sx,sy,sz] = meshgrid(80,20:10:50,0:5:15);
verts = stream3(x,y,z,u,v,w,sx,sy,sz);
div = divergence(x,y,z,u,v,w);
streamtube(verts,x,y,z,-div);
view(3);
axis tight
shading interp
camlight 
lighting gouraud</pre>

![Figure contains an axes. The axes contains 16 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/StreamtubeVertexDataAndDivergenceExample_01.png)

