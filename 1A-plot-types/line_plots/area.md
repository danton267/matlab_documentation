---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/area/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/area.html
                    github: line_plots/area.md
                    ---

                    ## Create Area Plot with One Curve 









> Create a vector of four values. Display the values in an area plot.

<pre class="mcode">y = [1 5 6 3];
area(y)</pre>

![Figure contains an axes. The axes contains an object of type area.](https://mathworks.com/help/examples/graphics/win64/DisplayOneCurveInAreaGraphExample_01.png)

## Create Area Plot with Multiple Curves 









> Create matrix `Y`. Then display the values in `Y` as an area plot. Because `Y` contains three columns, `area` plots three curves and stacks them.

<pre class="mcode">Y = [1 5 3; 3 2 7; 1 5 3; 2 6 1];
area(Y)</pre>

![Figure contains an axes. The axes contains 3 objects of type area.](https://mathworks.com/help/examples/graphics/win64/PlotAreaGraphWithMultipleCurvesExample_01.png)

## Create Area Plot Using Horizontal Axis Values 









> Define `x` as a vector of three car dealership IDs. Define `Y` as a matrix containing the number of cars sold per model. Display the values in the matrix in an area plot. Then add the axis labels and a legend.

<pre class="mcode">x = [10 11 12];
Y = [21.6 25.4; 70.8 66.1; 58.0 43.6];
area(x,Y)
xlabel('Dealership ID')
ylabel('Sales')
legend({'Model A','Model B'})</pre>

![Figure contains an axes. The axes contains 2 objects of type area. These objects represent Model A, Model B.](https://mathworks.com/help/examples/graphics/win64/CustomizeHorizontalAxisTickLabelsExample_01.png)

> Set the tick marks along the *x*-axis to correspond to the values in `x`. 

<pre class="mcode">ax = gca; % current axes
ax.XTick = x;</pre>

![Figure contains an axes. The axes contains 2 objects of type area. These objects represent Model A, Model B.](https://mathworks.com/help/examples/graphics/win64/CustomizeHorizontalAxisTickLabelsExample_02.png)

## Adjust Baseline Value of Area Plot 









> Create matrix `Y`. Then display the values of `Y` in an area plot with a baseline value of -4`. `area` fills the areas specified by the curves and the line `y = -4`.

<pre class="mcode">Y = [1 5 3; 3 2 7; 1 5 3; 2 6 1];
basevalue = -4;
area(Y,basevalue)</pre>

![Figure contains an axes. The axes contains 3 objects of type area.](https://mathworks.com/help/examples/graphics/win64/ChangeBaseValueOfAreaGraphExample_01.png)

## Specify Line Style of Area Plot 









> Create matrix `Y`. Display the values of `Y` in an area plot that uses a dotted line style.

<pre class="mcode">Y = [1 3 5; 3 2 7; 3 4 2];
area(Y,'LineStyle',':')</pre>

![Figure contains an axes. The axes contains 3 objects of type area.](https://mathworks.com/help/examples/graphics/win64/SpecifyLineStyleForAreaGraphExample_01.png)

## Plot Filled Area into Target Axes 









> Create a tiled chart layout in the `'flow'` tile arrangement, so that the axes fill the available space in the layout. Next, call the `nexttile` function to create an `Axes` object and return it as `ax1`. Display an area plot by passing `ax1` to the `area` function.

<pre class="mcode">tiledlayout('flow')
ax1 = nexttile;
Y1 = [3 6; 1 5; 7 2; 5 9];
area(ax1,Y1)</pre>

![Figure contains an axes. The axes contains 2 objects of type area.](https://mathworks.com/help/examples/graphics/win64/PlotIntoTargetAxesExample_01.png)

> Repeat the process to create a second `Axes` object and a second area plot.

<pre class="mcode">ax2 = nexttile;
Y2 = [4 2 11; 5 6 0; 1 7 2; 9 5 9];
area(ax2,Y2)</pre>

![Figure contains 2 axes. Axes 1 contains 2 objects of type area. Axes 2 contains 3 objects of type area.](https://mathworks.com/help/examples/graphics/win64/PlotIntoTargetAxesExample_02.png)

## Change Area Characteristics After Plotting 









> Create matrix `Y`. Then create an area plot, specifying an output argument when calling the `area` function. In this case, `area` returns a vector of three `Area` objects. Each object corresponds to a different column of `Y`.

<pre class="mcode">Y = [2 3 4; 6 1 5; 7 4 9];
a = area(Y);</pre>

![Figure contains an axes. The axes contains 3 objects of type area.](https://mathworks.com/help/examples/graphics/win64/CustomizeASingleAreaObjectExample_01.png)

> Modify the second area to be green with thick red edges.

<pre class="mcode">a(2).FaceColor = [0.2 0.6 0.5];
a(2).EdgeColor = [0.63 0.08 0.18];
a(2).LineWidth = 2;</pre>

![Figure contains an axes. The axes contains 3 objects of type area.](https://mathworks.com/help/examples/graphics/win64/CustomizeASingleAreaObjectExample_02.png)

## Set Colors in Area Plot 









> Display an area plot with three curves.

<pre class="mcode">area([1 5 3; 3 2 7; 1 5 3; 2 6 1])</pre>

![Figure contains an axes. The axes contains 3 objects of type area.](https://mathworks.com/help/examples/graphics/win64/SetColorsInAreaPlotExample_01.png)

> Set the color order to blue, purple, and gray.

<pre class="mcode">newcolors = [0 0.5 1; 0.5 0 1; 0.7 0.7 0.7];
colororder(newcolors)</pre>

![Figure contains an axes. The axes contains 3 objects of type area.](https://mathworks.com/help/examples/graphics/win64/SetColorsInAreaPlotExample_02.png)

