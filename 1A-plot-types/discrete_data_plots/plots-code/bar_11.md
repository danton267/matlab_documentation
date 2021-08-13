function bar_11()
b = bar(rand(10,1));
b.FaceColor = 'flat';
b.CData(2,:) = [.5 0 .5];
thumbnail_generator(gcf, 'discrete_data_plots', 'bar', false);

end