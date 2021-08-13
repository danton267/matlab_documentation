function stem_10()
X = linspace(0,2*pi,50);
Y = exp(0.3*X).*sin(3*X);
h = stem(X,Y);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

hbase = h.BaseLine; 
hbase.LineStyle = '--';
hbase.Visible = 'off';
end