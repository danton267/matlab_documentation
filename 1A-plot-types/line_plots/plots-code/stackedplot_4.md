function stackedplot_4()
X = [0:4:20];
Y = randi(100,6,3);
stackedplot(X,Y);
thumbnail_generator(gcf, 'line_plots', 'stackedplot', false);

end