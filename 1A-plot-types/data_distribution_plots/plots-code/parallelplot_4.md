function parallelplot_4()
outages = readtable('outages.csv');
head(outages);
OutageDuration = outages.RestorationTime - outages.OutageTime;
outages.OutageDays = days(OutageDuration);
coordvars = {'Loss','Customers','OutageDays'};
p = parallelplot(outages,'CoordinateVariables',coordvars,'DataNormalization','zscore','Jitter',0);
thumbnail_generator(gcf, 'data_distribution_plots', 'parallelplot', false);

outliers = outages([1011 269],:);
end