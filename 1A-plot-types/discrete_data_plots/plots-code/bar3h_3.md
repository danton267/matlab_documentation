function bar3h_3()
load count.dat
Y = count(1:10,:);
figure
bar3h(Y,'stacked')
title('Stacked Style Option');
thumbnail_generator(gcf, 'discrete_data_plots', 'bar3h', true);

end