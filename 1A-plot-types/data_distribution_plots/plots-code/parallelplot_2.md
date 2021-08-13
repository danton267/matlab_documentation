function parallelplot_2()
load patients
X = [Age Height Weight];
p = parallelplot(X);
thumbnail_generator(gcf, 'data_distribution_plots', 'parallelplot', false);

p.CoordinateTickLabels = {'Age (years)','Height (inches)','Weight (pounds)'};
min(Height);
max(Height);
binEdges = [60 64 68 72];
bins = {'short','average','tall'};
groupHeight = discretize(Height,binEdges,'categorical',bins);
p.GroupData = groupHeight;
end