function wordcloud_0()
load sonnetsTable
head(tbl);
figure
wordcloud(tbl,'Word','Count');
title("Sonnets Word Cloud");
thumbnail_generator(gcf, 'data_distribution_plots', 'wordcloud', false);

end