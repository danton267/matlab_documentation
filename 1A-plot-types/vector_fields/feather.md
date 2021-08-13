---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/vector_fields/feather/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/feather.html
                    github: vector_fields/feather.md
                    ---

                    ## Create Feather Plot Using Cartesian Values 









> Create a feather plot by specifying the components of each arrow as Cartesian values. The *n*th arrow originates from *n* on the *x*-axis.

<pre class="mcode">t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
feather(u,v)</pre>

![Figure contains an axes. The axes contains 10 objects of type line.](https://mathworks.com/help/examples/matlab/win64/FeatherPlotCartesianExample_01.png)

## Create Feather Plot Using Polar Values 









> Create a feather plot using polar coordinates by first converting them to Cartesian coordinates. 

> To do this, create vectors with polar coordinates. Convert them to Cartesian coordinates using the `pol2cart` function. Then, create the plot.

<pre class="mcode">th = -pi/2:pi/16:0;
r = 10*ones(size(th));
[u,v] = pol2cart(th,r);
feather(u,v)</pre>

![Figure contains an axes. The axes contains 10 objects of type line.](https://mathworks.com/help/examples/matlab/win64/FeatherPlotPolarExample_01.png)

## Create Feather Plot Using Complex Values 









> Create a vector of complex values. Then, display them using a feather plot. The real part determines the *x*-component of each arrow, and the imaginary part determines the *y*-component.

<pre class="mcode">Z = [2+3i -1-3i -1+i 2i 3-4i -2-2i -2+4i 0.5-i -3i 1+i];
feather(Z)</pre>

![Figure contains an axes. The axes contains 11 objects of type line.](https://mathworks.com/help/examples/matlab/win64/ComplexFeatherPlotExample_01.png)

## Specify Color of Feather Plot 









> Create a feather plot with red arrows.

<pre class="mcode">t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
feather(u,v,'r')</pre>

![Figure contains an axes. The axes contains 10 objects of type line.](https://mathworks.com/help/examples/matlab/win64/SpecifyFeatherArrowColorExample_01.png)

## Specify Line Width and Color of One Arrow 









> Specify the line width and color of a single arrow by assigning the arrow to a variable and then setting its properties. To do this, first create a feather plot and return an array of `Line` objects.

<pre class="mcode">t = -pi/2:pi/8:pi/2;
u = 10*sin(t);
v = 10*cos(t);
f = feather(u,v);</pre>

> Assign the first arrow to a variable. The first arrow corresponds to the first elements of `u` and `v`. Then, change the line width and color.

<pre class="mcode">f1 = f(1);
f1.Color = 'r';
f1.LineWidth = 2;</pre>

![Figure contains an axes. The axes contains 10 objects of type line.](https://mathworks.com/help/examples/matlab/win64/FeatherLineWidthColorOneArrowExample_01.png)

## Specify Axes for Feather Plot 









> Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 1-by-2 tiled chart layout. Call the `nexttile` function to create an axes object and return the object as `ax1`. Create the left plot by passing `ax1` to the `feather` function. Add a title to the plot by passing the axes to the `title` function. Repeat the process to create the right plot.

<pre class="mcode">tiledlayout(1,2)

% Left plot
ax1 = nexttile;
t = 0:pi/8:pi/2;
u1 = 10*sin(t);
v1 = 10*cos(t);
feather(ax1,u1,v1)
title(ax1,'Left Plot')

% Right plot
ax2 = nexttile;
u2 = zeros(5,1);
v2 = [1 -2 3 -4 5];
feather(ax2,u2,v2)
title(ax2,'Right Plot')</pre>

![Figure contains 2 axes. Axes 1 with title Left Plot contains 6 objects of type line. Axes 2 with title Right Plot contains 6 objects of type line.](https://mathworks.com/help/examples/matlab/win64/SpecifyAxesForFeatherPlotExample_01.png)

