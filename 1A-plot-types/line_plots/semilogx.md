---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/semilogx/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/semilogx.html
                    github: line_plots/semilogx.md
                    ---

                    ## Plot One Line 









> Define `x` as a vector of logarithmically spaced values from `0.1` to `100`, and define `y` as a copy of `x`. Create a linear-log plot of `x` and `y`, and call the `grid` function to show the grid lines.

<pre class="mcode">x = logspace(-1,2);
y = x;
semilogx(x,y)
grid on</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxOneLineExample_01.png)

## Plot Multiple Lines 









> Create a vector of logarithmically spaced *x*-coordinates and two vectors of *y*-coordinates. Plot two lines by passing comma-separated *x*-*y* pairs to `semilogx`.

<pre class="mcode">x = logspace(-1,2);
y1 = x;
y2 = -x;
semilogx(x,y1,x,y2)
grid on</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxMultipleLinesExample_01.png)

## Specify Axis Labels and Tick Values 









> Define `f` as a vector containing the frequencies from 10 Hz to 100,000 Hz. Define `gain` as a vector of power gain values in decibels. Then plot the gain values against frequency.

<pre class="mcode">f = logspace(1,5,100);
v = linspace(-50,50,100);
gain = (1-exp(5*(2.5*v.^2)./7500))/14;
semilogx(f,gain)
grid on</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxAxisLabelsTickValuesExample_01.png)

> Call the `yticks` function to reposition the *y*-axis tick values at whole-number increments along the *y*-axis. Then create *x*- and *y*-axis labels by calling the `xlabel` and `ylabel` functions.

<pre class="mcode">yticks([-5 -4 -3 -2 -1 0])
xlabel ('Freqency (Hz)')
ylabel('Power Gain (dB)')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxAxisLabelsTickValuesExample_02.png)

## Plot Points as Markers Without Lines 









> Create a set of *x*- and *y*-coordinates and display them in a linear-log plot. Specify the line style as `'o'` to display circular markers without connecting lines. Specify the marker fill color as the RGB triplet `[0 0.447 0.741]`, which corresponds to a dark shade of blue.

<pre class="mcode">x = logspace(-1,2,15);
y = 12 + x;
semilogx(x,y,'o','MarkerFaceColor',[0 0.447 0.741])
grid on</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxMarkersOnlyExample_01.png)

## Add a Legend 









> Create a vector of logarithmically spaced *x*-coordinates and two vectors of *y*-coordinates. Then plot two lines by passing comma-separated *x*-*y* pairs to `semilogx`. Display a legend by calling the `legend` function.

<pre class="mcode">x = logspace(1,4,100);
v = linspace(-50,50,100);
y1 = 100*exp(-1*((v+5).^2)./200);
y2 = 100*exp(-1*(v.^2)./200);
semilogx(x,y1,x,y2,'--')
legend('Measured','Estimated')
grid on</pre>

![Figure contains an axes. The axes contains 2 objects of type line. These objects represent Measured, Estimated.](https://mathworks.com/help/examples/graphics/win64/SemilogxAddLegendExample_01.png)

## Specify y-Coordinates Only 









> When you specify only one coordinate vector, `semilogx` plots those coordinates against the values `1:length(y)`. For example, define `y` as a vector of 5 values between `0` and 4`0`. Create a linear-log plot of y.

<pre class="mcode">y = [0 10 20 30 40];
semilogx(y)
grid on</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxYcoordinatesExample_01.png)

> If you specify `y` as a matrix, the columns of y are plotted against the values `1:size(y,1)`. For example, define `y` as a 5-by-3 matrix and pass it to the `semilogx` function. The resulting plot contains 3 lines, each of which has *x*-coordinates that range from `1` to `5`.

<pre class="mcode">y = [ 0    10    20
     10    20    30
     20    30    40
     30    40    50
     40    50    60];

semilogx(y)
grid on</pre>

![Figure contains an axes. The axes contains 3 objects of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxYcoordinatesExample_02.png)

## Specify Target Axes 









> Create a tiled chart layout in the `'flow'` tile arrangement, so that the axes fill the available space in the layout. Next, call the `nexttile` function to create an axes object and return it as `ax1`. Then display a linear-log plot by passing `ax1` to the `semilogx` function.

<pre class="mcode">tiledlayout('flow')
ax1 = nexttile;
x = logspace(-1,2);
y1 = 1./x;
semilogx(ax1,x,y1)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxTiledLayoutExample_01.png)

> Repeat the process to create a second linear-log plot.

<pre class="mcode">ax2 = nexttile;
y2 = x;
semilogx(ax2,x,y2)</pre>

![Figure contains 2 axes. Axes 1 contains an object of type line. Axes 2 contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxTiledLayoutExample_02.png)

## Change Line Appearance After Plotting 









> Create a linear-log plot containing two lines, and return the line objects in the variable `slg`.

<pre class="mcode">x = logspace(-1,2);
y1 = x;
y2 = -x;
slg = semilogx(x,y1,x,y2);</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxSetPropertiesExample_01.png)

> Change the width of the first line to `3`, and change the color of the second line to purple.

<pre class="mcode">slg(1).LineWidth = 3;
slg(2).Color = [0.4 0 1];</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxSetPropertiesExample_02.png)

## Plot Discontinuous Function 









> Insert `NaN` values wherever there are discontinuities in your data. The `semilogx` function displays gaps at those locations.

> Create a pair of x- and y-coordinate vectors. Replace the fortieth *y*-coordinate with a `NaN` value. Then create a linear-log plot of `x` and `y`.

<pre class="mcode">x = logspace(-1,2);
y = x;
y(40) = NaN;
semilogx(x,y)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SemilogxDiscontinuousExample_01.png)

