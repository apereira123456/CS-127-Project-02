rng('default')
rng(1)
data = randperm(9);
categories = ceil(rand(9,1)*3);
selectedCategory = ceil(rand*3);

[answer1, ~, ~, answer2] = dataTool(data,categories,selectedCategory)