---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/line_plots/fimplicit/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/fimplicit.html
                    github: line_plots/fimplicit.md
                    ---

                    ## Plot Implicit Function 









> Plot the hyperbola described by the function x2-y2-1=0 over the default interval of `[-5 5]` for *x* and *y*.

<pre class="mcode">fimplicit(@(x,y) x.^2 - y.^2 - 1)</pre>

![Figure contains an axes. The axes contains an object of type implicitfunctionline.](https://mathworks.com/help/examples/graphics/win64/PlotImplicitFunctionExample_01.png)

## Specify Plotting Interval 









> Plot the function x2+y2-3=0 over the intervals `[-3 0]` for `x` and `[-2 2]` for `y`.

<pre class="mcode">f = @(x,y) x.^2 + y.^2 - 3;
fimplicit(f,[-3 0 -2 2])</pre>

![Figure contains an axes. The axes contains an object of type implicitfunctionline.](https://mathworks.com/help/examples/graphics/win64/SpecifyPlottingIntervalExample_01.png)

## Modify Appearance of Implicit Plot 









> Plot two circles centered at `(0,0)` with different radius values. For the first circle, use a dotted, red line. For the second circle, use a dashed, green line with a line width of 2 points.

<pre class="mcode">f1 = @(x,y) x.^2 + y.^2 - 1;
fimplicit(f1,':r')

hold on
f2 = @(x,y) x.^2 + y.^2 - 2;
fimplicit(f2,'--g','LineWidth',2)
hold off</pre>

![Figure contains an axes. The axes contains 2 objects of type implicitfunctionline.](https://mathworks.com/help/examples/graphics/win64/SpecifyImplicitFunctionLinePropertiesExample_01.png)

## Modify Implicit Plot After Creation 









> Plot the implicit function ysin(x)+xcos(y)-1=0 and assign the implicit function line object to the variable `fp`.

<pre class="mcode">fp = fimplicit(@(x,y) y.*sin(x) + x.*cos(y) - 1)</pre>

![Figure contains an axes. The axes contains an object of type implicitfunctionline.](https://mathworks.com/help/examples/graphics/win64/ModifyImplicitPlotAfterCreationExample_01.png)

<pre class="mcode"><div class="codeoutput"><pre>fp = 
  ImplicitFunctionLine with properties:

     Function: @(x,y)y.*sin(x)+x.*cos(y)-1
        Color: [0 0.4470 0.7410]
    LineStyle: '-'
    LineWidth: 0.5000

  Show all properties

</pre></div></pre>

> Use `fp` to access and modify properties of the implicit function line object after it is created. For example, change the color, line style, and line width.

<pre class="mcode">fp.Color = 'r';
fp.LineStyle = '--';
fp.LineWidth = 2;</pre>

![Figure contains an axes. The axes contains an object of type implicitfunctionline.](https://mathworks.com/help/examples/graphics/win64/ModifyImplicitPlotAfterCreationExample_02.png)

