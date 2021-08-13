function bar3h_2()
load count.dat
Y = count(1:10,:);
figure
bar3h(Y,'grouped')
title('Grouped Style Option');
thumbnail_generator(gcf, 'discrete_data_plots', 'bar3h', true);

end