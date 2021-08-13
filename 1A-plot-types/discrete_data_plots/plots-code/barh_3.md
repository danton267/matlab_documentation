function barh_3()
x = [1980 1990 2000];
y = [15 20 -5; 10 -17 21; -10 5 15];
barh(x,y,'stacked');
thumbnail_generator(gcf, 'discrete_data_plots', 'barh', false);

end