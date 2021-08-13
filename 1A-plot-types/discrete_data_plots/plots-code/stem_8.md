function stem_8()
x = 0:25;
y1 = exp(0.1*x); 
y2 = -exp(.05*x);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
stem(ax1,x,y1)

% Bottom plot
ax2 = nexttile;
stem(ax2,x,y2);
thumbnail_generator(gcf, 'discrete_data_plots', 'stem', false);

end