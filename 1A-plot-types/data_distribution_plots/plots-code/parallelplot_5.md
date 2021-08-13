function parallelplot_5()
outages = readtable('outages.csv');
coordvars = [1 3 4 6];
p = parallelplot(outages,'CoordinateVariables',coordvars,'GroupVariable','Cause');
thumbnail_generator(gcf, 'data_distribution_plots', 'parallelplot', false);

categoricalCause = categorical(p.SourceTable.Cause);
newOrder = {'attack','earthquake','energy emergency','equipment fault', ...
    'fire','severe storm','thunder storm','wind','winter storm','unknown'};
orderCause = reordercats(categoricalCause,newOrder);
p.SourceTable.Cause = orderCause;
p.Color = parula(10);
end