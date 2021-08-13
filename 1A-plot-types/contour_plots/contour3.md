---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/contour_plots/contour3/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/contour3.html
                    github: contour_plots/contour3.md
                    ---

                    ## Contours of Sphere 









> Define `Z` as a function of `X` and `Y`. In this case, call the `sphere` function to create `X`, `Y`, and `Z`. Then plot the contours of `Z`.

<pre class="mcode">[X,Y,Z] = sphere(50);
contour3(X,Y,Z);</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/Contour3SphereExample_01.png)

## Contours at Fifty Levels 









> Define `Z` as a function of two variables, `X` and `Y`. Then plot the contours of `Z`. In this case, let MATLAB® choose the contours and the limits for the *x*- and *y*-axes.

<pre class="mcode">[X,Y] = meshgrid(-5:0.25:5);
Z = X.^2 + Y.^2;
contour3(Z)</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/Contour3FiftyLevelsExample_01.png)

> Now specify `50` contour levels, and display the results within the *x* and *y* limits used to calculate `Z`.

<pre class="mcode">contour3(X,Y,Z,50)</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/Contour3FiftyLevelsExample_02.png)

## Contours at Specific Levels with Labels 









> Define `Z` as a function of two variables, `X` and `Y`. Then plot the contours at `Z = [-.2 -.1 .1 .2]`. Show the contour labels by setting the `ShowText` property to `'on'`.

<pre class="mcode">[X,Y] = meshgrid(-2:0.25:2);
Z = X.*exp(-X.^2-Y.^2);
contour3(X,Y,Z,[-.2 -.1 .1 .2],'ShowText','on')</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/Contour3SpecificLevelsWithLabelsExample_01.png)

## Contours at One Level 









> Define `Z` as a function of `X` and `Y`. In this case, call the `peaks` function to create `X`, `Y`, and `Z`. Then display the contours at `Z = 2`.

<pre class="mcode">[X,Y,Z] = peaks;
contour3(X,Y,Z,[2 2]);</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/Contour3AtOneLevelExample_01.png)

## Custom Line Width 









> Define `Z` as a function of two variables, `X` and `Y`. Plot 30 contours of `Z`, and then set the line width to `3`.

<pre class="mcode">[X,Y] = meshgrid(-2:0.0125:2);
Z = X.*exp(-X.^2-Y.^2);
[M,c] = contour3(X,Y,Z,30);
c.LineWidth = 3;</pre>

![Figure contains an axes. The axes contains an object of type contour.](https://mathworks.com/help/examples/graphics/win64/Contour3CustomLineWidthExample_01.png)

