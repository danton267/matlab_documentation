function stackedplot_0()
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);
head(tbl,5);
tbl = sortrows(tbl);
head(tbl,5);
stackedplot(tbl);
thumbnail_generator(gcf, 'line_plots', 'stackedplot', false);

end