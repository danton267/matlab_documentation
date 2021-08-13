function bar_6()
X = categorical({'Small','Medium','Large','Extra Large'});
X = reordercats(X,{'Small','Medium','Large','Extra Large'});
Y = [10 21 33 52];
bar(X,Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'bar', false);

end