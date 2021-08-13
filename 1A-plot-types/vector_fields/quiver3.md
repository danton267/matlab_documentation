---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/vector_fields/quiver3/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/quiver3.html
                    github: vector_fields/quiver3.md
                    ---

                    ## Create 3-D Quiver Plot 









> Load sample data that represents air currents over North America. For this example, select a subset of the data.

<pre class="mcode">load wind
X = x(5:10,20:25,6:10);
Y = y(5:10,20:25,6:10);
Z = z(5:10,20:25,6:10);
U = u(5:10,20:25,6:10);
V = v(5:10,20:25,6:10);
W = w(5:10,20:25,6:10);</pre>

> Create a 3-D quiver plot of the subset you selected. The vectors `X`, `Y`, and `Z` represent the location of the base of each arrow, and `U`, `V`, and `W` represent the directional components of each arrow. By default, the `quiver3` function shortens the arrows so they do not overlap. Call `axis equal` to use equal data unit lengths along each axis. This makes the arrows point in the correct direction.

<pre class="mcode">quiver3(X,Y,Z,U,V,W)
axis equal</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/Create3DQuiverPlotWindExample_01.png)

## Disable Automatic Scaling 









> By default, the `quiver3` function shortens arrows so they do not overlap. To disable automatic scaling so that arrow lengths are determined entirely by `U`, `V`, and `W`, set the `scale` argument to `0`.

> For example, first return the *x*-,  *y*-, and *z*-coordinates of a unit sphere with 10-by-10 faces. Calculate the directional components of its surface normals using the `surfnorm` function. Then, create a 3-D quiver plot with no automatic scaling.

<pre class="mcode">[X,Y,Z] = sphere(10);
[U,V,W] = surfnorm(X,Y,Z);
quiver3(X,Y,Z,U,V,W,0)
axis equal</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/DisableAutomaticScaling3DExample_01.png)

> For comparison, create the plot with automatic scaling. Note that the arrows are shorter and do not overlap.

<pre class="mcode">figure
quiver3(X,Y,Z,U,V,W)
axis equal</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/DisableAutomaticScaling3DExample_02.png)

## Plot Vectors Normal to Surface 









> Plot vectors that are normal to the surface defined by the function z=xe-x2-y2. Use the `quiver3` function to plot the vectors and the `surf` function to plot the surface.

> First, create a grid of *x-* and *y-*values that are equally spaced. Use them to calculate *z*. Then, find the normal vectors.

<pre class="mcode">[X,Y] = meshgrid(-2:0.25:2,-1:0.2:1);
Z = X.*exp(-X.^2 - Y.^2);
[U,V,W] = surfnorm(X,Y,Z);</pre>

> Display the vectors as a 3-D quiver plot. Then, display the surface in the same axes. Adjust the display so that the vectors appear normal to the surface by calling `axis equal`.

<pre class="mcode">quiver3(X,Y,Z,U,V,W)
hold on
surf(X,Y,Z)
axis equal</pre>

![Figure contains an axes. The axes contains 2 objects of type quiver, surface.](https://mathworks.com/help/examples/matlab/win64/PlotSurfaceAndNormalsExample_01.png)

## Specify Arrow Color 









> Create a 3-D quiver plot and specify a color for the arrows.

> For example, first return the *x*-, *y*-, and *z*- coordinates of a surface. Calculate the directional components of its surface normals using the `surfnorm` function. 

<pre class="mcode">[X,Y] = meshgrid(-pi/2:pi/8:pi/2,-pi/2:pi/8:pi/2);
Z = sin(X) + cos(Y);
[U,V,W] = surfnorm(Z);</pre>

> Then, create a 3-D quiver plot with red arrows.

<pre class="mcode">quiver3(X,Y,Z,U,V,W,'r')
axis equal</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/SpecifyArrowColorQuiver3Example_01.png)

## Specify Axes for 3-D Quiver Plot 









> Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 1-by-2 tiled chart layout. Call the `nexttile` function to create an axes object and return the object as `ax1`. Create the left plot by passing `ax1` to the `quiver3` function. Add a title to the plot by passing the axes to the `title` function. Repeat the process to create the right plot.

<pre class="mcode">[X,Y] = meshgrid(-2:0.25:0,-2:0.25:0);
Z1 = -0.5*(X.^2 + Y.^2);
[U1,V1,W1] = surfnorm(Z1);
Z2 = -X.*Y;
[U2,V2,W2] = surfnorm(Z2);

tiledlayout(1,2)

% Left plot
ax1 = nexttile;
quiver3(ax1,X,Y,Z1,U1,V1,W1)
axis equal
title(ax1,'Left Plot')

% Right plot
ax2 = nexttile;
quiver3(ax2,X,Y,Z2,U2,V2,W2)
axis equal
title(ax2,'Right Plot')</pre>

![Figure contains 2 axes. Axes 1 with title Left Plot contains an object of type quiver. Axes 2 with title Right Plot contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/SpecifyAxesFor3DQuiverPlotExample_01.png)

## Modify 3-D Quiver Plot After Creation 









> Create a 3-D quiver plot and return the quiver object. Then, remove the arrowheads and add dot markers at the base of each arrow.

<pre class="mcode">[X,Y] = meshgrid(-3:0.5:3,-3:0.5:3);
Z = 0.2*(Y.^2 - X.^2);
[U,V,W] = surfnorm(Z);

q = quiver3(X,Y,Z,U,V,W);
axis equal
q.ShowArrowHead = 'off';
q.Marker = '.';</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/Modify3DQuiverPlotAfterCreationExample_01.png)

