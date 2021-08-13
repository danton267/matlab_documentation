function swarmchart3_0()
tbl = readtable(fullfile(matlabroot,'examples','matlab','data','BicycleCounts.csv'));
tbl(1:5,:);
daynames = ["Sunday" "Monday" "Tuesday" "Wednesday" "Thursday" "Friday" "Saturday"];
x = categorical(tbl.Day,daynames);
ispm = tbl.Timestamp.Hour < 12;
y = categorical;
y(ispm) = "pm";
y(~ispm) = "am";
z= tbl.Eastbound;
swarmchart3(x,y,z);
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'swarmchart3', true);

end