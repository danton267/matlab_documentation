function pareto_2()
pies = {'Chocolate','Apple','Pecan','Cherry','Pumpkin'};
votes = [35 50 30 5 80];
pareto(votes,pies,1)
ylabel('Votes');
thumbnail_generator(gcf, 'discrete_data_plots', 'pareto', false);

end