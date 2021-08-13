function stem3_9()
X = linspace(-2,2,50);
Y = X.^3;
Z = exp(X);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
stem(ax1,X,Z)

% Bottom plot
ax2 = nexttile;  
stem3(ax2,X,Y,Z);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem3', true);

end