---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/contour_plots/contourf/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/contourf.html
                    github: contour_plots/contourf.md
                    ---

                    ## Contours of Peaks Function 









> Define `Z` as a function of two variables. In this case, call the `peaks` function to create `Z`. Then display a filled contour plot of `Z`, letting MATLAB® choose the contour levels.

<pre class="mcode">Z = peaks;
contourf(Z)</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/ContourfPeaksExample_01.png)

## Contours at Ten Levels 









> Define `Z` as a function of two variables, `X` and `Y`. Then display contours at 10 levels of `Z`.

<pre class="mcode">x = linspace(-2*pi,2*pi);
y = linspace(0,4*pi);
[X,Y] = meshgrid(x,y);
Z = sin(X) + cos(Y);
contourf(X,Y,Z,10)</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/ContourfTenLevelsExample_01.png)

## Contours at Specific Levels with Labels 









> Define `Z` as a function of `X` and `Y`. In this case, call the `peaks` function to create `X`, `Y`, and `Z`. Then display contours at levels `2` and `3`. 

> The white region corresponds to the heights less than `2`. The purple region corresponds to heights between `2` and `3`. And the yellow region corresponds to heights that are greater than `3`.

<pre class="mcode">[X,Y,Z] = peaks(50);
contourf(X,Y,Z,[2 3],'ShowText','on')</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/Contourf2SpecificLevelsWithLabelsExample_01.png)

## Contours at One Level 









> Define `Z` as a function of `X` and `Y`. In this case, call the `peaks` function to create `X`, `Y`, and `Z`. Then display contours at `Z = 2`.

<pre class="mcode">[X,Y,Z] = peaks;
contourf(X,Y,Z,[2 2])</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/ContourfOneLevelExample_01.png)

## Dashed Contour Lines 









> Create a contour plot, and specify the dashed line style.

<pre class="mcode">[X,Y,Z] = peaks;
contourf(X,Y,Z,'--')</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/ContourfDashedLinesExample_01.png)

## Custom Line Width 









> Create a filled contour plot. Make the contour lines thicker by setting the `LineWidth` property to `3`.

<pre class="mcode">Z = peaks;
[M,c] = contourf(Z);
c.LineWidth = 3;</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/ContourfCustomLineWidthExample_01.png)

## Contours Over Discontinuous Surface 









> Insert `NaN` values wherever there are discontinuities on a surface. The `contourf` function does not draw contour lines in those regions.

> Define matrix `Z` as a sampling of the `peaks` function. Replace all values in column `26` with `NaN` values. Then plot the contours of the modified `Z` matrix.

<pre class="mcode">Z = peaks;
Z(:,26) = NaN;
contourf(Z)</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/ContourfDiscontinuousSurfaceExample_01.png)

