---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/contour_plots/fcontour/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/fcontour.html
                    github: contour_plots/fcontour.md
                    ---

                    ## Plot Contours of Function 









> Plot the contours of f(x,y)=sin(x)+cos(y) over the default interval of -5<x<5 and -5<y<5.

<pre class="mcode">f = @(x,y) sin(x) + cos(y);
fcontour(f)</pre>

![Figure contains an axes. The axes contains an object of type functioncontour.](https://mathworks.com/help/examples/graphics/win64/PlotContoursOfExpressionExample_01.png)

## Specify Plotting Interval and Plot Piecewise Contour Plot 









> Specify the plotting interval as the second argument of `fcontour`. When you plot multiple inputs over different intervals in the same axes, the axis limits adjust to display all the data. This behavior lets you plot piecewise inputs.

> Plot the piecewise input

> 

## Change Line Style and Width 









> Plot the contours of x2-y2 as dashed lines with a line width of `2`. 

<pre class="mcode">f = @(x,y) x.^2 - y.^2;
fcontour(f,'--','LineWidth',2)</pre>

![Figure contains an axes. The axes contains an object of type functioncontour.](https://mathworks.com/help/examples/graphics/win64/ChangeLineStyleAndWidthExample_01.png)

## Plot Multiple Contour Plots 









> Plot sin(x)+cos(y) and x-y on the same axes by using `hold on`.

<pre class="mcode">fcontour(@(x,y) sin(x)+cos(y))
hold on
fcontour(@(x,y) x-y)
hold off</pre>

![Figure contains an axes. The axes contains 2 objects of type functioncontour.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleContourPlotsExample_01.png)

## Modify Contour Plot After Creation 









> Plot the contours of e-(x/3)2-(y/3)2+e-(x+2)2-(y+2)2. Assign the function contour object to a variable.

<pre class="mcode">f = @(x,y) exp(-(x/3).^2-(y/3).^2) + exp(-(x+2).^2-(y+2).^2);
fc = fcontour(f)</pre>

![Figure contains an axes. The axes contains an object of type functioncontour.](https://mathworks.com/help/examples/graphics/win64/ModifyContourPlotAfterCreationExample_01.png)

<pre class="mcode"><div class="codeoutput"><pre>fc = 
  FunctionContour with properties:

     Function: @(x,y)exp(-(x/3).^2-(y/3).^2)+exp(-(x+2).^2-(y+2).^2)
    LineColor: 'flat'
    LineStyle: '-'
    LineWidth: 0.5000
         Fill: off
    LevelList: [0.2000 0.4000 0.6000 0.8000 1 1.2000 1.4000]

  Show all properties

</pre></div></pre>

> Change the line width to `1` and the line style to a dashed line by using dot notation to set properties of the function contour object. Show contours close to `0` and `1` by setting the `LevelList` property. Add a colorbar.

<pre class="mcode">fc.LineWidth = 1;
fc.LineStyle = '--';
fc.LevelList = [1 0.9 0.8 0.2 0.1];
colorbar</pre>

![Figure contains an axes. The axes contains an object of type functioncontour.](https://mathworks.com/help/examples/graphics/win64/ModifyContourPlotAfterCreationExample_02.png)

## Fill Area Between Contours 









> Create a plot that looks like a sunset by filling the area between the contours of

> 

## Specify Levels for Contour Lines 









> Set the values at which `fcontour` draws contours by using the `'LevelList'` option. 

<pre class="mcode">f = @(x,y) sin(x) + cos(y);
fcontour(f,'LevelList',[-1 0 1])</pre>

![Figure contains an axes. The axes contains an object of type functioncontour.](https://mathworks.com/help/examples/graphics/win64/SetValuesToDrawContoursAtExample_01.png)

## Control Resolution of Contour Lines 









> Control the resolution of contour lines by using the `'MeshDensity'` option. Increasing `'MeshDensity'` can make smoother, more accurate plots, while decreasing it can increase plotting speed. 

> Create two plots in a 2-by-1 tiled chart layout. In the first plot, display the contours of sin(x)sin(y). The corners of the squares do not meet. To fix this issue, increase `'MeshDensity'` to `200` in the second plot. The corners now meet, showing that by increasing `'MeshDensity'` you increase the resolution.

<pre class="mcode">f = @(x,y) sin(x).*sin(y);
tiledlayout(2,1)
nexttile
fcontour(f)
title('Default Mesh Density (71)')

nexttile
fcontour(f,'MeshDensity',200)
title('Custom Mesh Density (200)')</pre>

![Figure contains 2 axes. Axes 1 with title Default Mesh Density (71) contains an object of type functioncontour. Axes 2 with title Custom Mesh Density (200) contains an object of type functioncontour.](https://mathworks.com/help/examples/graphics/win64/ControlResolutionOfContourLinesLayoutExample_01.png)

## Add Title and Axis Labels and Format Ticks 









> Plot xsin(y)-ycos(x). Display the grid lines, add a title, and add axis labels. 

<pre class="mcode">fcontour(@(x,y) x.*sin(y) - y.*cos(x), [-2*pi 2*pi], 'LineWidth', 2);
grid on
title({'xsin(y) - ycos(x)','-2\pi < x < 2\pi and -2\pi < y < 2\pi'})
xlabel('x')
ylabel('y')</pre>

![Figure contains an axes. The axes with title xsin(y) - ycos(x) -2\pi < x < 2\pi and -2\pi < y < 2\pi contains an object of type functioncontour.](https://mathworks.com/help/examples/graphics/win64/AddTitleAndAxisLabelsAndFormatTicksContourExample_01.png)

> Set the *x*-axis tick values and associated labels by setting the `XTickLabel` and `XTick` properties of the axes object. Access the axes object using `gca`. Similarly, set the *y*-axis tick values and associated labels.

<pre class="mcode">ax = gca;
ax.XTick = ax.XLim(1):pi/2:ax.XLim(2);
ax.XTickLabel = {'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'};
ax.YTick = ax.YLim(1):pi/2:ax.YLim(2);
ax.YTickLabel = {'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'};</pre>

![Figure contains an axes. The axes with title xsin(y) - ycos(x) -2\pi < x < 2\pi and -2\pi < y < 2\pi contains an object of type functioncontour.](https://mathworks.com/help/examples/graphics/win64/AddTitleAndAxisLabelsAndFormatTicksContourExample_02.png)

