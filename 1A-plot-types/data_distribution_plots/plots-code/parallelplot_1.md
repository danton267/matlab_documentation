function parallelplot_1()
tsunamis = readtable('tsunamis.xlsx');
figure('Units','normalized','Position',[0.3 0.3 0.45 0.4])
coordvars = {'Year','Validity','Cause','Country'};
p = parallelplot(tsunamis,'CoordinateVariables',coordvars,'GroupVariable','Validity');
thumbnail_generator(gcf, 'data_distribution_plots', 'parallelplot', false);

end