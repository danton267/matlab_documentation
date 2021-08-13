function bar3_1()
load count.dat
Z = count(1:10,:);
width = 0.5;

figure
bar3(Z,width)
title('Bar Width of 0.5');
thumbnail_generator(gcf, 'discrete_data_plots', 'bar3', true);

end