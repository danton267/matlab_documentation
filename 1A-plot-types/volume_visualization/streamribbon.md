---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/volume_visualization/streamribbon/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/streamribbon.html
                    github: volume_visualization/streamribbon.md
                    ---

                    ## Use Stream Ribbons to Indicate Flow 









> Use stream ribbons to indicate the flow in a data set.

<pre class="mcode">load wind
[sx,sy,sz] = meshgrid(80,20:10:50,0:5:15);
streamribbon(x,y,z,u,v,w,sx,sy,sz);
axis tight
shading interp
view(3);
camlight
lighting gouraud</pre>

![Figure contains an axes. The axes contains 16 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/StreamRibbonsToIndicateFlowExample_01.png)

## Indicate Flow Using Precalculated Data 









> Use precalculated vertex data, curl average velocity, and speed to indicate flow. 

<pre class="mcode">load wind
[sx,sy,sz] = meshgrid(80,20:10:50,0:5:15);
verts = stream3(x,y,z,u,v,w,sx,sy,sz);
cav = curl(x,y,z,u,v,w);
spd = sqrt(u.^2 + v.^2 + w.^2).*.1;
streamribbon(verts,x,y,z,cav,spd);
axis tight
shading interp
view(3);
camlight; 
lighting gouraud</pre>

![Figure contains an axes. The axes contains 16 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/StreamribbonUsingPrecalculatedDataExample_01.png)

> Using precalculated data enables you to use values other than those calculated from the single data source. In this case, the speed is reduced by a factor of 10 compared to the previous example.

## Stream Ribbon With Twist Angle 









> Specify a twist angle for the stream ribbon 

<pre class="mcode">t = 0:.15:15;
verts = {[cos(t)' sin(t)' (t/3)']};
twistangle = {cos(t)'};
streamribbon(verts,twistangle);
axis tight
shading interp
view(3)
camlight 
lighting gouraud</pre>

![Figure contains an axes. The axes contains an object of type surface.](https://mathworks.com/help/examples/graphics/win64/StreamRibbonWithTwistAngleExample_01.png)

## Combination of Cone and Stream Ribbon Plots 









> Create 3-D arrays and a cone plot.

<pre class="mcode">xmin = -7; xmax = 7;
ymin = -7; ymax = 7; 
zmin = -7; zmax = 7; 
x = linspace(xmin,xmax,30);
y = linspace(ymin,ymax,20);
z = linspace(zmin,zmax,20);
[x,y,z] = meshgrid(x,y,z);
u = y; 
v = -x; 
w = 0*x+1;
[cx,cy,cz] = meshgrid(linspace(xmin,xmax,30),...
   linspace(ymin,ymax,30),[-3 4]);
h = coneplot(x,y,z,u,v,w,cx,cy,cz,'quiver');
set(h,'Color','k');</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/graphics/win64/CombinationConeAndStreamRibbonExample_01.png)

> Plot two sets of stream ribbons. Then define the view and lighting.

<pre class="mcode">[sx,sy,sz] = meshgrid([-1 0 1],[-1 0 1],-6);
streamribbon(x,y,z,u,v,w,sx,sy,sz);
[sx,sy,sz] = meshgrid([1:6],[0],-6);
streamribbon(x,y,z,u,v,w,sx,sy,sz);
shading interp
view(-30,10) 
axis off tight
camproj perspective
camva(66)
camlookat 
camdolly(0,0,.5,'fixtarget')
camlight</pre>

![](https://mathworks.com/help/examples/graphics/win64/CombinationConeAndStreamRibbonExample_02.png)

