function bar_1()
x = 1900:10:2000;
y = [75 91 105 123.5 131 150 179 203 226 249 281.5];
bar(x,y);
thumbnail_generator(gcf, 'discrete_data_plots', 'bar', false);

end