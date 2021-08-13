function barh_2()
y = [8 15 33; 30 35 40; 50 55 62];
barh(y,'BaseValue',25);
thumbnail_generator(gcf, 'discrete_data_plots', 'barh', false);

end