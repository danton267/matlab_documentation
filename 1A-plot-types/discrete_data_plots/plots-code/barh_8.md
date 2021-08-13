function barh_8()
y = [10 15 20; 30 35 40; 50 55 62];
b = barh(y);
thumbnail_generator(gcf, 'discrete_data_plots', 'barh', false);

b(2).FaceColor = [.2 .6 .5];
b(2).EdgeColor = [.63 .08 .18];
b(2).LineWidth = 2;
end