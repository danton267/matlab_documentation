function heatmap_0()
load patients
tbl = table(LastName,Age,Gender,SelfAssessedHealthStatus,...
    Smoker,Weight,Location);
h = heatmap(tbl,'Smoker','SelfAssessedHealthStatus');
thumbnail_generator(gcf, 'data_distribution_plots', 'heatmap', false);

end