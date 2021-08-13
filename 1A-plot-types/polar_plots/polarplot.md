---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/polar_plots/polarplot/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/polarplot.html
                    github: polar_plots/polarplot.md
                    ---

                    ## Create Polar Plot 









> Plot a line in polar coordinates.

<pre class="mcode">theta = 0:0.01:2*pi;
rho = sin(2*theta).*cos(2*theta);
polarplot(theta,rho)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/CreatePolarPlotExample_01.png)

## Convert from Degrees to Radians Before Plotting 









> Create the data to plot.

<pre class="mcode">theta = linspace(0,360,50);
rho = 0.005*theta/10;</pre>

> Convert the values in `theta` from degrees to radians. Then, plot the data in polar coordinates.

<pre class="mcode">theta_radians = deg2rad(theta);
polarplot(theta_radians,rho)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/CreatePolarPlotWithDegreeValuesExample_01.png)

## Plot Multiple Lines in Polar Coordinates 









> Plot two lines in polar coordinates. Use a dashed line for the second line.

<pre class="mcode">theta = linspace(0,6*pi);
rho1 = theta/10;
polarplot(theta,rho1)

rho2 = theta/12;
hold on
polarplot(theta,rho2,'--')
hold off</pre>

![Figure contains an axes. The axes contains 2 objects of type line.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleLinesInPolarCoordinatesExample_01.png)

## Plot Radius Values at Equally Spaced Angles 









> Specify only the radius values, without specifying the angle values. `polarplot` plots the radius values at equally spaced angles that span from 0 to 2π. Display a circle marker at each data point.

<pre class="mcode">rho = 10:5:70;
polarplot(rho,'-o')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/PlotRadiusValuesAtEquallySpacedAnglesExample_01.png)

## Plot Negative Radius Values 









> Create a polar plot using negative radius values. By default, `polarplot` reflects negative values through the origin.

<pre class="mcode">theta = linspace(0,2*pi);
rho = sin(theta);
polarplot(theta,rho)</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/PlotNegativeRadiusValuesExample_01.png)

> Change the limits of the *r*-axis so it ranges from -1 to 1.

<pre class="mcode">rlim([-1 1])</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/PlotNegativeRadiusValuesExample_02.png)

## Specify Line Color for Polar Plot 









> Create a polar plot using a red line with circle markers.

<pre class="mcode">theta = linspace(0,2*pi,25);
rho = 2*theta;
polarplot(theta,rho,'r-o')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SpecifyLineColorForPolarPlotExample_01.png)

## Specify Line Color After Creation 









> Create a polar plot and return the chart line object. 

<pre class="mcode">theta = linspace(0,2*pi,25);
rho = 2*theta;
p = polarplot(theta,rho);</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SpecifyLineColorAfterCreationExample_01.png)

> Change the line color and width and add markers.

<pre class="mcode">p.Color = 'magenta';
p.Marker = 'square';
p.MarkerSize = 8;</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/SpecifyLineColorAfterCreationExample_02.png)

## Create Polar Plot with Complex Values 









> Plot complex values in polar coordinates. Display markers at each point without a line connecting them.

<pre class="mcode">Z = [2+3i 2 -1+4i 3-4i 5+2i -4-2i -2+3i -2 -3i 3i-2i];
polarplot(Z,'*')</pre>

![Figure contains an axes. The axes contains an object of type line.](https://mathworks.com/help/examples/graphics/win64/PolarPlotWithComplexValuesExample_01.png)

