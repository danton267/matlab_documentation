function stackedplot_2()
tbl = readtable('outages.csv');
tbl = table2timetable(tbl);
tbl = sortrows(tbl);
head(tbl,3);
stackedplot(tbl,{'RestorationTime','Loss','Customers'});
thumbnail_generator(gcf, 'line_plots', 'stackedplot', false);

end