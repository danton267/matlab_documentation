---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/data_distribution_plots/histogram2/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/matlab.graphics.chart.primitive.histogram2.html
                    github: data_distribution_plots/histogram2.md
                    ---

                    ## Histogram of Vectors 









> Generate 10,000 pairs of random numbers and create a bivariate histogram. The `histogram2` function automatically chooses an appropriate number of bins to cover the range of values in `x` and `y` and show the shape of the underlying distribution.

<pre class="mcode">x = randn(10000,1);
y = randn(10000,1);
h = histogram2(x,y)</pre>

<pre class="mcode"><div class="codeoutput"><pre>h = 
  Histogram2 with properties:

             Data: [10000x2 double]
           Values: [25x28 double]
          NumBins: [25 28]
        XBinEdges: [1x26 double]
        YBinEdges: [1x29 double]
         BinWidth: [0.3000 0.3000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0.1500 0.1500 0.1500]

  Show all properties

</pre></div></pre>

<pre class="mcode">xlabel('x')
ylabel('y')</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/HistogramOfVectorsExample_01.png)

> When you specify an output argument to the `histogram2` function, it returns a histogram2 object. You can use this object to inspect the properties of the histogram, such as the number of bins or the width of the bins.

> Find the number of histogram bins in each dimension.

<pre class="mcode">nXnY = h.NumBins</pre>

<pre class="mcode"><div class="codeoutput"><pre>nXnY = <span class="emphasis"><em>1×2</em></span>

    25    28

</pre></div></pre>

## Specify Number of Histogram Bins 









> Plot a bivariate histogram of 1,000 pairs of random numbers sorted into 25 equally spaced bins, using 5 bins in each dimension.

<pre class="mcode">x = randn(1000,1);
y = randn(1000,1);
nbins = 5;
h = histogram2(x,y,nbins)</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/SpecifyNumberOfHistogram2BinsExample_01.png)

<pre class="mcode"><div class="codeoutput"><pre>h = 
  Histogram2 with properties:

             Data: [1000x2 double]
           Values: [5x5 double]
          NumBins: [5 5]
        XBinEdges: [-4 -2.4000 -0.8000 0.8000 2.4000 4]
        YBinEdges: [-4 -2.4000 -0.8000 0.8000 2.4000 4]
         BinWidth: [1.6000 1.6000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0.1500 0.1500 0.1500]

  Show all properties

</pre></div></pre>

> Find the resulting bin counts.

<pre class="mcode">counts = h.Values</pre>

<pre class="mcode"><div class="codeoutput"><pre>counts = <span class="emphasis"><em>5×5</em></span>

     0     2     3     1     0
     2    40   124    47     4
     1   119   341   109    10
     1    32   117    33     1
     0     4     8     1     0

</pre></div></pre>

## Adjust Number of Histogram Bins 









> Generate 1,000 pairs of random numbers and create a bivariate histogram.

<pre class="mcode">x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/AdjustNumberOfHistogram2BinsExample_01.png)

<pre class="mcode"><div class="codeoutput"><pre>h = 
  Histogram2 with properties:

             Data: [1000x2 double]
           Values: [15x15 double]
          NumBins: [15 15]
        XBinEdges: [1x16 double]
        YBinEdges: [1x16 double]
         BinWidth: [0.5000 0.5000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0.1500 0.1500 0.1500]

  Show all properties

</pre></div></pre>

> Use the `morebins` function to coarsely adjust the number of bins in the *x* dimension.

<pre class="mcode">nbins = morebins(h,'x');
nbins = morebins(h,'x')</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/AdjustNumberOfHistogram2BinsExample_02.png)

<pre class="mcode"><div class="codeoutput"><pre>nbins = <span class="emphasis"><em>1×2</em></span>

    19    15

</pre></div></pre>

> Use the `fewerbins` function to adjust the number of bins in the *y* dimension.

<pre class="mcode">nbins = fewerbins(h,'y');
nbins = fewerbins(h,'y')</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/AdjustNumberOfHistogram2BinsExample_03.png)

<pre class="mcode"><div class="codeoutput"><pre>nbins = <span class="emphasis"><em>1×2</em></span>

    19    11

</pre></div></pre>

> Adjust the number of bins at a fine grain level by explicitly setting the number of bins.

<pre class="mcode">h.NumBins = [20 10];</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/AdjustNumberOfHistogram2BinsExample_04.png)

## Color Histogram Bars by Height 









> Create a bivariate histogram using 1,000 normally distributed random numbers with 12 bins in each dimension. Specify `FaceColor` as `'flat'` to color the histogram bars by height.

<pre class="mcode">h = histogram2(randn(1000,1),randn(1000,1),[12 12],'FaceColor','flat');
colorbar</pre>

![Figure contains an axes. The axes contains an object of type histogram2.](https://mathworks.com/help/examples/matlab/win64/ColorHistogramsByBarHeightExample_01.png)

## Tiled Histogram View 









> Generate random data and plot a bivariate tiled histogram. Display the empty bins by specifying `ShowEmptyBins` as `'on'`.

<pre class="mcode">x = 2*randn(1000,1)+2;
y = 5*randn(1000,1)+3;
h = histogram2(x,y,'DisplayStyle','tile','ShowEmptyBins','on');</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/TiledHistogramViewExample_01.png)

