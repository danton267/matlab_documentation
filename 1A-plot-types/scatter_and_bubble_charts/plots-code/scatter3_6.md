function scatter3_6()
load seamount
tiledlayout(2,1)
ax1 = nexttile;
ax2 = nexttile;
scatter3(ax1,x,y,z,'MarkerFaceColor',[0 .75 .75])
scatter3(ax2,x,y,z,'*');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'scatter3', true);

end