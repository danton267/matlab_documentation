---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/discrete_data_plots/bar3/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/bar3.html
                    github: discrete_data_plots/bar3.md
                    ---

                    ## Create 3-D Bar Graph 









> Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Z` as the first 10 rows of `count`.

<pre class="mcode">load count.dat
Z = count(1:10,:);</pre>

> Create a 3-D bar graph of `Z`. By default, the style is `detached`.

<pre class="mcode">figure
bar3(Z)
title('Detached Style')</pre>

![Figure contains an axes. The axes with title Detached Style contains 3 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/Create3DBarGraphWithDetachedStyleExample_01.png)

## Specify Bar Width for 3-D Bar Graph 









> Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Z` as the first 10 rows of `count`.

<pre class="mcode">load count.dat
Z = count(1:10,:);</pre>

> Create a 3-D bar graph of `Z` and set the bar width to 0.5.

<pre class="mcode">width = 0.5;

figure
bar3(Z,width)
title('Bar Width of 0.5')</pre>

![Figure contains an axes. The axes with title Bar Width of 0.5 contains 3 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/SpecifyBarWidthFor3DBarGraphExample_01.png)

## 3-D Bar Graph with Grouped Style 









> Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Z` as the first 10 rows of `count`.

<pre class="mcode">load count.dat
Z = count(1:10,:);</pre>

> Create a 3-D bar graph of `Z`. Group the elements in each row of `Z` by specifying the style option as `grouped`.

<pre class="mcode">figure
bar3(Z,'grouped')
title('Grouped Style')</pre>

![Figure contains an axes. The axes with title Grouped Style contains 3 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/Create3DBarGraphWithGroupedStyleExample_01.png)

## 3-D Bar Graph with Stacked Style 









> Load the data set `count.dat`, which returns a three-column matrix, `count`. Store `Z` as the first 10 rows of `count`.

<pre class="mcode">load count.dat
Z = count(1:10,:);</pre>

> Create a 3-D bar graph of `Z`. Stack the elements in each row of `Z` by specifying the style option as `stacked`.

<pre class="mcode">figure
bar3(Z,'stacked')
title('Stacked Style')</pre>

![Figure contains an axes. The axes with title Stacked Style contains 3 objects of type surface.](https://mathworks.com/help/examples/graphics/win64/Create3DBarGraphWithStackedStyleExample_01.png)

