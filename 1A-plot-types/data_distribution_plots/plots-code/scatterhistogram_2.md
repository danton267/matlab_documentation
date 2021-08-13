function scatterhistogram_2()
load patients
Smoker = categorical(Smoker);
s = scatterhistogram(Age,Smoker);
xlabel('Age')
ylabel('Smoker');
thumbnail_generator(gcf, 'data_distribution_plots', 'scatterhistogram', false);

end