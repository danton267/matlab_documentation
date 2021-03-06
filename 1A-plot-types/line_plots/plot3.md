---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/plot3/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/plot3.html
                    github: line_plots/plot3.md
                    ---

                    ## Plot 3-D Helix 









> Define `t` as a vector of values between 0 and 10π. Define `st` and `ct` as vectors of sine and cosine values. Then plot `st`, `ct`, and `t`.

<pre class="mcode">t = 0:pi/50:10*pi;
st = sin(t);
ct = cos(t);
plot3(st,ct,t)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3DHelixExample_01.png)

## Plot Multiple Lines 









> Create two sets of *x*-, *y*-, and *z*-coordinates.

<pre class="mcode">t = 0:pi/500:pi;
xt1 = sin(t).*cos(10*t);
yt1 = sin(t).*sin(10*t);
zt1 = cos(t);

xt2 = sin(t).*cos(12*t);
yt2 = sin(t).*sin(12*t);
zt2 = cos(t);</pre>

> Call the `plot3` function, and specify consecutive `XYZ` triplets.

<pre class="mcode">plot3(xt1,yt1,zt1,xt2,yt2,zt2)</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3MultipleLinesExample_01.png)

## Plot Multiple Lines Using Matrices 









> Create matrix `X` containing three rows of *x*-coordinates. Create matrix `Y` containing three rows of *y*-coordinates. 

<pre class="mcode">t = 0:pi/500:pi;
X(1,:) = sin(t).*cos(10*t);
X(2,:) = sin(t).*cos(12*t);
X(3,:) = sin(t).*cos(20*t);

Y(1,:) = sin(t).*sin(10*t);
Y(2,:) = sin(t).*sin(12*t);
Y(3,:) = sin(t).*sin(20*t);</pre>

> Create matrix `Z` containing the *z*-coordinates for all three sets.

<pre class="mcode">Z = cos(t);</pre>

> Plot all three sets of coordinates on the same set of axes.

<pre class="mcode">plot3(X,Y,Z)</pre>

![Figure contains an axes. The axes contains 3 objects of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3MultipleLinesMatricesExample_01.png)

## Specify Equally-Spaced Tick Units and Axis Labels 









> Create vectors `xt`, `yt`, and `zt`.

<pre class="mcode">t = 0:pi/500:40*pi;
xt = (3 + cos(sqrt(32)*t)).*cos(t);
yt = sin(sqrt(32) * t);
zt = (3 + cos(sqrt(32)*t)).*sin(t);</pre>

> Plot the data, and use the `axis equal` command to space the tick units equally along each axis. Then specify the labels for each axis.

<pre class="mcode">plot3(xt,yt,zt)
axis equal
xlabel('x(t)')
ylabel('y(t)')
zlabel('z(t)')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3WithTitleAndAxisLabelsExample_01.png)

## Plot Points as Markers Without Lines 









> Create vectors `t`, `xt`, and `yt`, and plot the points in those vectors using circular markers.

<pre class="mcode">t = 0:pi/20:10*pi;
xt = sin(t);
yt = cos(t);
plot3(xt,yt,t,'o')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3MarkersOnlyExample_01.png)

## Customize Color and Marker 









> Create vectors `t`, `xt`, and `yt`, and plot the points in those vectors as a blue line with 10-point circular markers. Use a hexadecimal color code to specify a light blue fill color for the markers.

<pre class="mcode">t = 0:pi/20:10*pi;
xt = sin(t);
yt = cos(t);
plot3(xt,yt,t,'-o','Color','b','MarkerSize',10,'MarkerFaceColor','#D9FFFF')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3CustomColorAndMarkerExample_01.png)

## Specify Line Style 









> Create vector `t`. Then use `t` to calculate two sets of *x* and *y* values.

<pre class="mcode">t = 0:pi/20:10*pi;
xt1 = sin(t);
yt1 = cos(t);

xt2 = sin(2*t);
yt2 = cos(2*t);</pre>

> Plot the two sets of values. Use the default line for the first set, and specify a dashed line for the second set.

<pre class="mcode">plot3(xt1,yt1,t,xt2,yt2,t,'--')</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3SpecifyLineStyleExample_01.png)

## Modify Line After Plotting 









> Create vectors `t`, `xt`, and `yt`, and plot the data in those vectors. Return the chart line in the output variable `p`.

<pre class="mcode">t = linspace(-10,10,1000);
xt = exp(-t./10).*sin(5*t);
yt = exp(-t./10).*cos(5*t);
p = plot3(xt,yt,t);</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3ModifyLineAfterPlottingExample_01.png)

> Change the line width to `3`.

<pre class="mcode">p.LineWidth = 3;</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3ModifyLineAfterPlottingExample_02.png)

## Specify Target Axes 









> Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 1-by-2 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Create separate line plots in the axes by specifying the axes object as the first argument to `plot`3.

<pre class="mcode">tiledlayout(1,2)

% Left plot
ax1 = nexttile;
t = 0:pi/20:10*pi;
xt1 = sin(t);
yt1 = cos(t);
plot3(ax1,xt1,yt1,t)
title(ax1,'Helix With 5 Turns')

% Right plot
ax2 = nexttile;
t = 0:pi/20:10*pi;
xt2 = sin(2*t);
yt2 = cos(2*t);
plot3(ax2,xt2,yt2,t)
title(ax2,'Helix With 10 Turns')</pre>

![Figure contains 2 axes. Axes 1 with title Helix With 5 Turns contains an object of type line. Axes 2 with title Helix With 10 Turns contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3SpecifyAxes19bExample_01.png)

## Plot Duration Data with Custom Tick Format 









> Create `x` and `y` as vectors of random values between `0` and `1`. Create `z` as a vector of random duration values.

<pre class="mcode">x = rand(1,10);
y = rand(1,10);
z = duration(rand(10,1),randi(60,10,1),randi(60,10,1));</pre>

> Plot `x`, `y`, and `z`, and specify the format for the *z*-axis as minutes and seconds. Then add axis labels, and turn on the grid to make it easier to visualize the points within the plot box.

<pre class="mcode">plot3(x,y,z,'o','DurationTickFormat','mm:ss')
xlabel('X')
ylabel('Y')
zlabel('Duration')
grid on</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3DurationDataExample_01.png)

## Plot Line With Marker at One Data Point 









> Create vectors `xt`, `yt`, and `zt`. Plot the values, specifying a solid line with circular markers using the `LineSpec` argument. Specify the `MarkerIndices` property to place one marker at the 200th data point.

<pre class="mcode">t = 0:pi/500:pi;
xt(1,:) = sin(t).*cos(10*t);
yt(1,:) = sin(t).*sin(10*t);
zt = cos(t);
plot3(xt,yt,zt,'-o','MarkerIndices',200)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/Plot3LineWithOneMarkerExample_01.png)

