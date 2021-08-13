---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/discrete_data_plots/bar3h/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/bar3h.html
                    github: discrete_data_plots/bar3h.md
                    ---

                    ## Create 3-D Horizontal Bar Graph 









> Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Y` as the first ten rows of `count`.

<pre class="mcode">load count.dat
Y = count(1:10,:);</pre>

> Create a 3-D horizontal bar graph of `Y`. By default, the style is `detached`.

<pre class="mcode">figure
bar3h(Y)</pre>

![Figure contains an axes. The axes contains 3 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/CreateHorizontal3DBarGraphExample_01.png)

## Specify Bar Width for 3-D Horizontal Bar Graph 









> Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Y` as the first ten rows of `count`.

<pre class="mcode">load count.dat;
Y = count(1:10,:);</pre>

> Create a 3-D horizontal bar graph of `Y` and set the bar width to 0.5.

<pre class="mcode">width = 0.5;

figure
bar3h(Y,width)
title('Width of 0.5')</pre>

![Figure contains an axes. The axes with title Width of 0.5 contains 3 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/SpecifyBarWidthForHorizontal3DGraphExample_01.png)

## 3-D Horizontal Bar Graph with Grouped Style 









> Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Y` as the first ten rows of `count`.

<pre class="mcode">load count.dat
Y = count(1:10,:);</pre>

> Create a 3-D horizontal bar graph of Y and specify the style option as `grouped`.

<pre class="mcode">figure
bar3h(Y,'grouped')
title('Grouped Style Option')</pre>

![Figure contains an axes. The axes with title Grouped Style Option contains 3 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/DHorizontalBarGraphWithGroupedStyleExample_01.png)

## 3-D Horizontal Bar Graph with Stacked Option 









> Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Y` as the first ten rows of `count`.

<pre class="mcode">load count.dat
Y = count(1:10,:);</pre>

> Create a 3-D horizontal bar graph of Y and specify the style option as `stacked`.

<pre class="mcode">figure
bar3h(Y,'stacked')
title('Stacked Style Option')</pre>

![Figure contains an axes. The axes with title Stacked Style Option contains 3 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/DHoriztonalBarGraphWithStackedOptionExample_01.png)

