function bubblechart_5()
towns1 = randi([25000 500000],[1 30]);
towns2 = towns1/3;
nsites1 = randi(10,1,30);
nsites2 = randi(10,1,30);
levels1 = (5 * nsites2) + (7 * randn(1,30) + 20);
levels2 = (3 * nsites1) + (7 * randn(1,30) + 20);
tiledlayout(1,2,'TileSpacing','compact')

% West side
ax1 = nexttile;
bubblechart(ax1,nsites1,levels1,towns1);
title('West Side')
xlabel('Number of Industrial Sites')

% East side
ax2 = nexttile;
bubblechart(ax2,nsites2,levels2,towns2);
title('East Side')
xlabel('Number of Industrial Sites')
ylabel('Contamination Level');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart', false);

bubblesize(ax1,[5 30])
bubblesize(ax2,[5 30]);
% Adjust scale of the bubbles
alltowns = [towns1 towns2];
newlims = [min(alltowns) max(alltowns)];
bubblelim(ax1,newlims)
bubblelim(ax2,newlims)

% Adjust x-axis limits
allx = [xlim(ax1) xlim(ax2)];
xmin = min(allx);
xmax = max(allx);
xlim([ax1 ax2],[xmin xmax]);

% Adjust y-axis limits
ally = [ylim(ax1) ylim(ax2)];
ymin = min(ally);
ymax = max(ally);
ylim([ax1 ax2],[ymin ymax]);
end