## Specify Bin Edges of Histogram 









> Generate 1,000 pairs of random numbers and create a bivariate histogram. Specify the bin edges using two vectors, with infinitely wide bins on the boundary of the histogram to capture all outliers that do not satisfy |x|<2.

<pre class="mcode">x = randn(1000,1);
y = randn(1000,1);
Xedges = [-Inf -2:0.4:2 Inf];
Yedges = [-Inf -2:0.4:2 Inf];
h = histogram2(x,y,Xedges,Yedges)</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/SpecifyBinEdgesOfHistogram2Example_01.png)

<pre class="mcode"><div class="codeoutput"><pre>h = 
  Histogram2 with properties:

             Data: [1000x2 double]
           Values: [12x12 double]
          NumBins: [12 12]
        XBinEdges: [1x13 double]
        YBinEdges: [1x13 double]
         BinWidth: 'nonuniform'
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0.1500 0.1500 0.1500]

  Show all properties

</pre></div></pre>

> When the bin edges are infinite, `histogram2` displays each outlier bin (along the boundary of the histogram) as being double the width of the bin next to it.

> Specify the `Normalization` property as `'countdensity'` to remove the bins containing the outliers. Now the *volume* of each bin represents the frequency of observations in that interval.

<pre class="mcode">h.Normalization = 'countdensity';</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/SpecifyBinEdgesOfHistogram2Example_02.png)

## Normalized Histogram 









> Generate 1,000 pairs of random numbers and create a bivariate histogram using the `'probability'` normalization.

<pre class="mcode">x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y,'Normalization','probability')</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/Histogram2WithSpecifiedNormalizationExample_01.png)

<pre class="mcode"><div class="codeoutput"><pre>h = 
  Histogram2 with properties:

             Data: [1000x2 double]
           Values: [15x15 double]
          NumBins: [15 15]
        XBinEdges: [1x16 double]
        YBinEdges: [1x16 double]
         BinWidth: [0.5000 0.5000]
    Normalization: 'probability'
        FaceColor: 'auto'
        EdgeColor: [0.1500 0.1500 0.1500]

  Show all properties

</pre></div></pre>

> Compute the total sum of the bar heights. With this normalization, the height of each bar is equal to the probability of selecting an observation within that bin interval, and the heights of all of the bars sum to 1.

<pre class="mcode">S = sum(h.Values(:))</pre>

<pre class="mcode"><div class="codeoutput"><pre>S = 1
</pre></div></pre>

## Adjust Histogram Properties 









> Generate 1,000 pairs of random numbers and create a bivariate histogram. Return the histogram object to adjust the properties of the histogram without recreating the entire plot.

<pre class="mcode">x = randn(1000,1);
y = randn(1000,1);
h = histogram2(x,y)</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/AdjustHistogram2PropertiesExample_01.png)

<pre class="mcode"><div class="codeoutput"><pre>h = 
  Histogram2 with properties:

             Data: [1000x2 double]
           Values: [15x15 double]
          NumBins: [15 15]
        XBinEdges: [1x16 double]
        YBinEdges: [1x16 double]
         BinWidth: [0.5000 0.5000]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0.1500 0.1500 0.1500]

  Show all properties

</pre></div></pre>

> Color the histogram bars by height.

<pre class="mcode">h.FaceColor = 'flat';</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/AdjustHistogram2PropertiesExample_02.png)

> Change the number of bins in each direction.

<pre class="mcode">h.NumBins = [10 25];</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/AdjustHistogram2PropertiesExample_03.png)

> Display the histogram as a tile plot.

<pre class="mcode">h.DisplayStyle = 'tile';
view(2)</pre>

![Figure contains an axes. The axes contains an object of type histogram2. This object represents y vs. x.](https://mathworks.com/help/examples/matlab/win64/AdjustHistogram2PropertiesExample_04.png)

## Saving and Loading Histogram2 Objects 









> Use the `savefig` function to save a `histogram2` figure.

<pre class="mcode">histogram2(randn(100,1),randn(100,1));
savefig('histogram2.fig');
close gcf</pre>

> Use `openfig` to load the histogram figure back into MATLAB. `openfig` also returns a handle to the figure, `h`.

<pre class="mcode">h = openfig('histogram2.fig');</pre>

![Figure contains an axes. The axes contains an object of type histogram2.](https://mathworks.com/help/examples/matlab/win64/SavingAndLoadingHistogram2ObjectsExample_01.png)

> Use the `findobj` function to locate the correct object handle from the figure handle. This allows you to continue manipulating the original histogram object used to generate the figure.

<pre class="mcode">y = findobj(h,'type','histogram2')</pre>

<pre class="mcode"><div class="codeoutput"><pre>y = 
  Histogram2 with properties:

             Data: [100x2 double]
           Values: [7x6 double]
          NumBins: [7 6]
        XBinEdges: [-3 -2 -1 0 1 2 3 4]
        YBinEdges: [-3 -2 -1 0 1 2 3]
         BinWidth: [1 1]
    Normalization: 'count'
        FaceColor: 'auto'
        EdgeColor: [0.1500 0.1500 0.1500]

  Show all properties

</pre></div></pre>

