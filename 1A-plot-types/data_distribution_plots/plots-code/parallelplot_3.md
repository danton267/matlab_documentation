function parallelplot_3()
load patients
X = [Age Height Weight];
coorddata = [1 3];
p = parallelplot(X,'CoordinateData',coorddata,'GroupData',Smoker);
thumbnail_generator(gcf, 'data_distribution_plots', 'parallelplot', false);

p.CoordinateTickLabels = {'Age','Weight'};
coorddata2 = [2 3];
p2 = parallelplot(X,'CoordinateData',coorddata2,'GroupData',Gender);
thumbnail_generator(gcf, 'data_distribution_plots', 'parallelplot', false);

p2.CoordinateTickLabels = {'Height','Weight'};
end