---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/volume_visualization/streamparticles/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/streamparticles.html
                    github: volume_visualization/streamparticles.md
                    ---

                    ## Animate Flow Without Displaying Streamlines 









> This example uses streamlines in the `z = 5` plane to animate the flow along these lines with stream particles.

<pre class="mcode">load wind
figure
daspect([1,1,1]); 
view(2)
[verts,averts] = streamslice(x,y,z,u,v,w,[],[],5); 
sl = streamline([verts averts]);
axis tight manual off;
set(sl,'Visible','off')
iverts = interpstreamspeed(x,y,z,u,v,w,verts,.05);
zlim([4.9,5.1]);
streamparticles(iverts, 200, ...
    'Animate',15,'FrameRate',40, ...
    'MarkerSize',10,'MarkerFaceColor',[0 .5 0])</pre>

![](https://mathworks.com/help/examples/graphics2/win64/StreamlineExample_01.png)

