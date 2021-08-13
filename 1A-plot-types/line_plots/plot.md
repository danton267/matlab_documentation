---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/plot/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/plot.html
                    github: line_plots/plot.md
                    ---

                    ## Create Line Plot 









> Create `x` as a vector of linearly spaced values between 0 and 2π. Use an increment of π/100 between the values. Create `y` as sine values of `x`. Create a line plot of the data.

<pre class="mcode">x = 0:pi/100:2*pi;
y = sin(x);
plot(x,y)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/CreateLinePlotExample_01.png)

## Plot Multiple Lines 









> Define `x` as 100 linearly spaced values between -2π and 2π. Define `y1` and `y2` as sine and cosine values of `x`. Create a line plot of both sets of data.

<pre class="mcode">x = linspace(-2*pi,2*pi);
y1 = sin(x);
y2 = cos(x);

figure
plot(x,y1,x,y2)</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleLinesExample_01.png)

## Create Line Plot From Matrix 









> Define `Y` as the 4-by-4 matrix returned by the `magic` function. 

<pre class="mcode">Y = magic(4)</pre>

<pre class="mcode"><div class="codeoutput"><pre>Y = <span class="emphasis"><em>4×4</em></span>

    16     2     3    13
     5    11    10     8
     9     7     6    12
     4    14    15     1

</pre></div></pre>

> Create a 2-D line plot of `Y`. MATLAB® plots each matrix column as a separate line.

<pre class="mcode">figure
plot(Y)</pre>

![Figure contains an axes. The axes contains 4 objects of type line.](https://mathworks.com/help/examples/graphics/win64/CreateLinePlotFromMatrixExample_01.png)

## Specify Line Style 









> Plot three sine curves with a small phase shift between each line. Use the default line style for the first line. Specify a dashed line style for the second line and a dotted line style for the third line.

<pre class="mcode">x = 0:pi/100:2*pi;
y1 = sin(x);
y2 = sin(x-0.25);
y3 = sin(x-0.5);

figure
plot(x,y1,x,y2,'--',x,y3,':')</pre>

![Figure contains an axes. The axes contains 3 objects of type line.](https://mathworks.com/help/examples/graphics/win64/SpecifyLineStyleExample_01.png)

> MATLAB® cycles the line color through the default color order.

## Specify Line Style, Color, and Marker 









> Plot three sine curves with a small phase shift between each line. Use a green line with no markers for the first sine curve. Use a blue dashed line with circle markers for the second sine curve. Use only cyan star markers for the third sine curve.

<pre class="mcode">x = 0:pi/10:2*pi;
y1 = sin(x);
y2 = sin(x-0.25);
y3 = sin(x-0.5);

figure
plot(x,y1,'g',x,y2,'b--o',x,y3,'c*')</pre>

![Figure contains an axes. The axes contains 3 objects of type line.](https://mathworks.com/help/examples/graphics/win64/SpecifyLineStyleColorAndMarkerExample_01.png)

## Display Markers at Specific Data Points 









> Create a line plot and display markers at every fifth data point by specifying a marker symbol and setting the `MarkerIndices` property as a name-value pair.

<pre class="mcode">x = linspace(0,10);
y = sin(x);
plot(x,y,'-o','MarkerIndices',1:5:length(y))</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/DisplayMarkersAtSpecificDataPointsExample_01.png)

## Specify Line Width, Marker Size, and Marker Color 









> Create a line plot and use the `LineSpec` option to specify a dashed green line with square markers. Use `Name,Value` pairs to specify the line width, marker size, and marker colors. Set the marker edge color to blue and set the marker face color using an RGB color value.

<pre class="mcode">x = -pi:pi/10:pi;
y = tan(sin(x)) - sin(tan(x));

figure
plot(x,y,'--gs',...
    'LineWidth',2,...
    'MarkerSize',10,...
    'MarkerEdgeColor','b',...
    'MarkerFaceColor',[0.5,0.5,0.5])</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SpecifyLineWidthMarkerSizeAndMarkerColorExample_01.png)

## Add Title and Axis Labels 









> Use the `linspace` function to define `x` as a vector of 150 values between 0 and 10. Define `y` as cosine values of `x`.

<pre class="mcode">x = linspace(0,10,150);
y = cos(5*x);</pre>

> Create a 2-D line plot of the cosine curve. Change the line color to a shade of blue-green using an RGB color value. Add a title and axis labels to the graph using the `title`, `xlabel`, and `ylabel` functions.

<pre class="mcode">figure
plot(x,y,'Color',[0,0.7,0.9])

title('2-D Line Plot')
xlabel('x')
ylabel('cos(5x)')</pre>

![Figure contains an axes. The axes with title 2-D Line Plot contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/AddTitleAndAxisLabelsExample_01.png)

## Plot Durations and Specify Tick Format 









> Define `t` as seven linearly spaced `duration` values between 0 and 3 minutes. Plot random data and specify the format of the `duration` tick marks using the `'DurationTickFormat'` name-value pair argument.

<pre class="mcode">t = 0:seconds(30):minutes(3);
y = rand(1,7);

plot(t,y,'DurationTickFormat','mm:ss')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/matlab/win64/SpecifyDurationTickFormatsExample_01.png)

## Specify Axes for Line Plot 









> Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create an axes object and return the object as `ax1`. Create the top plot by passing `ax1` to the `plot` function. Add a title and *y*-axis label to the plot by passing the axes to the `title` and `ylabel` functions. Repeat the process to create the bottom plot.

<pre class="mcode">% Create data and 2-by-1 tiled chart layout
x = linspace(0,3);
y1 = sin(5*x);
y2 = sin(15*x);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
plot(ax1,x,y1)
title(ax1,'Top Plot')
ylabel(ax1,'sin(5x)')

% Bottom plot
ax2 = nexttile;
plot(ax2,x,y2)
title(ax2,'Bottom Plot')
ylabel(ax2,'sin(15x)')</pre>

![Figure contains 2 axes. Axes 1 with title Top Plot contains an object of type line. Axes 2 with title Bottom Plot contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/PlotSpecifyAxes19bExample_01.png)

## Modify Lines After Creation 









> Define `x` as 100 linearly spaced values between -2π and 2π. Define `y1` and `y2` as sine and cosine values of `x`. Create a line plot of both sets of data and return the two chart lines in `p`.

<pre class="mcode">x = linspace(-2*pi,2*pi);
y1 = sin(x);
y2 = cos(x);
p = plot(x,y1,x,y2);</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics2/win64/ChangeLinePropertiesUsingHandlesExample_01.png)

> Change the line width of the first line to 2. Add star markers to the second line. Use dot notation to set properties.

<pre class="mcode">p(1).LineWidth = 2;
p(2).Marker = '*';</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics2/win64/ChangeLinePropertiesUsingHandlesExample_02.png)

## Plot Circle 









> Plot a circle centered at the point (4,3) with a radius equal to 2. Use  `axis equal` to use equal data units along each coordinate direction.

<pre class="mcode">r = 2;
xc = 4;
yc = 3;

theta = linspace(0,2*pi);
x = r*cos(theta) + xc;
y = r*sin(theta) + yc;
plot(x,y)
axis equal</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/PlotCircleExample_01.png)

