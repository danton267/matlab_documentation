function swarmchart3_3()
x = [zeros(1,500) ones(1,500)];
y = randi(2,1,1000);
z = randn(1,1000).^2;
c = sqrt(z);
swarmchart3(x,y,z,50,c,'filled');
thumbnail_generator(gcf, 'data_distribution_plots', 'swarmchart3', true);

end