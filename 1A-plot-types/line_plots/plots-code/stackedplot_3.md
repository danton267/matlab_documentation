function stackedplot_3()
load patients
tbl = table(Weight,Systolic,Diastolic);
head(tbl,3);
vars = {{'Systolic','Diastolic'},'Weight'};
stackedplot(tbl,vars);
thumbnail_generator(gcf, 'line_plots', 'stackedplot', false);

end