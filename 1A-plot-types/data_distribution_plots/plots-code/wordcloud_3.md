function wordcloud_3()
load sonnetsTable
head(tbl);
numWords = size(tbl,1);
colors = rand(numWords,3);
figure
wordcloud(tbl,'Word','Count','Color',colors);
title("Sonnets Word Cloud");
thumbnail_generator(gcf, 'data_distribution_plots', 'wordcloud', false);

end