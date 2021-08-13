function scatterhistogram_5()
load patients
[idx,genderStatus,smokerStatus] = findgroups(string(Gender),string(Smoker));
SmokerGender = strcat(genderStatus(idx),"-",smokerStatus(idx));
s = scatterhistogram(Diastolic,Systolic,'GroupData',SmokerGender,'LegendVisible','on');
xlabel('Diastolic')
ylabel('Systolic');
thumbnail_generator(gcf, 'data_distribution_plots', 'scatterhistogram', false);

end