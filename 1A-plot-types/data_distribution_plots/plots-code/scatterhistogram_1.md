function scatterhistogram_1()
load patients
tbl = table(LastName,Diastolic,Systolic,Smoker);
s = scatterhistogram(tbl,'Diastolic','Systolic','GroupVariable','Smoker');
thumbnail_generator(gcf, 'data_distribution_plots', 'scatterhistogram', false);

end