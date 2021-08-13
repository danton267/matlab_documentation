---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/polar_plots/polarscatter/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/polarscatter.html
                    github: polar_plots/polarscatter.md
                    ---

                    ## Create Scatter Chart 









> Create a scatter chart in polar coordinates.

<pre class="mcode">th = pi/4:pi/4:2*pi;
r = [19 6 12 18 16 11 15 15];
polarscatter(th,r)</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/CreateScatterChartinPolarCoordinatesExample_01.png)

## Use Filled Markers and Set Marker Size 









> Create a scatter chart that uses filled markers by specifying the optional input argument, `'filled'`. Set the marker size to 75 points squared.

<pre class="mcode">th = linspace(0,2*pi,20);
r = rand(1,20);
sz = 75;
polarscatter(th,r,sz,'filled')</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/UseFilledMarkersAndSetMarkerSizeExample_01.png)

## Use Markers with Varying Sizes and Colors 









> Create a scatter chart with markers of varying sizes and colors. Specify the optional size and color input arguments as vectors. Use unique values in the color vector to specify the different colors you want. The values map to colors in the colormap.

<pre class="mcode">th = pi/4:pi/4:2*pi;
r = [19 6 12 18 16 11 15 15];
sz = 100*[6 15 20 3 15 3 6 40];
c = [1 2 2 2 1 1 2 1];
polarscatter(th,r,sz,c,'filled','MarkerFaceAlpha',.5)</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/UseMarkerWithVaryingSizesAndColorsExample_01.png)

## Convert from Degrees to Radians Before Plotting 









> Create data where the angle values are in degrees. Since `polarscatter` requires angle values in radians, convert the values to radians before plotting using `deg2rad`.

<pre class="mcode">th = linspace(0,360,50);
r = 0.005*th/10;
th_radians = deg2rad(th);
polarscatter(th_radians,r)</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/ConvertFromDegreesToRadiansBeforePlottingExample_01.png)

## Combine Two Scatter Charts 









> Combine two scatter charts in the same polar axes using the `hold` command. Add a legend with a description of each chart.

<pre class="mcode">th = pi/6:pi/6:2*pi;
r1 = rand(12,1);
polarscatter(th,r1,'filled')

hold on 
r2 = rand(12,1);
polarscatter(th,r2,'filled')
hold off

legend('Series A','Series B')</pre>

![Figure contains an axes. The axes contains 2 objects of type scatter. These objects represent Series A, Series B.](https://mathworks.com/help/examples/graphics/win64/CombineTwoScatterChartsExample_01.png)

## Modify Scatter Chart After Creation 









> Create a scatter chart and assign the scatter object to the variable `ps`. 

<pre class="mcode">th = pi/6:pi/6:2*pi;
r = rand(12,1);
ps = polarscatter(th,r,'filled')</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/ModifyScatterChartAfterCreationExample_01.png)

<pre class="mcode"><div class="codeoutput"><pre>ps = 
  Scatter with properties:

             Marker: 'o'
    MarkerEdgeColor: 'none'
    MarkerFaceColor: 'flat'
           SizeData: 36
          LineWidth: 0.5000
          ThetaData: [1x12 double]
              RData: [1x12 double]
              ZData: [1x0 double]
              CData: [0 0.4470 0.7410]

  Show all properties

</pre></div></pre>

> Use `ps` to modify properties of the scatter object after it is created.

<pre class="mcode">ps.Marker = 'square';
ps.SizeData = 200;
ps.MarkerFaceColor = 'red';
ps.MarkerFaceAlpha = .5;</pre>

![Figure contains an axes. The axes contains an object of type scatter.](https://mathworks.com/help/examples/graphics/win64/ModifyScatterChartAfterCreationExample_02.png)

