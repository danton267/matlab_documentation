---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/loglog/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/loglog.html
                    github: line_plots/loglog.md
                    ---

                    ## Plot One Line 









> Define `x` as a vector of 50 logarithmically spaced numbers on the interval [10-1,102]. Define `y` as 2x. Then plot `x` and `y`, and call the `grid` function to show the grid lines.

<pre class="mcode">x = logspace(-1,2);
y = 2.^x;
loglog(x,y)
grid on</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogSimpleExample_01.png)

## Plot Multiple Lines 









> Create a vector of *x*-coordinates and two vectors of *y*-coordinates. Plot two lines by passing comma-separated *x*-*y* pairs to `loglog`.

<pre class="mcode">x = logspace(-1,2);
y1 = 10.^x;
y2 = 1./10.^x;
loglog(x,y1,x,y2)
grid on</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogMultipleLinesExample_01.png)

> Alternatively, you can create the same plot with one *x*-*y* pair by specifying *y* as a matrix: `loglog(x,[y1;y2])`.

## Specify Axis Labels and Tick Values 









> Create a set of *x*- and *y*-coordinates and display them in a log-log plot. 

<pre class="mcode">x = logspace(-1,2,10000);
y = 5 + 3*sin(x);
loglog(x,y)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogAxisLabelsAndTicksExample_01.png)

> Call the `yticks` function to position the *y*-axis tick values at whole number increments along the *y*-axis. Then create *x*- and *y*-axis labels by calling the `xlabel` and `ylabel` functions.

<pre class="mcode">yticks([3 4 5 6 7])
xlabel('x')
ylabel('5 + 3 sin(x)')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogAxisLabelsAndTicksExample_02.png)

## Plot Points as Markers Without Lines 









> Create a set of *x*- and *y*-coordinates and display them in a log-log plot. Specify the line style as `'s'` to display square markers without connecting lines. Specify the marker fill color as the RGB triplet `[0 0.447 0.741]`, which corresponds to a dark shade of blue.

<pre class="mcode">x = logspace(-1,2,20);
y = 10.^x;
loglog(x,y,'s','MarkerFaceColor',[0 0.447 0.741])
grid on</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogMarkersOnlyExample_01.png)

## Add a Legend 









> Create two sets of *x*- and *y*-coordinates and display them in a log-log plot. Display a legend in the upper left corner of the plot by calling the `legend` function and specifying the location as `'northwest'`.

<pre class="mcode">x = logspace(-1,2,10000);
y1 = 5 + 3*sin(x/4);
y2 = 5 - 3*sin(x/4);
loglog(x,y1,x,y2,'--')
legend('Signal 1','Signal 2','Location','northwest')</pre>

![Figure contains an axes. The axes contains 2 objects of type line. These objects represent Signal 1, Signal 2.](https://mathworks.com/help/examples/graphics/win64/LoglogDisplayLegendExample_01.png)

## Specify y-Coordinates Only 









> When you specify only one coordinate vector, `loglog` plots those coordinates against the values `1:length(y)`. For example, define `y` as a vector of 6 values between `0.001` and `100`. Create a log-log plot of y.  

<pre class="mcode">y = [0.001 0.01 0.1 1 10 100];
loglog(y)
grid on</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogYcoordinatesOnlyExample_01.png)

> If you specify `y` as a matrix, the columns of y are plotted against the values `1:size(y,1)`. For example, define `y` as a 5-by-3 matrix and pass it to the `loglog` function. The resulting plot contains 3 lines, each of which has *x*-coordinates that range from `1` to `5`.

<pre class="mcode">y = [0.0010    0.0100    0.1000
     0.0100    0.1000    1.0000
     0.1000    1.0000   10.0000
     1.0000   10.5000  100.0000
    10.0000  100.0000 1000.0000];

loglog(y)
grid on</pre>

![Figure contains an axes. The axes contains 3 objects of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogYcoordinatesOnlyExample_02.png)

## Specify Target Axes 









> Create a tiled chart layout in the `'flow'` tile arrangement, so that the axes fill the available space in the layout. Next, call the `nexttile` function to create an axes object and return it as `ax1`. Then display a log-log plot by passing `ax1` to the `loglog` function.

<pre class="mcode">tiledlayout('flow')
ax1 = nexttile;
x = logspace(-1,2);
y1 = 10.^x;
loglog(ax1,x,y1)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogTiledLayoutExample_01.png)

> Repeat the process to create a second axes object and a second log-log plot.

<pre class="mcode">ax2 = nexttile;
y2 = 1./10.^x;
loglog(ax2,x,y2)</pre>

![Figure contains 2 axes. Axes 1 contains an object of type line. Axes 2 contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogTiledLayoutExample_02.png)

## Change Line Characteristics After Plotting 









> Create a log-log plot containing two lines, and return the line objects in the variable `lg`.

<pre class="mcode">x = logspace(-1,2);
y1 = 10.^x;
y2 = 1./10.^x;
lg = loglog(x,y1,x,y2);</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogModifyLineExample_01.png)

> Change the width of the first line to `2`, and change the color of the second line to purple.

<pre class="mcode">lg(1).LineWidth = 2;
lg(2).Color = [0.4 0 1];</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/LoglogModifyLineExample_02.png)

