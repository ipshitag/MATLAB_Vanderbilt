%{Excel File I/O
The attached Distances.xlsx (https://lcms-files.mathworks.com/content/file/348f7627-8238-4f0d-99de-1c15fd5a171c/Distances.xlsx?versionId=rPFc1UxVH04p8nuG6kIM8lEiuYYmE4uC) 
%file contains a spreadsheet with the pairwise distances in miles of the top 100 US cities by population. 
%The first row and first column contain the city names using the following format: city name comma space capitalized state abbreviation
%Nashville, TN. Note that the very first cell of the spresheet, A1, is blank.
%Write a function called get_distance that accepts two character vector inputs representing the names of two cities. The function returns the distance between the
%argument called distance. For example, the call get_distance('Seattle, WA','Miami, FL') should return 3723. If one or both of the specified cities are not in the fi
%returns -1.
%The function should load the data only once. File I/O is a time consuming operation. Loading the data multiple times is will likely cause a time-out error when sub
%function.
}

function distance = get_distance (city1, city2)
[num, text] = xlsread('Distances.xlsx');
index1 = find(strcmp(text(1,1:end), city1));
index2 = find(strcmp(text(1:end,1), city2));

distance = num(index2-1,index1-1);

if sum(strcmp(text(:),city1)) == 0 | sum(strcmp(text(:),city2)) == 0 
    distance = -1;
end
end
