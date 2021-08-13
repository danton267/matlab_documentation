function bar_13()
y = [10 15 20; 30 35 40; 50 55 62];
b = bar(y);
thumbnail_generator(gcf, 'discrete_data_plots', 'bar', false);

b(3).FaceColor = [.2 .6 .5];
end