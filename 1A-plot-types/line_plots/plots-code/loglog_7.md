function loglog_7()
x = logspace(-1,2);
y1 = 10.^x;
y2 = 1./10.^x;
lg = loglog(x,y1,x,y2);
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

lg(1).LineWidth = 2;
lg(2).Color = [0.4 0 1];
end