function [siftedData, siftedMean, siftedStd, siftedNorm] = dataTool (rawData, categories, selectedCategory)
    
    siftedData = zeros(length(rawData));                                    % Preallocate memory for the sifted array
    siftedLength = 0;                                                       % Initialize the variable for the sifted array length

    for i = 1:length(rawData)                                               % Iterate through the entire raw array
        if (categories(i) == selectedCategory && abs(rawData(i)) > 0.5)     % Check whether the category matches the selected category
            siftedLength = siftedLength + 1;                                % Increment the sifted array length
            siftedData(siftedLength) = rawData(i);                          % Assign the corresponding raw value to the sifted array   
        end
    end
    
    siftedData = siftedData(1:siftedLength);                                % Truncate the array to exclude extraneous zeros
    siftedMean = mean(siftedData);                                          % Calculate the mean
    siftedStd = std(siftedData);                                            % Calculate the standard deviation
    siftedNorm = normalize(siftedData);                                     % Normalize the data
    
end