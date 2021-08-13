function scatterhistogram_0()
load patients
tbl = table(LastName,Age,Gender,Height,Weight);
s = scatterhistogram(tbl,'Height','Weight');
thumbnail_generator(gcf, 'data_distribution_plots', 'scatterhistogram', false);

end