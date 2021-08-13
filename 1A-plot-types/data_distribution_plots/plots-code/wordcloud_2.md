function wordcloud_2()
sonnets = string(fileread('sonnets.txt'));
extractBefore(sonnets,"II");
punctuationCharacters = ["." "?" "!" "," ";" ":"];
sonnets = replace(sonnets,punctuationCharacters," ");
words = split(join(sonnets));
words(strlength(words)<5) = [];
words = lower(words);
words(1:10);
[numOccurrences,uniqueWords] = histcounts(categorical(words));
figure
wordcloud(uniqueWords,numOccurrences);
title("Sonnets Word Cloud");
thumbnail_generator(gcf, 'data_distribution_plots', 'wordcloud', false);

end