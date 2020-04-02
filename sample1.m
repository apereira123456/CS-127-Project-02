rng('default')
rng(2)
data = rand(20,1)*5-2;
categories = floor(rand(20,1)*2);
selectedCategory = floor(rand*2);

[~, answer1, answer2, ~] = dataTool(data,categories,selectedCategory)