---
                    layout: post
                    title:  MATLAB plot
                    description: Learn how to make line charts in MATLAB, then publish them to the Web with Plotly.
                    permalink: /matlab/data_distribution_plots/wordcloud/
                    layout: matlab
                    function: plot
                    reference: https://mathworks.com/help/matlab/ref/wordcloud.html
                    github: data_distribution_plots/wordcloud.md
                    ---

                    ## Create Word Cloud from Table 









> Load the example data `sonnetsTable`. The table `tbl` contains a list of words in the variable `Word`, and the corresponding frequency counts in the variable `Count`.

<pre class="mcode">load sonnetsTable
head(tbl)</pre>

<pre class="mcode"><div class="codeoutput"><pre>ans=<span class="emphasis"><em>8×2 table</em></span>
       Word        Count
    ___________    _____

    {'''tis'  }      1  
    {''Amen'' }      1  
    {''Fair'  }      2  
    {''Gainst'}      1  
    {''Since' }      1  
    {''This'  }      2  
    {''Thou'  }      1  
    {''Thus'  }      1  

</pre></div></pre>

> Plot the table data using `wordcloud`. Specify the words and corresponding word sizes to be the `Word` and `Count` variables respectively.

<pre class="mcode">figure
wordcloud(tbl,'Word','Count');
title("Sonnets Word Cloud")</pre>

![Figure contains an object of type wordcloud. The chart of type wordcloud has title Sonnets Word Cloud.](https://mathworks.com/help/examples/matlab/win64/CreateWordCloudFromTableExample_01.png)

## Prepare Text Data for Word Clouds 









> If you have Text Analytics Toolbox™ installed, then you can create word clouds directly from string arrays. For more information, see wordcloud` (Text Analytics Toolbox) (Text Analytics Toolbox). If you do not have Text Analytics Toolbox, then you must preprocess the text data manually. 

> This example shows how to create a word cloud from plain text by reading it into a string array, preprocessing it, and passing it to the `wordcloud` function.

> Read the text from Shakespeare's Sonnets with the `fileread` function and convert it to string.

<pre class="mcode">sonnets = string(fileread('sonnets.txt'));
extractBefore(sonnets,"II")</pre>

<pre class="mcode"><div class="codeoutput"><pre>ans = 
    "THE SONNETS
     
     by William Shakespeare
     
     
     
     
       I
     
       From fairest creatures we desire increase,
       That thereby beauty's rose might never die,
       But as the riper should by time decease,
       His tender heir might bear his memory:
       But thou, contracted to thine own bright eyes,
       Feed'st thy light's flame with self-substantial fuel,
       Making a famine where abundance lies,
       Thy self thy foe, to thy sweet self too cruel:
       Thou that art now the world's fresh ornament,
       And only herald to the gaudy spring,
       Within thine own bud buriest thy content,
       And tender churl mak'st waste in niggarding:
         Pity the world, or else this glutton be,
         To eat the world's due, by the grave and thee.
     
       "

</pre></div></pre>

> Split `sonnets` into a string array whose elements contain individual words. To do this, remove the punctuation characters and join all the string elements into a 1-by-1 string and then split on the space characters. Then, remove words with fewer than five characters and convert the words to lowercase.

<pre class="mcode">punctuationCharacters = ["." "?" "!" "," ";" ":"];
sonnets = replace(sonnets,punctuationCharacters," ");
words = split(join(sonnets));
words(strlength(words)<5) = [];
words = lower(words);
words(1:10)</pre>

<pre class="mcode"><div class="codeoutput"><pre>ans = <span class="emphasis"><em>10x1 string</em></span>
    "sonnets"
    "william"
    "shakespeare"
    "fairest"
    "creatures"
    "desire"
    "increase"
    "thereby"
    "beauty's"
    "might"

</pre></div></pre>

> Convert `sonnets` to a categorical array and then plot using `wordcloud`. The function plots the unique elements of `C` with sizes corresponding to their frequency counts.

<pre class="mcode">C = categorical(words);
figure
wordcloud(C);
title("Sonnets Word Cloud")</pre>

![Figure contains an object of type wordcloud. The chart of type wordcloud has title Sonnets Word Cloud.](https://mathworks.com/help/examples/matlab/win64/PrepareTextDataForWordCloudsExample_01.png)

## Specify Word Sizes 









> Create a word cloud from plain text by reading it into a string array, preprocessing it, and passing it to the `wordcloud` function.

> Read the text from Shakespeare's Sonnets with the `fileread` function and convert it to string.

<pre class="mcode">sonnets = string(fileread('sonnets.txt'));
extractBefore(sonnets,"II")</pre>

<pre class="mcode"><div class="codeoutput"><pre>ans = 
    "THE SONNETS
     
     by William Shakespeare
     
     
     
     
       I
     
       From fairest creatures we desire increase,
       That thereby beauty's rose might never die,
       But as the riper should by time decease,
       His tender heir might bear his memory:
       But thou, contracted to thine own bright eyes,
       Feed'st thy light's flame with self-substantial fuel,
       Making a famine where abundance lies,
       Thy self thy foe, to thy sweet self too cruel:
       Thou that art now the world's fresh ornament,
       And only herald to the gaudy spring,
       Within thine own bud buriest thy content,
       And tender churl mak'st waste in niggarding:
         Pity the world, or else this glutton be,
         To eat the world's due, by the grave and thee.
     
       "

</pre></div></pre>

> Split `sonnets` into a string array whose elements contain individual words. To do this, remove the punctuation characters and join all the string elements into a 1-by-1 string and then split on the space characters. Then, remove words with fewer than five characters and convert the words to lowercase.

<pre class="mcode">punctuationCharacters = ["." "?" "!" "," ";" ":"];
sonnets = replace(sonnets,punctuationCharacters," ");
words = split(join(sonnets));
words(strlength(words)<5) = [];
words = lower(words);
words(1:10)</pre>

<pre class="mcode"><div class="codeoutput"><pre>ans = <span class="emphasis"><em>10x1 string</em></span>
    "sonnets"
    "william"
    "shakespeare"
    "fairest"
    "creatures"
    "desire"
    "increase"
    "thereby"
    "beauty's"
    "might"

</pre></div></pre>

> Find the unique words in `sonnets` and count their frequency. Create a word cloud using the frequency counts as size data.

<pre class="mcode">[numOccurrences,uniqueWords] = histcounts(categorical(words));
figure
wordcloud(uniqueWords,numOccurrences);
title("Sonnets Word Cloud")</pre>

![Figure contains an object of type wordcloud. The chart of type wordcloud has title Sonnets Word Cloud.](https://mathworks.com/help/examples/matlab/win64/CreateWordCloudAndSpecifyWordSizesExample_01.png)

## Specify Word Colors 









> Load the example data `sonnetsTable`. The table `tbl` contains a list of words in the `Word` variable, and corresponding frequency counts in the `Count` variable.

<pre class="mcode">load sonnetsTable
head(tbl)</pre>

<pre class="mcode"><div class="codeoutput"><pre>ans=<span class="emphasis"><em>8×2 table</em></span>
       Word        Count
    ___________    _____

    {'''tis'  }      1  
    {''Amen'' }      1  
    {''Fair'  }      2  
    {''Gainst'}      1  
    {''Since' }      1  
    {''This'  }      2  
    {''Thou'  }      1  
    {''Thus'  }      1  

</pre></div></pre>

> Plot the table data using `wordcloud`. Specify the words and corresponding word sizes to be the `Word` and `Count` variables respectively. To set the word colors to random values, set `'Color'` to a random matrix or RGB triplets with one row for each word.

<pre class="mcode">numWords = size(tbl,1);
colors = rand(numWords,3);
figure
wordcloud(tbl,'Word','Count','Color',colors);
title("Sonnets Word Cloud")</pre>

![Figure contains an object of type wordcloud. The chart of type wordcloud has title Sonnets Word Cloud.](https://mathworks.com/help/examples/matlab/win64/SpecifyWordColorsExample_01.png)

## Create Word Cloud Using Text Analytics Toolbox 

