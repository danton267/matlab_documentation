function pareto_1()
codelines = [200 120 555 608 1024 101 57 687];
coders = {'Fred','Ginger','Norman','Max','Julia','Wally','Heidi','Pat'};

figure
pareto(codelines, coders)
title('Lines of Code by Programmer');
thumbnail_generator(gcf, 'discrete_data_plots', 'pareto', false);

end