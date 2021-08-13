function bubblechart_3()
towns = randi([25000 500000],[1 30]);
nsites = randi(10,1,30);
levels = (3 * nsites) + (7 * randn(1,30) + 20);

% Display bubble chart with axis labels and legend
bubblechart(nsites,levels,towns)
xlabel('Number of Industrial Sites')
ylabel('Contamination Level')
bubblesize([5 30])
bubblelegend('Town Population','Location','eastoutside');
thumbnail_generator(gcf, 'scatter_and_bubble_charts', 'bubblechart', false);

end