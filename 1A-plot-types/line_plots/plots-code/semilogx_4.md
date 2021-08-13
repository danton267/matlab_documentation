function semilogx_4()
x = logspace(1,4,100);
v = linspace(-50,50,100);
y1 = 100*exp(-1*((v+5).^2)./200);
y2 = 100*exp(-1*(v.^2)./200);
semilogx(x,y1,x,y2,'--')
legend('Measured','Estimated')
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

end