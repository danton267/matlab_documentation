function barh_1()
x = [1980 1990 2000];
y = [40 50 63 52; 42 55 50 48; 30 20 44 40];
barh(x,y)
xlabel('Snowfall')
ylabel('Year')
legend({'Springfield','Fairview','Bristol','Jamesville'});
thumbnail_generator(gcf, 'discrete_data_plots', 'barh', false);

end