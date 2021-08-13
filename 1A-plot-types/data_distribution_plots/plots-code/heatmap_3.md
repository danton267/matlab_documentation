function heatmap_3()
load patients
tbl = table(LastName,Age,Gender,SelfAssessedHealthStatus,...
    Smoker,Weight,Location);
h = heatmap(tbl,'Smoker','SelfAssessedHealthStatus','ColorVariable','Age','ColorMethod','median');
thumbnail_generator(gcf, 'data_distribution_plots', 'heatmap', false);

end