function heatmap_1()
load patients
tbl = table(LastName,Age,Gender,SelfAssessedHealthStatus,...
    Smoker,Weight,Location);
h = heatmap(tbl,'Smoker','SelfAssessedHealthStatus');
thumbnail_generator(gcf, 'data_distribution_plots', 'heatmap', false);

h.YDisplayData = {'Excellent','Good','Fair','Poor'};
end