function swarmchart_3()
tbl = readtable(fullfile(matlabroot,'examples','matlab','data','BicycleCounts.csv'));
daynames = ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday"];
x = categorical(tbl.Day,daynames);
y = tbl.Total;
c = hour(tbl.Timestamp);
swarmchart(x,y,20,c,'filled');
thumbnail_generator(gcf, 'data_distribution_plots', 'swarmchart', false);

end