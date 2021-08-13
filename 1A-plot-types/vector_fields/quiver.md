---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/vector_fields/quiver/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/quiver.html
                    github: vector_fields/quiver.md
                    ---

                    ## Create Quiver Plot 









> Load sample data that represents air currents over North America. For this example, select a subset of the data.

<pre class="mcode">load('wind','x','y','u','v')
X = x(11:22,11:22,1);
Y = y(11:22,11:22,1);
U = u(11:22,11:22,1);
V = v(11:22,11:22,1);</pre>

> Create a quiver plot of the subset you selected. The vectors `X` and `Y` represent the location of the base of each arrow, and `U` and `V` represent the directional components of each arrow. By default, the `quiver` function shortens the arrows so they do not overlap. Call `axis equal` to use equal data unit lengths along each axis. This makes the arrows point in the correct direction.

<pre class="mcode">quiver(X,Y,U,V)
axis equal</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/CreateQuiverPlotWindExample_01.png)

## Disable Automatic Scaling 









> By default, the `quiver` function shortens arrows so they do not overlap. Disable automatic scaling so that arrow lengths are determined entirely by `U` and `V` by setting the `scale` argument to `0`.

> For instance, create a grid of `X` and `Y` values using the `meshgrid` function. Specify the directional components using these values. Then, create a quiver plot with no automatic scaling.

<pre class="mcode">[X,Y] = meshgrid(0:6,0:6);
U = 0.25*X;
V = 0.5*Y;
quiver(X,Y,U,V,0)</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/DisableAutomaticScalingExample_01.png)

## Plot Gradient and Contours 









> Plot the gradient and contours of the function z=xe-x2-y2. Use the `quiver` function to plot the gradient and the `contour` function to plot the contours.

> First, create a grid of *x-* and *y-*values that are equally spaced. Use them to calculate *z*. Then, find the gradient of *z* by specifying the spacing between points.

<pre class="mcode">spacing = 0.2;
[X,Y] = meshgrid(-2:spacing:2);
Z = X.*exp(-X.^2 - Y.^2);
[DX,DY] = gradient(Z,spacing);</pre>

> Display the gradient vectors as a quiver plot. Then, display contour lines in the same axes. Adjust the display so that the gradient vectors appear perpendicular to the contour lines by calling `axis equal`.

<pre class="mcode">quiver(X,Y,DX,DY)
hold on
contour(X,Y,Z)
axis equal
hold off</pre>

![Figure contains an axes. The axes contains 2 objects of type quiver, contour.](https://mathworks.com/help/examples/matlab/win64/PlotGradientAndContoursExample_01.png)

## Specify Arrow Color 









> Create a quiver plot and specify a color for the arrows.

<pre class="mcode">[X,Y] = meshgrid(-pi:pi/8:pi,-pi:pi/8:pi);
U = sin(Y);
V = cos(X);
quiver(X,Y,U,V,'r')</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/SpecifyArrowColorQuiverExample_01.png)

## Specify Axes for Quiver Plot 









> Create a grid of `X` and `Y` values and two sets of `U` and `V` directional components.

<pre class="mcode">[X,Y] = meshgrid(0:pi/8:pi,-pi:pi/8:pi);
U1 = sin(X);
V1 = cos(Y);
U2 = sin(Y);
V2 = cos(X); </pre>

> Create a tiled layout of plots with two axes, `ax1` and `ax2`. Add a quiver plot and title to each axes. *(Before R2019b, use *subplot`* instead of *`tiledlayout` *and* `nexttile`*.)*

<pre class="mcode">tiledlayout(1,2)

ax1 = nexttile;
quiver(ax1,X,Y,U1,V1)
axis equal
title(ax1,'Left Plot')

ax2 = nexttile;
quiver(ax2,X,Y,U2,V2)
axis equal
title(ax2,'Right Plot')</pre>

![Figure contains 2 axes. Axes 1 with title Left Plot contains an object of type quiver. Axes 2 with title Right Plot contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/SpecifyAxesForQuiverPlotExample_01.png)

## Modify Quiver Plot After Creation 









> Create a quiver plot and return the quiver object. Then, remove the arrowheads and add dot markers at the base of each arrow.

<pre class="mcode">[X,Y] = meshgrid(-pi:pi/8:pi,-pi:pi/8:pi);
U = sin(Y);
V = cos(X);

q = quiver(X,Y,U,V);
q.ShowArrowHead = 'off';
q.Marker = '.';</pre>

![Figure contains an axes. The axes contains an object of type quiver.](https://mathworks.com/help/examples/matlab/win64/ModifyQuiverPlotAfterCreationExample_01.png)

