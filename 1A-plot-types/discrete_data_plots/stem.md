---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/discrete_data_plots/stem/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/stem.html
                    github: discrete_data_plots/stem.md
                    ---

                    ## Plot Single Data Series 









> Create a stem plot of 50 data values between -2π and 2π. 

<pre class="mcode">figure
Y = linspace(-2*pi,2*pi,50);
stem(Y)</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics/win64/PlotSingleDataSeriesExample_01.png)

> Data values are plotted as stems extending from the baseline and terminating at the data value. The length of `Y` automatically determines the position of each stem on the *x*-axis. 

## Plot Multiple Data Series 









> Plot two data series using a two-column matrix. 

<pre class="mcode">figure
X = linspace(0,2*pi,50)';
Y = [cos(X), 0.5*sin(X)];
stem(Y)</pre>

![Figure contains an axes. The axes contains 2 objects of type stem.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleDataSeries1Example_01.png)

> Each column of `Y` is plotted as a separate series, and entries in the same row of `Y` are plotted against the same *x* value. The number of rows in `Y` automatically generates the position of each stem on the *x*-axis.

## Plot Single Data Series at Specified x values 









> Plot 50 data values of cosine evaluated between 0 and 2π and specify the set of *x* values for the stem plot. 

<pre class="mcode">figure
X = linspace(0,2*pi,50)';
Y = cos(X);
stem(X,Y)</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics/win64/PlotSingleDataSeriesatSpecifiedxvaluesExample_01.png)

> The first vector input determines the position of each stem on the *x*-axis. 

## Plot Multiple Data Series at Specified x values 









> Plot 50 data values of sine and cosine evaluated between 0 and 2π and specify the set of *x* values for the stem plot. 

<pre class="mcode">figure
X = linspace(0,2*pi,50)';
Y = [cos(X), 0.5*sin(X)];
stem(X,Y)</pre>

![Figure contains an axes. The axes contains 2 objects of type stem.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleDataSeriesatSpecifiedxvalues1Example_01.png)

> The vector input determines the *x*-axis positions for both data series. 

## Plot Multiple Data Series at Unique Sets of x values 









> Plot 50 data values of sine and cosine evaluated at different sets of *x* values. Specify the corresponding sets of *x* values for each series. 

<pre class="mcode">figure
x1 = linspace(0,2*pi,50)';
x2 = linspace(pi,3*pi,50)';
X = [x1, x2];
Y = [cos(x1), 0.5*sin(x2)];
stem(X,Y)</pre>

![Figure contains an axes. The axes contains 2 objects of type stem.](https://mathworks.com/help/examples/graphics/win64/StemPlotMultipleDataSeriesatUniqueSetsofxvaluesExample_01.png)

> Each column of `X` is plotted against the corresponding column of `Y`. 

## Fill in Plot Markers 









> Create a stem plot and fill in the circles that terminate each stem. 

<pre class="mcode">X = linspace(0,10,20)';
Y = (exp(0.25*X));
stem(X,Y,'filled')</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics/win64/FillinPlotMarkersExample_01.png)

## Specify Stem and Marker Options 









> Create a stem plot and set the line style to a dotted line, the marker symbols to diamonds, and the color to red using the `LineSpec` option. 

<pre class="mcode">figure
X = linspace(0,2*pi,50)';
Y = (exp(X).*sin(X));
stem(X,Y,':diamondr')</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics/win64/SpecifyStemandMarkerOptionsExample_01.png)

> To color the inside of the diamonds, use the `'fill'` option. 

## Specify Additional Stem and Marker Options 









> Create a stem plot and set the line style to a dot-dashed line, the marker face color to red, and the marker edge color to green using `Name,Value` pair arguments. 

<pre class="mcode">figure
X = linspace(0,2*pi,25)';
Y = (cos(2*X));
stem(X,Y,'LineStyle','-.',...
     'MarkerFaceColor','red',...
     'MarkerEdgeColor','green')</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics/win64/SpecifyAdditionalStemandMarkerOptionsExample_01.png)

> The stem remains the default color. 

## Specify Axes for Stem Plot 









> Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Create separate stem plots in the axes by specifying the axes object as the first argument to `stem`.

<pre class="mcode">x = 0:25;
y1 = exp(0.1*x); 
y2 = -exp(.05*x);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
stem(ax1,x,y1)

% Bottom plot
ax2 = nexttile;
stem(ax2,x,y2)</pre>

![Figure contains 2 axes. Axes 1 contains an object of type stem. Axes 2 contains an object of type stem.](https://mathworks.com/help/examples/graphics/win64/StemSpecifyAxesExample_01.png)

## Modify Stem Series After Creation 









> Create a 3-D stem plot and return the stem series object.

<pre class="mcode">X = linspace(0,2);
Y = X.^3;
Z = exp(X).*cos(Y);
h = stem3(X,Y,Z,'filled');</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics2/win64/SetStemObjectPropertiesFor3DStemPlotExample_01.png)

> Change the color to magenta and set the marker face color to yellow. Use `view` to adjust the angle of the axes in the figure. Use dot notation to set properties.

<pre class="mcode">h.Color = 'm';
h.MarkerFaceColor = 'y';
view(-10,35)</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics2/win64/SetStemObjectPropertiesFor3DStemPlotExample_02.png)

## Adjust Baseline Properties 









> Create a stem plot and change properties of the baseline. 

<pre class="mcode">X = linspace(0,2*pi,50);
Y = exp(0.3*X).*sin(3*X);
h = stem(X,Y);</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics/win64/AdjustBaselinePropertiesExample_01.png)

> Change the line style of the baseline. Use dot notation to set properties.

<pre class="mcode">hbase = h.BaseLine; 
hbase.LineStyle = '--';</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics/win64/AdjustBaselinePropertiesExample_02.png)

> Hide the baseline by setting its `Visible` property to `'off'` . 

<pre class="mcode">hbase.Visible = 'off';</pre>

## Change Baseline Level 









> Create a stem plot with a baseline level at 2. 

<pre class="mcode">X = linspace(0,2*pi,50)';
Y = (exp(0.3*X).*sin(3*X));
stem(X,Y,'BaseValue',2);</pre>

![Figure contains an axes. The axes contains an object of type stem.](https://mathworks.com/help/examples/graphics/win64/ChangetheBaselineLevelExample_01.png)

