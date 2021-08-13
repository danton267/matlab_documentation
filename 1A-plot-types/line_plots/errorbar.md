---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/errorbar/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/errorbar.html
                    github: line_plots/errorbar.md
                    ---

                    ## Plot Vertical Error Bars of Equal Length 









> Create vectors `x` and `y`. Plot `y` versus `x`. At each data point, display vertical error bars that are equal in length.

<pre class="mcode">x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = 8*ones(size(y));
errorbar(x,y,err)</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/PlotVerticalErrorBarsOfEqualLengthExample_01.png)

## Plot Vertical Error Bars that Vary in Length 









> Create a line plot with error bars at each data point. Vary the lengths of the error bars. 

<pre class="mcode">x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90]; 
err = [5 8 2 9 3 3 8 3 9 3];
errorbar(x,y,err)</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/PlotVerticalErrorBarsThatVaryInLengthExample_01.png)

## Plot Horizontal Error Bars 









> Create a line plot with horizontal error bars at each data point. 

<pre class="mcode">x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [1 3 5 3 5 3 6 4 3 3];
errorbar(x,y,err,'horizontal')</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/PlotHorizontalErrorBarsExample_01.png)

## Plot Vertical and Horizontal Error Bars 









> Create a line plot with both vertical and horizontal error bars at each data point. 

<pre class="mcode">x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [4 3 5 3 5 3 6 4 3 3];
errorbar(x,y,err,'both')</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/PlotVerticalAndHorizontalErrorBarsExample_01.png)

## Plot Error Bars with No Line 









> Plot vectors `y` versus `x`. At each data point, display a circle marker with both vertical and horizontal error bars. Do not display the line that connects the data points by omitting the line style option for the `linespec` input argument.

<pre class="mcode">x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
err = [4 3 5 3 5 3 6 4 3 3];
errorbar(x,y,err,'both','o')</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/PlotErrorBarsWithNoLineExample_01.png)

## Control Error Bars Lengths in All Directions 









> Display both vertical and horizontal error bars at each data point. Control the lower and upper lengths of the vertical error bars using the `yneg` and `ypos` input argument options, respectively. Control the left and right lengths of the horizontal error bars using the `xneg` and `xpos` input argument options, respectively. 

<pre class="mcode">x = 1:10:100;
y = [20 30 45 40 60 65 80 75 95 90];
yneg = [1 3 5 3 5 3 6 4 3 3];
ypos = [2 5 3 5 2 5 2 2 5 5];
xneg = [1 3 5 3 5 3 6 4 3 3];
xpos = [2 5 3 5 2 5 2 2 5 5];
errorbar(x,y,yneg,ypos,xneg,xpos,'o')</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/ControlErrorBarsLengthsInAllDirectionsExample_01.png)

## Plot Datetime Values with Error Bars 









> Create a plot of datetime values with error bars in duration units. 

<pre class="mcode">x = 1:13;
y = datetime(2018,5,1,1:13,0,0);
err = hours(rand(13,1));
errorbar(x,y,err)</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/ErrorBarDurationExample_01.png)

## Add Colored Markers to Each Data Point 









> Create a line plot with error bars. At each data point, display a marker. Control the appearance of the marker using name-value pair arguments. Use `MarkerSize` to specify the marker size in points. Use `MarkerEdgeColor` and `MarkerFaceColor` to specify the marker outline and interior colors, respectively. Set the colors to either a character vector of a color name, such as `'red'`, or an RGB triplet. 

<pre class="mcode">x = linspace(0,10,15);
y = sin(x/2);
err = 0.3*ones(size(y));
errorbar(x,y,err,'-s','MarkerSize',10,...
    'MarkerEdgeColor','red','MarkerFaceColor','red')</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/AddColoredMarkersToEachDataPointExample_01.png)

## Control Error Bar Cap Size 









> Control the size of the caps at the end of each error bar by setting the `CapSize` property to a positive value in points.

<pre class="mcode">x = linspace(0,2,15);
y = exp(x);
err = 0.3*ones(size(y));
errorbar(x,y,err,'CapSize',18)</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/ControlErrorBarCapSizeExample_01.png)

## Modify Error Bars After Creation 









> Create a line plot with error bars. Assign the errorbar object to the variable `e`.

<pre class="mcode">x = linspace(0,10,10);
y = sin(x/2);
err = 0.3*ones(size(y));
e = errorbar(x,y,err)</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/ModifyErrorBarsAfterCreationExample_01.png)

<pre class="mcode"><div class="codeoutput"><pre>e = 
  ErrorBar with properties:

             Color: [0 0.4470 0.7410]
         LineStyle: '-'
         LineWidth: 0.5000
            Marker: 'none'
             XData: [1x10 double]
             YData: [1x10 double]
    XNegativeDelta: [1x0 double]
    XPositiveDelta: [1x0 double]
    YNegativeDelta: [1x10 double]
    YPositiveDelta: [1x10 double]

  Show all properties

</pre></div></pre>

> Use `e` to access properties of the errorbar object after it is created.

<pre class="mcode">e.Marker = '*';
e.MarkerSize = 10;
e.Color = 'red';
e.CapSize = 15;</pre>

![Figure contains an axes. The axes contains an object of type errorbar.](https://mathworks.com/help/examples/graphics/win64/ModifyErrorBarsAfterCreationExample_02.png)

