function heatmap_2()
load patients
tbl = table(LastName,Age,Gender,SelfAssessedHealthStatus,...
    Smoker,Weight,Location);
h = heatmap(tbl,'Smoker','SelfAssessedHealthStatus','ColorVariable','Age');
thumbnail_generator(gcf, 'data_distribution_plots', 'heatmap', false);

end