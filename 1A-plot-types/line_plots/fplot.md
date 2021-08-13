---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/fplot/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/fplot.html
                    github: line_plots/fplot.md
                    ---

                    ## Plot Expression 









> Plot `sin(x)` over the default `x` interval `[-5 5]`.

<pre class="mcode">fplot(@(x) sin(x))</pre>

![Figure contains an axes. The axes contains an object of type functionline.](https://mathworks.com/help/examples/graphics/win64/PlotExpressionExample_01.png)

## Plot Parametric Curve 









> Plot the parametric curve x=cos(3t) and y=sin(2t).

<pre class="mcode">xt = @(t) cos(3*t);
yt = @(t) sin(2*t);
fplot(xt,yt)</pre>

![Figure contains an axes. The axes contains an object of type parameterizedfunctionline.](https://mathworks.com/help/examples/graphics/win64/PlotParametricCurveExample_01.png)

## Specify Plotting Interval and Plot Piecewise Functions 









> Plot the piecewise function

> 

## Specify Line Properties and Display Markers 









> Plot three sine waves with different phases. For the first, use a line width of 2 points. For the second, specify a dashed red line style with circle markers. For the third, specify a cyan, dash-dotted line style with asterisk markers.

<pre class="mcode">fplot(@(x) sin(x+pi/5),'Linewidth',2);
hold on
fplot(@(x) sin(x-pi/5),'--or');
fplot(@(x) sin(x),'-.*c')
hold off</pre>

![Figure contains an axes. The axes contains 3 objects of type functionline.](https://mathworks.com/help/examples/graphics/win64/SpecifyLinePropertiesAndDisplayMarkersExample_01.png)

## Modify Line Properties After Creation 









> Plot `sin(x)` and assign the function line object to a variable.

<pre class="mcode">fp = fplot(@(x) sin(x))</pre>

![Figure contains an axes. The axes contains an object of type functionline.](https://mathworks.com/help/examples/graphics/win64/ModifyPlotAfterCreationExample_01.png)

<pre class="mcode"><div class="codeoutput"><pre>fp = 
  FunctionLine with properties:

     Function: @(x)sin(x)
        Color: [0 0.4470 0.7410]
    LineStyle: '-'
    LineWidth: 0.5000

  Show all properties

</pre></div></pre>

> Change the line to a dotted red line by using dot notation to set properties. Add cross markers and set the marker color to blue. 

<pre class="mcode">fp.LineStyle = ':';
fp.Color = 'r';
fp.Marker = 'x';
fp.MarkerEdgeColor = 'b';</pre>

![Figure contains an axes. The axes contains an object of type functionline.](https://mathworks.com/help/examples/graphics/win64/ModifyPlotAfterCreationExample_02.png)

## Plot Multiple Lines in Same Axes 









> Plot two lines using `hold on`.

<pre class="mcode">fplot(@(x) sin(x))
hold on 
fplot(@(x) cos(x))
hold off</pre>

![Figure contains an axes. The axes contains 2 objects of type functionline.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleLinesInSameAxesExample_01.png)

## Add Title and Axis Labels and Format Ticks 









> Plot sin(x) from -2π to 2π using a function handle. Display the grid lines. Then, add a title and label the *x*-axis and *y*-axis.

<pre class="mcode">fplot(@sin,[-2*pi 2*pi])
grid on
title('sin(x) from -2\pi to 2\pi')
xlabel('x');
ylabel('y');</pre>

![Figure contains an axes. The axes with title sin(x) from -2\pi to 2\pi contains an object of type functionline.](https://mathworks.com/help/examples/graphics/win64/AddTitleAndAxisLabelsAndFormatTicksExample_01.png)

> Use `gca` to access the current axes object. Display tick marks along the *x*-axis at intervals of π/2. Format the *x*-axis tick values by setting the `XTick` and `XTickLabel` properties of the axes object. Similar properties exist for the *y*-axis.

<pre class="mcode">ax = gca;
ax.XTick = -2*pi:pi/2:2*pi;
ax.XTickLabel = {'-2\pi','-3\pi/2','-\pi','-\pi/2','0','\pi/2','\pi','3\pi/2','2\pi'};</pre>

![Figure contains an axes. The axes with title sin(x) from -2\pi to 2\pi contains an object of type functionline.](https://mathworks.com/help/examples/graphics/win64/AddTitleAndAxisLabelsAndFormatTicksExample_02.png)

