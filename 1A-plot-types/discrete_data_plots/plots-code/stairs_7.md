function stairs_7()
x = linspace(0,2*pi);
y1 = 5*sin(x);
y2 = sin(5*x);
tiledlayout(2,1)

% Top plot
ax1 = nexttile;
stairs(ax1,x,y1)

% Bottom plot
ax2 = nexttile;  
stairs(ax2,x,y2);
thumbnail_generator(gcf, 'discrete_data_plots', 'stairs', false);

end