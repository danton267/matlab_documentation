function loglog_2()
x = logspace(-1,2,10000);
y = 5 + 3*sin(x);
loglog(x,y);
thumbnail_generator(gcf, 'line_plots', 'loglog', false);

yticks([3 4 5 6 7])
xlabel('x')
ylabel('5 + 3 sin(x)');
end