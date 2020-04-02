rawData = [1.5 3.2 -4.6 7.2 0.4];
categories = [5.5 1 5.5 2 5.5];
selectedCategory = 5.5;

[sift1, mean1, std1, norm1] = dataTool(rawData, categories, selectedCategory)