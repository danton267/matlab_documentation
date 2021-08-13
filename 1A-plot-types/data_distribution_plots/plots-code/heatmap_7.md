function heatmap_7()
tbl = readtable('TemperatureData.csv');
months = categorical(tbl.Month);
years = categorical(tbl.Year);
xlabels = categories(months);
ylabels = categories(years);
nummonths = numel(xlabels);
numyears = numel(ylabels);
x = double(months);
y = double(years);
temps = tbl.TemperatureF;
cdata = accumarray([y,x],temps,[numyears,nummonths],@max,NaN);
h = heatmap(xlabels,ylabels,cdata);
thumbnail_generator(gcf, 'data_distribution_plots', 'heatmap', false);

end