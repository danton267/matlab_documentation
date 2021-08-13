function barh_5()
X = categorical({'Small','Medium','Large','Extra Large'});
X = reordercats(X,{'Small','Medium','Large','Extra Large'});
Y = [10 21 33 52];
barh(X,Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'barh', false);

end