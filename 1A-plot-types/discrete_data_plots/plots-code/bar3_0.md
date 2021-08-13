function bar3_0()
load count.dat
Z = count(1:10,:);
figure
bar3(Z)
title('Detached Style');
thumbnail_generator(gcf, 'discrete_data_plots', 'bar3', true);

end