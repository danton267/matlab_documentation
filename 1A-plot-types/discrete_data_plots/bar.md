---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/discrete_data_plots/bar/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/bar.html
                    github: discrete_data_plots/bar.md
                    ---

                    ## Create Bar Graph 









<pre class="mcode">y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y)</pre>

![Figure contains an axes. The axes contains an object of type bar.](https://mathworks.com/help/examples/graphics/win64/SingleDataSeriesExample_01.png)

## Specify Bar Locations 









> Specify the bar locations along the *x*-axis. 

<pre class="mcode">x = 1900:10:2000;
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(x,y)</pre>

![Figure contains an axes. The axes contains an object of type bar.](https://mathworks.com/help/examples/graphics/win64/XAxisTickLabelsExample_01.png)

## Specify Bar Width 









> Set the width of each bar to 40 percent of the total space available for each bar. 

<pre class="mcode">y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,0.4)</pre>

![Figure contains an axes. The axes contains an object of type bar.](https://mathworks.com/help/examples/graphics/win64/BarWidthExample_01.png)

## Display Groups of Bars 









> Display four groups of three bars.

<pre class="mcode">y = [2 2 3; 2 5 6; 2 8 9; 2 11 12];
bar(y)</pre>

![Figure contains an axes. The axes contains 3 objects of type bar.](https://mathworks.com/help/examples/graphics/win64/BarGraphof2DArrayExample_01.png)

## Display Stacked Bars 









> Display one bar for each row of the matrix. The height of each bar is the sum of the elements in the row.

<pre class="mcode">y = [2 2 3; 2 5 6; 2 8 9; 2 11 12];
bar(y,'stacked')</pre>

![Figure contains an axes. The axes contains 3 objects of type bar.](https://mathworks.com/help/examples/graphics/win64/BarGraphStylesExample_01.png)

## Display Stacked Bars with Negative Data 









> Define `x` as a vector of three year values. Define `y` as a matrix that contains a combination of negative and positive values. Display the values in a bar graph.

<pre class="mcode">x = [1980 1990 2000];
y = [15 20 -5; 10 -17 21; -10 5 15];
bar(x,y,'stacked')</pre>

![Figure contains an axes. The axes contains 3 objects of type bar.](https://mathworks.com/help/examples/graphics/win64/BarStackWithNegativeValuesExample_01.png)

## Specify Categorical Data 









> One way to indicate categories for your bars is to specify `X` as a categorical array. The `bar` function uses a sorted list of the categories, so the bars might display in a different order than you expect. To preserve the order, call the `reordercats` function.

> Define `X` as categorical array, and call the `reordercats` function to specify the order for the bars. Then define `Y` as a vector of bar heights and display the bar graph.

<pre class="mcode">X = categorical({'Small','Medium','Large','Extra Large'});
X = reordercats(X,{'Small','Medium','Large','Extra Large'});
Y = [10 21 33 52];
bar(X,Y)</pre>

![Figure contains an axes. The axes contains an object of type bar.](https://mathworks.com/help/examples/graphics/win64/BarCategoricalXDataExample_01.png)

## Specify Labels at the Ends of Bars 









> Define `vals` as a matrix containing the values of two data sets. Display the values in a bar graph and specify an output argument. Since there are two data sets, `bar` returns a vector containing two `Bar` objects.

<pre class="mcode">x = [1 2 3];
vals = [2 3 6; 11 23 26];
b = bar(x,vals);</pre>

![Figure contains an axes. The axes contains 2 objects of type bar.](https://mathworks.com/help/examples/graphics/win64/BarLabelsOnBarsExample_01.png)

> Display the values at the tips of the first series of bars. Get the coordinates of the tips of the bars by getting the `XEndPoints` and `YEndPoints` properties of the first `Bar` object. Pass those coordinates to the `text` function, and specify the vertical and horizontal alignment so that the values are centered above the tips of the bars.

<pre class="mcode">xtips1 = b(1).XEndPoints;
ytips1 = b(1).YEndPoints;
labels1 = string(b(1).YData);
text(xtips1,ytips1,labels1,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')</pre>

![Figure contains an axes. The axes contains 5 objects of type bar, text.](https://mathworks.com/help/examples/graphics/win64/BarLabelsOnBarsExample_02.png)

> Next, display the values above the tips of the second series of bars.

<pre class="mcode">xtips2 = b(2).XEndPoints;
ytips2 = b(2).YEndPoints;
labels2 = string(b(2).YData);
text(xtips2,ytips2,labels2,'HorizontalAlignment','center',...
    'VerticalAlignment','bottom')</pre>

![Figure contains an axes. The axes contains 8 objects of type bar, text.](https://mathworks.com/help/examples/graphics/win64/BarLabelsOnBarsExample_03.png)

## Specify Axes for Bar Graph 









> Starting in R2019b, you can display a tiling of bar graphs using the `tiledlayout` and `nexttile` functions. Call the `tiledlayout` function to create a 2-by-1 tiled chart layout. Call the `nexttile` function to create the axes objects `ax1` and `ax2`. Display a bar graph in the top axes. In the bottom axes, display a stacked bar graph of the same data.

<pre class="mcode">y = [1 2 3; 4 5 6];
tiledlayout(2,1)

% Top bar graph
ax1 = nexttile;
bar(ax1,y)

% Bottom bar graph
ax2 = nexttile;
bar(ax2,y,'stacked')</pre>

![Figure contains 2 axes. Axes 1 contains 3 objects of type bar. Axes 2 contains 3 objects of type bar.](https://mathworks.com/help/examples/graphics/win64/BarSpecifyAxes19bExample_01.png)

## Specify Bar Color 









> Create a bar graph using red bars. 

<pre class="mcode">y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,'r')</pre>

![Figure contains an axes. The axes contains an object of type bar.](https://mathworks.com/help/examples/graphics/win64/BarColorExample_01.png)

## Specify Bar and Outline Colors 









> Set the bar interior color and outline color using RGB triplets. Set the width of the bar outline.

<pre class="mcode">y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(y,'FaceColor',[0 .5 .5],'EdgeColor',[0 .9 .9],'LineWidth',1.5)</pre>

![Figure contains an axes. The axes contains an object of type bar.](https://mathworks.com/help/examples/graphics/win64/BarFaceandEdgeColorExample_01.png)

## Control Individual Bar Colors 









> Control individual bar colors using the `CData` property of the `Bar` object. 

> Create a bar chart and assign the `Bar` object to a variable. Set the `FaceColor` property of the `Bar` object to `'flat'` so that the chart uses the colors defined in the `CData` property. By default, the `CData` property is prepopulated with a matrix of the default RGB color values. To change a particular color, change the corresponding row in the matrix. For example, change the color of the second bar. 

<pre class="mcode">b = bar(rand(10,1));
b.FaceColor = 'flat';
b.CData(2,:) = [.5 0 .5];</pre>

![Figure contains an axes. The axes contains an object of type bar.](https://mathworks.com/help/examples/graphics/win64/ControlIndividualBarColorsExample_01.png)

## Bar Chart with Colormap Colors 









> Create a bar chart that uses colormap colors by setting the `FaceColor` property to `'flat'`. Then set the `CData` property for each `Bar` object to an integer.

<pre class="mcode">y = [1 3 5; 3 2 7; 3 4 2];
b = bar(y,'FaceColor','flat');
for k = 1:size(y,2)
    b(k).CData = k;
end</pre>

![Figure contains an axes. The axes contains 3 objects of type bar.](https://mathworks.com/help/examples/graphics/win64/BarChartWithColormapColorsExample_01.png)

## Customize One Series in Grouped or Stacked Bars 









> Create matrix `y`, where each column is a series of data. Call the `bar` function to display the data in a bar graph, and specify an output argument. The output is a vector of three `Bar` objects, where each object corresponds to a different series. This is true whether the bars are grouped or stacked.

<pre class="mcode">y = [10 15 20; 30 35 40; 50 55 62];
b = bar(y);</pre>

![Figure contains an axes. The axes contains 3 objects of type bar.](https://mathworks.com/help/examples/graphics/win64/BarColorOneSeriesExample_01.png)

> Make the third series of bars green.

<pre class="mcode">b(3).FaceColor = [.2 .6 .5];</pre>

![Figure contains an axes. The axes contains 3 objects of type bar.](https://mathworks.com/help/examples/graphics/win64/BarColorOneSeriesExample_02.png)

