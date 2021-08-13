function parallelplot_0()
load patients
tbl = table(Diastolic,Smoker,Systolic);
p = parallelplot(tbl);
thumbnail_generator(gcf, 'data_distribution_plots', 'parallelplot', false);

p.Jitter = 0;
end