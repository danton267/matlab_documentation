function polarbubblechart_4()
theta1 = repmat([0 pi/2 7*pi/6],1,4) + 0.25*randn(1,12);
theta2 = repmat([pi pi/6 3*pi/2],1,4) + 0.25*randn(1,12);
planesize1 = randi([75 500],[1 12]);
planesize2 = randi([1 50],[1 12]);
altitude1 = randi([13000 43000],1,12);
altitude2 = randi([13000 85000],1,12);
t = tiledlayout(1,2);
pax1 = polaraxes(t);
polarbubblechart(pax1,theta1,altitude1,planesize1)
title('Airport A')

pax2 = polaraxes(t);
pax2.Layout.Tile = 2;
polarbubblechart(pax2,theta2,altitude2,planesize2);
title('Airport B');
thumbnail_generator(gcf, 'polar_plots', 'polarbubblechart', false);

bubblesize(pax1,[5 20])
bubblesize(pax2,[5 20]);
allsizes = [planesize1 planesize2];
newlims = [min(allsizes) max(allsizes)];
bubblelim(pax1,newlims)
bubblelim(pax2,newlims);
end