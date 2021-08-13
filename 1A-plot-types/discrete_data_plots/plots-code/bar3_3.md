function bar3_3()
load count.dat
Z = count(1:10,:);
figure
bar3(Z,'stacked')
title('Stacked Style');
thumbnail_generator(gcf, 'discrete_data_plots', 'bar3', true);

end