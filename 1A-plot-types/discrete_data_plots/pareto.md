---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/discrete_data_plots/pareto/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/pareto.html
                    github: discrete_data_plots/pareto.md
                    ---

                    ## Create Pareto Chart 









> Create a Pareto chart of vector `y`.

<pre class="mcode">y = [90,75,30,60,5,40,40,5];
figure
pareto(y)</pre>

![Figure contains 2 axes. Axes 1 contains 2 objects of type bar, line. Axes 2 is empty.](https://mathworks.com/help/examples/graphics/win64/CreateParetoChartExample_01.png)

> `pareto` displays the elements in `y` as bars in descending order and labels each bar with its index in `y`. Since `pareto` displays only the first 95% of the cumulative distribution, some elements in `y` are not displayed. 

## Label Bars in Pareto Chart 









> Examine the cumulative productivity of a group of programmers to see how normal its distribution is. Label each bar with the name of the programmer.

<pre class="mcode">codelines = [200 120 555 608 1024 101 57 687];
coders = {'Fred','Ginger','Norman','Max','Julia','Wally','Heidi','Pat'};

figure
pareto(codelines, coders)
title('Lines of Code by Programmer')</pre>

![Figure contains 2 axes. Axes 1 with title Lines of Code by Programmer contains 2 objects of type bar, line. Axes 2 is empty.](https://mathworks.com/help/examples/graphics/win64/CreateParetoChartToShowCumulativeProductivityExample_01.png)

## Display All the Values in the Cumulative Distribution 









> Create a Pareto chart that examines the preferred types of pie in a survey of 200 participants. Include all the values in the cumulative distribution by setting the `threshold` argument to `1`. 

<pre class="mcode">pies = {'Chocolate','Apple','Pecan','Cherry','Pumpkin'};
votes = [35 50 30 5 80];
pareto(votes,pies,1)
ylabel('Votes')</pre>

![Figure contains 2 axes. Axes 1 contains 2 objects of type bar, line. Axes 2 is empty.](https://mathworks.com/help/examples/graphics/win64/ParetoDisplayAllBarsExample_01.png)

