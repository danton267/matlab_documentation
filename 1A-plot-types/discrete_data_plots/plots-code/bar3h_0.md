function bar3h_0()
load count.dat
Y = count(1:10,:);
figure
bar3h(Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'bar3h', true);

end