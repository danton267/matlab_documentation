function swarmchart_4()
tbl = readtable(fullfile(matlabroot,'examples','matlab','data','BicycleCounts.csv'));
daynames = ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday"];
x = categorical(tbl.Day,daynames);
y = tbl.Total;
c = hour(tbl.Timestamp);
s = swarmchart(x,y,5,c);
thumbnail_generator(gcf, 'data_distribution_plots', 'swarmchart', false);

s.XJitter = 'rand';
s.XJitterWidth = 0.5;
end