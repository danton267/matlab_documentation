---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/animation/comet/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/comet.html
                    github: animation/comet.md
                    ---

                    ## Create Comet Plot 









> Create a comet plot of data in `y` versus data in `x`. Create `y` as a vector of sine function values for input values between 0 and 2π. Create x as a vector of cosine function values for input values between 0 and 2π. Use an increment of π/100 between the values. Then, plot the data.

<pre class="mcode">t = 0:pi/100:2*pi;
y = sin(t);
x = cos(t);
comet(x,y)</pre>

![Figure contains an axes. The axes contains 3 objects of type line, animatedline.](https://mathworks.com/help/examples/graphics2/win64/CreateCometPlotXYExample_01.png)

## Control Comet Body Length 









> Create a comet plot and specify the comet body length by setting the scale factor input `p`. The comet body is a trailing segment in a different color that follows the head before fading. 

> Create `x` and `y` as vectors of trigonometric functions with input values from 0 to 4π. Specify `p` as 0.5 so that the comet body length is `0.5*length(y)`. Then, plot the data.

<pre class="mcode">t = 0:pi/50:4*pi;
x = -sin(t) - sin(t/2);
y = -cos(t) + cos(t/2);
p = 0.5;
comet(x,y,p)</pre>

![Figure contains an axes. The axes contains 3 objects of type line, animatedline.](https://mathworks.com/help/examples/graphics2/win64/CreateCometPlotXYPExample_01.png)

## Create Plots in Specified Axes 









> Create two comet plots in a tiled chart layout by specifying the target axes for each plot. Create two data sets, `x1` and `y1` and `x2` and `y2` as vectors of trigonometric functions with input values from 0 to 4π. Specify the body length scale factor `p` as 0.25 so that the body length is `0.25*length(y)`.

<pre class="mcode">t = 0:pi/20:4*pi;
x1 = -cos(t) + cos(t/2);
y1 = -sin(t) - sin(t/2);
x2 =  cos(t) - cos(t/2);
y2 = -sin(t) - sin(t/2);
p = 0.25;</pre>

> Store the two `Axes` objects as `ax1` and `ax2`. Specify the target axes for each comet plot by including the `Axes` object as the first input argument to `comet`.

<pre class="mcode">tiledlayout(1,2);
ax1 = nexttile;
ax2 = nexttile;

comet(ax1,x1,y1,p)
comet(ax2,x2,y2,p)</pre>

![Figure contains 2 axes. Axes 1 contains 3 objects of type line, animatedline. Axes 2 contains 3 objects of type line, animatedline.](https://mathworks.com/help/examples/graphics2/win64/CreateCometPlotAxXYPExample_01.png)

