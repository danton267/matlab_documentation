---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/contour_plots/contour/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/contour.html
                    github: contour_plots/contour.md
                    ---

                    ## Contours of a Function 









> Create matrices `X` and `Y`, that define a grid in the *x*-*y* plane. Define matrix `Z` as the heights above that grid. Then plot the contours of `Z`.

<pre class="mcode">x = linspace(-2*pi,2*pi);
y = linspace(0,4*pi);
[X,Y] = meshgrid(x,y);
Z = sin(X)+cos(Y);
contour(X,Y,Z)</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/CreateContourPlotExample_01.png)

## Contours at Twenty Levels 









> Define `Z` as a function of `X` and `Y`. In this case, call the `peaks` function to create `X`, `Y`, and `Z`. Then plot 20 contours of `Z`.

<pre class="mcode">[X,Y,Z] = peaks;
contour(X,Y,Z,20)</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/SpecifyNumberOfContourLinesExample_01.png)

## Contours at One Level 









> Display the contours of the `peaks` function at `Z = 1`.

<pre class="mcode">[X,Y,Z] = peaks;
v = [1,1];
contour(X,Y,Z,v)</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/DisplaySingleContourLineExample_01.png)

## Dashed Contour Lines 









> Create a contour plot of the `peaks` function, and specify the dashed line style.

<pre class="mcode">[X,Y,Z] = peaks;
contour(X,Y,Z,'--')</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/DashedContourLinesExample_01.png)

## Contours with Labels 









> Define `Z` as a function of two variables, `X` and `Y`. Then create a contour plot of that function, and display the labels by setting the `ShowText` property to `'on'`.

<pre class="mcode">x = -2:0.2:2;
y = -2:0.2:3;
[X,Y] = meshgrid(x,y);
Z = X.*exp(-X.^2-Y.^2);
contour(X,Y,Z,'ShowText','on')</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/DisplayContourLabelsExample_01.png)

## Custom Line Width 









> Create a contour plot of the `peaks` function. Make the contour lines thicker by setting the `LineWidth` property to `3`. 

<pre class="mcode">Z = peaks;
[M,c] = contour(Z);
c.LineWidth = 3;</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/SetPropertiesAfterPlottingContourExample_01.png)

## Contours Over Discontinuous Surface 









> Insert `NaN` values wherever there are discontinuities on a surface. The `contour` function does not draw contour lines in those regions.

> Define matrix `Z` as a sampling of the `peaks` function. Replace all values in column `26` with `NaN` values. Then plot the contours of the modified `Z` matrix.

<pre class="mcode">Z = peaks;
Z(:,26) = NaN;
contour(Z)</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/ContoursDiscontinuousSurfaceExample_01.png)

