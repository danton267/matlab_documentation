function stackedplot_1()
tbl = readtable('patients.xls');
head(tbl,3);
stackedplot(tbl,{'Height','Weight','Systolic','Diastolic'});
thumbnail_generator(gcf, 'line_plots', 'stackedplot', false);

end