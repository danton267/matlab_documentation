function semilogx_2()
f = logspace(1,5,100);
v = linspace(-50,50,100);
gain = (1-exp(5*(2.5*v.^2)./7500))/14;
semilogx(f,gain)
grid on;
thumbnail_generator(gcf, 'line_plots', 'semilogx', false);

yticks([-5 -4 -3 -2 -1 0])
xlabel ('Freqency (Hz)')
ylabel('Power Gain (dB)');
end