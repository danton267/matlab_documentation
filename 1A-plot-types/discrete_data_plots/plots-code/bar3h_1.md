function bar3h_1()
load count.dat;
Y = count(1:10,:);
width = 0.5;

figure
bar3h(Y,width)
title('Width of 0.5');
thumbnail_generator(gcf, 'discrete_data_plots', 'bar3h', true);

end