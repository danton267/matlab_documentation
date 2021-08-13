---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/stairs/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/stairs.html
                    github: line_plots/stairs.md
                    ---

                    ## Plot Single Data Series 









> Create a stairstep plot of sine evaluated at 40 equally spaced values between 0 and 4π. 

<pre class="mcode">X = linspace(0,4*pi,40);
Y = sin(X);

figure
stairs(Y)</pre>

![Figure contains an axes. The axes contains an object of type stair.](https://mathworks.com/help/examples/graphics/win64/PlotaSingleDataSeriesExample_01.png)

> The length of `Y` automatically determines and generates the *x*-axis scale. 

## Plot Multiple Data Series 









> Create a stairstep plot of two cosine functions evaluated at 50 equally spaced values between 0 and 4π. 

<pre class="mcode">X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];

figure
stairs(Y)</pre>

![Figure contains an axes. The axes contains 2 objects of type stair.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleDataSeriesExample_01.png)

> The number of rows in `Y` automatically determines and generates the *x*-axis scale. 

## Plot Single Data Series at Specified x-Values 









> Create a stairstep plot of a sine wave evaluated at equally spaced values between 0 and 4π. Specify the set of *x*-values for the plot. 

<pre class="mcode">X = linspace(0,4*pi,40);
Y = sin(X);

figure
stairs(X,Y)</pre>

![Figure contains an axes. The axes contains an object of type stair.](https://mathworks.com/help/examples/graphics/win64/PlotaSingleDataSeriesatSpecifiedxValuesExample_01.png)

> The entries in `Y` are plotted against the corresponding entries in `X`. 

## Plot Multiple Data Series at Specified x-Values 









> Create a stairstep plot of two cosine waves evaluated at equally spaced values between 0 and 4π. Specify the set of *x*-values for the plot. 

<pre class="mcode">X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];

figure
stairs(X,Y)</pre>

![Figure contains an axes. The axes contains 2 objects of type stair.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleDataSeriesatSpecifiedxValuesExample_01.png)

> The first vector input, `X`, determines the *x*-axis positions for both data series. 

## Plot Multiple Data Series at Unique Sets of x-Values 









> Create a stairstep plot of two sine waves evaluated at different values. Specify a unique set of *x*-values for plotting each data series. 

<pre class="mcode">x1 = linspace(0,2*pi)';
x2 = linspace(0,pi)';
X = [x1,x2];
Y = [sin(5*x1),exp(x2).*sin(5*x2)];

figure
stairs(X,Y)</pre>

![Figure contains an axes. The axes contains 2 objects of type stair.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleDataSeriesatUniqueSetsofxValuesExample_01.png)

> Each column of `X` is plotted against the corresponding column of `Y`. 

## Specify Line Style, Marker Symbol and Color 









> Create a stairstep plot and set the line style to a dot-dashed line, the marker symbol to circles, and the color to red. 

<pre class="mcode">X = linspace(0,4*pi,20);
Y = sin(X);

figure
stairs(Y, '-.or')</pre>

![Figure contains an axes. The axes contains an object of type stair.](https://mathworks.com/help/examples/graphics/win64/SpecifytheLineStyleMarkerSymbolandColorExample_01.png)

## Specify Additional Style Options 









> Create a stairstep plot and set the line width to 2, the marker symbols to diamonds, and the marker face color to cyan using `Name,Value` pair arguments. 

<pre class="mcode">X = linspace(0,4*pi,20);
Y = sin(X);

figure
stairs(Y,'LineWidth',2,'Marker','d','MarkerFaceColor','c')</pre>

![Figure contains an axes. The axes contains an object of type stair.](https://mathworks.com/help/examples/graphics/win64/SpecifyAdditionalStyleOptionsExample_01.png)

## Specify Axes for Stairstep Plots 









> Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Create separate stairstep plots in the axes by specifying the axes object as the first argument to `stairs`.

<pre class="mcode">x = linspace(0,2*pi);
y1 = 5*sin(x);
y2 = sin(5*x);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
stairs(ax1,x,y1)

% Bottom plot
ax2 = nexttile;  
stairs(ax2,x,y2)</pre>

![Figure contains 2 axes. Axes 1 contains an object of type stair. Axes 2 contains an object of type stair.](https://mathworks.com/help/examples/graphics/win64/StairsSpecificAxesExample_01.png)

## Modify Stairstep Plot After Creation 









> Create a stairstep plot of two data series and return the two stair objects.

<pre class="mcode">X = linspace(0,1,30)';
Y = [cos(10*X), exp(X).*sin(10*X)];
h = stairs(X,Y);</pre>

![Figure contains an axes. The axes contains 2 objects of type stair.](https://mathworks.com/help/examples/graphics2/win64/SetStairObjectPropertiesExample_01.png)

> Use small circle markers for the first data series. Use magenta filled circles for the second series. Use dot notation to set properties.

<pre class="mcode">h(1).Marker = 'o';
h(1).MarkerSize = 4;
h(2).Marker = 'o';
h(2).MarkerFaceColor = 'm';</pre>

![Figure contains an axes. The axes contains 2 objects of type stair.](https://mathworks.com/help/examples/graphics2/win64/SetStairObjectPropertiesExample_02.png)

## Create a Stairstep Plot using plot Function 









> Evaluate two cosine functions at 50 equally spaced values between 0 and 4π and create a stairstep plot using `plot`. 

<pre class="mcode">X = linspace(0,4*pi,50)';
Y = [0.5*cos(X), 2*cos(X)];
[xb,yb] = stairs(X,Y);</pre>

> `stairs` returns two matrices of the same size, `xb` and `yb`, but no plot. 

> Use `plot` to create the stairstep plot with `xb` and `yb`. 

<pre class="mcode">figure
plot(xb,yb)</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/CreateaStairstepPlotusingplotExample_01.png)

