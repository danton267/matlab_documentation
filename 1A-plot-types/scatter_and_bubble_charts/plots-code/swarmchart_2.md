function swarmchart_2()
tbl = readtable(fullfile(matlabroot,'examples','matlab','data','BicycleCounts.csv'));
tbl(1:5,:);
daynames = ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday"];
x = categorical(tbl.Day,daynames);
y = tbl.Total;
swarmchart(x,y,'.');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'swarmchart', false);

end