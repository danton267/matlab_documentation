---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/volume_visualization/streamline/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/streamline.html
                    github: volume_visualization/streamline.md
                    ---

                    ## Draw Streamlines 









> Define arrays `x`, `y`, `u`, and `v`. 

<pre class="mcode">[x,y] = meshgrid(0:0.1:1,0:0.1:1);
u = x;
v = -y;</pre>

> Create a quiver plot of the data. Plot streamlines that start at different points along the line y=1.

<pre class="mcode">figure
quiver(x,y,u,v)

startx = 0.1:0.1:1;
starty = ones(size(startx));
streamline(x,y,u,v,startx,starty)</pre>

![Figure contains an axes. The axes contains 11 objects of type quiver, line.](https://mathworks.com/help/examples/graphics/win64/DrawStreamlinesExample_01.png)

