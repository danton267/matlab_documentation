---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/scatter_and_bubble_charts/scatter/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/scatter.html
                    github: scatter_and_bubble_charts/scatter.md
                    ---

                    ## Create Scatter Plot 









> Create `x` as 200 equally spaced values between 0 and 3π. Create `y` as cosine values with random noise. Then, create a scatter plot.

<pre class="mcode">x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);  
scatter(x,y)</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/CreateScatterPlotExample_01.png)

## Vary Circle Size 









> Create a scatter plot using circles with different sizes. Specify the size in points squared

<pre class="mcode">x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
sz = linspace(1,100,200);
scatter(x,y,sz)</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/VaryCircleSizeExample_01.png)

> Corresponding elements in `x`, `y`, and `sz` determine the location and size of each circle. To plot all circles with the equal area, specify `sz` as a numeric scalar.

## Vary Circle Color 









> Create a scatter plot and vary the circle color. 

<pre class="mcode">x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
c = linspace(1,10,length(x));
scatter(x,y,[],c)</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/VaryCircleColorExample_01.png)

> Corresponding elements in `x`, `y`, and `c` determine the location and color of each circle. The `scatter` function maps the elements in `c` to colors in the current colormap.

## Fill the Markers 









> Create a scatter plot and fill in the markers. `scatter` fills each marker using the color of the marker edge.

<pre class="mcode">x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
sz = 25;
c = linspace(1,10,length(x));
scatter(x,y,sz,c,'filled')</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/VaryCircleSizeandColorExample_01.png)

## Specify Marker Symbol 









> Create vectors `x` and `y` as sine and cosine values with random noise. Then, create a scatter plot and use diamond markers with an area of 140 points squared.

<pre class="mcode">theta = linspace(0,2*pi,150);
x = sin(theta) + 0.75*rand(1,150);
y = cos(theta) + 0.75*rand(1,150);  
sz = 140;
scatter(x,y,sz,'d')</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/SpecifyMarkerSymbolExample_01.png)

## Change Marker Color and Line Width 









> Create vectors `x` and `y` as sine and cosine values with random noise. Create a scatter plot and set the marker edge color, marker face color, and line width.

<pre class="mcode">theta = linspace(0,2*pi,300);
x = sin(theta) + 0.75*rand(1,300);
y = cos(theta) + 0.75*rand(1,300);  
sz = 40;
scatter(x,y,sz,'MarkerEdgeColor',[0 .5 .5],...
              'MarkerFaceColor',[0 .7 .7],...
              'LineWidth',1.5)</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/SpecifyMarkerPropertiesExample_01.png)

## Vary Transparency Across Data Points 









> You can vary the transparency of scattered points by setting the `AlphaData` property to a vector of different opacity values. To ensure the scatter plot uses the `AlphaData` values, set the `MarkerFaceAlpha` property to `'flat'`. 

> Create a set of normally distributed random numbers. Then create a scatter plot of the data with filled markers. 

<pre class="mcode">x = randn(1000,1);
y = randn(1000,1);
s = scatter(x,y,'filled');</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/ScatterAlphaDataExample_01.png)

> Set the opacity of each point according to its distance from zero.

<pre class="mcode">distfromzero = sqrt(x.^2 + y.^2);
s.AlphaData = distfromzero;
s.MarkerFaceAlpha = 'flat';</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/ScatterAlphaDataExample_02.png)

## Specify Target Axes and Marker Type 









> Starting in R2019b, you can display a tiling of plots using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Plot scattered data into each axes. In the bottom scatter plot, specify diamond filled diamond markers.

<pre class="mcode">x = linspace(0,3*pi,200);
y = cos(x) + rand(1,200);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
scatter(ax1,x,y)

% Bottom plot
ax2 = nexttile;
scatter(ax2,x,y,'filled','d')</pre>

![Figure contains 2 axes. Axes 1 contains an object of type scatter. Axes 2 contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/ScatterSpecifyAxes19bExample_01.png)

## Modify Scatter Series After Creation 









> Create a scatter plot and return the scatter series object, `s`.

<pre class="mcode">theta = linspace(0,1,500);
x = exp(theta).*sin(100*theta);
y = exp(theta).*cos(100*theta);
s = scatter(x,y);</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics2/win64/SetScatterObjectPropertiesExample_01.png)

> Use `s` to query and set properties of the scatter series after it has been created. Set the line width to `0.6` point. Set the marker edge color to blue. Set the marker face color using an RGB triplet color.

<pre class="mcode">s.LineWidth = 0.6;
s.MarkerEdgeColor = 'b';
s.MarkerFaceColor = [0 0.5 0.5];</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics2/win64/SetScatterObjectPropertiesExample_02.png)

