---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/fplot3/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/fplot3.html
                    github: line_plots/fplot3.md
                    ---

                    ## Plot 3-D Parametric Line 









> Plot the 3-D parametric line

> 

## Specify Parameter Range 









> Plot the parametric line

> 

## Specify Line Properties and Display Markers 









> Plot the same 3-D parametric curve three times over different intervals of the parameter. For the first interval, use a line width of 2 points. For the second, specify a dashed red line style with circle markers. For the third, specify a cyan, dash-dotted line style with asterisk markers.

<pre class="mcode">fplot3(@(t)sin(t), @(t)cos(t), @(t)t, [0 2*pi], 'LineWidth', 2)
hold on
fplot3(@(t)sin(t), @(t)cos(t), @(t)t, [2*pi 4*pi], '--or')
fplot3(@(t)sin(t), @(t)cos(t), @(t)t, [4*pi 6*pi], '-.*c')
hold off</pre>

![Figure contains an axes. The axes contains 3 objects of type parameterizedfunctionline.](https://mathworks.com/help/examples/graphics/win64/SpecifyLinePropertiesAndDisplayMarkers2Example_01.png)

## Plot Multiple Lines in Same Axes 









> Plot multiple lines in the same axes using `hold on`.

<pre class="mcode">fplot3(@(t)t, @(t)t, @(t)t)
hold on
fplot3(@(t)-t, @(t)t, @(t)-t)
hold off</pre>

![Figure contains an axes. The axes contains 2 objects of type parameterizedfunctionline.](https://mathworks.com/help/examples/graphics/win64/PlotMultipleLinesInSameAxes2Example_01.png)

## Modify 3-D Parametric Line After Creation 









> Plot the parametric line

> 

## Add Title and Axis Labels and Format Ticks 









> For t values in the range -2π to 2π, plot the parametric line

> 

