function swarmchart3_5()
tbl = readtable(fullfile(matlabroot,'examples','matlab','data','BicycleCounts.csv'));
tbl(1:5,:);
daynames = ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday"];
x = categorical(tbl.Day,daynames);
ispm = tbl.Timestamp.Hour<12;
y = categorical;
y(ispm) = 'pm';
y(~ispm) = 'am';
ze = tbl.Eastbound;
zw = tbl.Westbound;
tiledlayout('flow')
ax1=nexttile;
swarmchart3(ax1,x,y,ze,'.');
thumbnail_generator(gcf, 'data_distribution_plots', 'swarmchart3', true);

ax2 = nexttile;
z = tbl.Westbound;
swarmchart3(ax2,x,y,zw,'.');
thumbnail_generator(gcf, 'data_distribution_plots', 'swarmchart3', true);

end