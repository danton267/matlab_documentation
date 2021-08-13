function bar3_2()
load count.dat
Z = count(1:10,:);
figure
bar3(Z,'grouped')
title('Grouped Style');
thumbnail_generator(gcf, 'discrete_data_plots', 'bar3', true);

end