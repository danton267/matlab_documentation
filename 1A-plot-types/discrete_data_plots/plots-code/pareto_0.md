function pareto_0()
y = [90,75,30,60,5,40,40,5];
figure
pareto(y);
thumbnail_generator(gcf, 'discrete_data_plots', 'pareto', false);

end