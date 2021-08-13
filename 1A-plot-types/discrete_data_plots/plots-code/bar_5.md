function bar_5()
x = [1980 1990 2000];
y = [15 20 -5; 10 -17 21; -10 5 15];
bar(x,y,'stacked');
thumbnail_generator(gcf, 'discrete_data_plots', 'bar', false);

end