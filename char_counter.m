%{Write a function called char_counter that counts the number of a certain character in a text file. The function takes two input arguments, fname, a char vector of the filename and
%character, the char it counts in the file. The function returns charnum, the number of characters found. If the file is not found or character is not a valid char, the function return
%-1. As an example, consider the following run. The file "simple.txt" contains a single line: "This file should have exactly three a-s..."
%charnum = char_counter('simple.txt','a')
%charnum =
% 3
% The files are uploaded seperately.
%}

function charnum = char_counter (file_name,charc)
charnum = 0;
fid  = fopen(file_name,'rt');
if (fid < 0 || (~ischar(charc)))
    charnum=-1;
    return
end
 
oneline = fgets(fid);

while(ischar(oneline))
    
    for i = 1:length(oneline)
        if (oneline(i) == charc)
           charnum = charnum+1; 
        end
    end
    oneline = fgets(fid);
end

fclose(fid);
end
