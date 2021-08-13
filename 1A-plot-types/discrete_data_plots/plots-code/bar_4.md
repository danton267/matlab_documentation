function bar_4()
y = [2 2 3; 2 5 6; 2 8 9; 2 11 12];
bar(y,'stacked');
thumbnail_generator(gcf, 'discrete_data_plots', 'bar', false);

end