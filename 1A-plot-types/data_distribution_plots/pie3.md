---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/data_distribution_plots/pie3/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/pie3.html
                    github: data_distribution_plots/pie3.md
                    ---

                    ## Create 3-D Pie Chart 









> Create a 3-D pie chart of vector `x`. 

<pre class="mcode">x = [1,3,0.5,2.5,2];
figure
pie3(x)</pre>

![](https://mathworks.com/help/examples/graphics/win64/Create3DPieChartExample_01.png)

> To offset the second pie slice, set the corresponding `explode` element to 1.

<pre class="mcode">explode = [0,1,0,0,0];
figure
pie3(x,explode)</pre>

![](https://mathworks.com/help/examples/graphics/win64/Create3DPieChartExample_02.png)

## Specify Text Labels for 3-D Pie Chart 









> Create a 3-D pie chart and specify the text labels.

<pre class="mcode">x = 1:3;
labels = {'Taxes','Expenses','Profit'};
    
figure
pie3(x,labels)</pre>

![](https://mathworks.com/help/examples/graphics/win64/SpecifyTextLabelsFor3DPieChartExample_01.png)

## Compare Two Pie Charts 









> Create vectors `y2010` and `y2011`, that contain financial data for two years. Then create a cell array containing the labels for the values.

<pre class="mcode">y2010 = [50 0 100 95];
y2011 = [65 22 97 120];
labels = {'Investments','Cash','Operations','Sales'};</pre>

> Create a `2`-by-`1` tiled chart layout, and display a pie chart and legend for `y2010` data in the first tile. Then display a pie chart and legend for the `y2011` data in the second tile.

<pre class="mcode">t = tiledlayout (2,1);
ax1 = nexttile;
pie3(ax1,y2010)
title('2010')
legend(labels)

ax2 = nexttile;
pie3(ax2,y2011)
title('2011')
legend(labels)</pre>

![](https://mathworks.com/help/examples/graphics/win64/Pie3WithZeroExample_01.png)

