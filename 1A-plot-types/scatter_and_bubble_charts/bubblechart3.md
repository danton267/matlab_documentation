---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/scatter_and_bubble_charts/bubblechart3/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/bubblechart3.html
                    github: scatter_and_bubble_charts/bubblechart3.md
                    ---

                    ## Plot Random Bubbles 









> Define a set of bubble coordinates as the vectors `x`, `y`, and `z`. Define `sz` as a vector that specifies the bubble sizes. Then create a bubble chart of `x`, `y`, and `z`. 

<pre class="mcode">x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);
bubblechart3(x,y,z,sz);</pre>

![Figure contains an axes. The axes contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3SimpleExample_01.png)

## Specify Bubble Colors 









> Define a set of bubble coordinates as the vectors `x`, `y`, and `z`. Define `sz` as a vector that specifies the bubble sizes. Then create a bubble chart of `x`, `y`, and `z`, and specify the color as red. By default, the bubbles are partially transparent.

<pre class="mcode">x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);
bubblechart3(x,y,z,sz,'red');</pre>

![Figure contains an axes. The axes contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3ColorExample_01.png)

> For a custom color, you can specify an RGB triplet or a hexadecimal color code. For example, the hexadecimal color code `'#7031BB'`, specifies a shade of purple.

<pre class="mcode">bubblechart3(x,y,z,sz,'#7031BB');</pre>

![Figure contains an axes. The axes contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3ColorExample_02.png)

> You can also specify a different color for each bubble. For example, specify a vector to select colors from the figure's colormap.

<pre class="mcode">c = 1:20;
bubblechart3(x,y,z,sz,c)</pre>

![Figure contains an axes. The axes contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3ColorExample_03.png)

## Specify Bubble Transparency and Outline Color 









> Define a set of bubble coordinates as the vectors `x`, `y`, and `z`. Define `sz` as a vector that specifies the bubble sizes. Then create a bubble chart of `x`, `y`, and `z`. By default, the bubbles are 60% opaque, and the edges are completely opaque with the same color.

<pre class="mcode">x = rand(1,20);
y = rand(1,20);
z = rand(1,20);
sz = rand(1,20);
bubblechart3(x,y,z,sz);</pre>

![Figure contains an axes. The axes contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3TransparencyExample_01.png)

> You can customize the opacity and the outline color by setting the `MarkerFaceAlpha` and `MarkerEdgeColor` properties, respectively. One way to set a property is by specifying a name-value pair argument when you create the chart. For example, you can specify 20% opacity by setting the `MarkerFaceAlpha` value to `0.20`.

<pre class="mcode">bc = bubblechart3(x,y,z,sz,'MarkerFaceAlpha',0.20);</pre>

![Figure contains an axes. The axes contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3TransparencyExample_02.png)

> If you create the chart by calling the `bubblechart3` function with a return argument, you can use the return argument to set properties on the chart after creating it. For example, you can change the outline color to purple.

<pre class="mcode">bc.MarkerEdgeColor = [0.5 0 0.5];</pre>

![Figure contains an axes. The axes contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3TransparencyExample_03.png)

## Add a Bubble Legend 









> Define a data set that shows the contamination levels of a certain toxin across different towns in a metropolitan area. 



<pre class="mcode">towns = randi([25000 500000],[1 30]);
nsites = randi(10,1,30);
nregulated = (-3 * nsites) + (5 * randn(1,30) + 20);
levels = (3 * nsites) + (7 * randn(1,30) + 20);</pre>

> Display the data in a bubble chart. Create axis labels using the `xlabel`, `ylabel`, and `zlabel` functions. Use the `bubblesize` function to make all the bubbles between 5 and 30 points in diameter. Then add a bubble legend that shows the relationship between bubble size and population.

<pre class="mcode">bubblechart3(nsites,nregulated,levels,towns)
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')

bubblesize([5 30])
bubblelegend('Town Population','Location','eastoutside')</pre>

![Figure contains an axes and an object of type bubblelegend. The axes contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3LegendExample_01.png)

## Display Bubbles in Different Axes on the Same Scale 









> Define two sets of data that show the contamination levels of a certain toxin across different towns on the east and west sides of a certain metropolitan area.



<pre class="mcode">towns1 = randi([25000 500000],[1 30]);
towns2 = towns1/3;
nsites1 = randi(10,1,30);
nsites2 = randi(10,1,30);
nregulated1 = (-3 * nsites1) + (5 * randn(1,30) + 20);
nregulated2 = (-2 * nsites2) + (5 * randn(1,30) + 20);
levels1 = (3 * nsites1) + (7 * randn(1,30) + 20);
levels2 = (5 * nsites2) + (7 * randn(1,30) + 20);</pre>

> Create a tiled chart layout so you can visualize the data side-by-side. Then create an axes object in the first tile and plot the data for the east side of the city. Add a title and axis labels. Then repeat the process in the second tile to plot the west side data.

<pre class="mcode">tiledlayout(2,1,'TileSpacing','compact')
ax1 = nexttile;

% East side
bubblechart3(ax1,nsites1,nregulated1,levels1,towns1);
title('East Side')
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')

% West side
ax2 = nexttile;
bubblechart3(ax2,nsites2,nregulated2,levels2,towns2);
title('West Side')
xlabel('Industrial Sites')
ylabel('Regulated Sites')
zlabel('Contamination Level')</pre>

![Figure contains 2 axes. Axes 1 with title East Side contains an object of type bubblechart. Axes 2 with title West Side contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3CompareExample_01.png)

> Reduce all the bubble sizes to make it easier to see all the bubbles. In this case, change the range of diameters to be between `5` and `20` points.

<pre class="mcode">bubblesize(ax1,[5 20])
bubblesize(ax2,[5 20])</pre>

![Figure contains 2 axes. Axes 1 with title East Side contains an object of type bubblechart. Axes 2 with title West Side contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3CompareExample_02.png)

> The east side towns are three times the size of the west side towns, but the bubble sizes do not reflect this information in the preceding charts. This is because the smallest and largest bubbles map to the smallest and largest data points in each of the axes. To display the bubbles on the same scale, define a vector called `alltowns` that includes the populations from both sides of the city. The use the `bubblelim` function to reset the scaling for both charts. 

<pre class="mcode">alltowns = [towns1 towns2];
newlims = [min(alltowns) max(alltowns)];
bubblelim(ax1,newlims)
bubblelim(ax2,newlims)</pre>

![Figure contains 2 axes. Axes 1 with title East Side contains an object of type bubblechart. Axes 2 with title West Side contains an object of type bubblechart.](https://mathworks.com/help/examples/graphics/win64/Bubblechart3CompareExample_03.png)

