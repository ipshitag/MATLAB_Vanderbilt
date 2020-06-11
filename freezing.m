% Write a function called freezing that takes a vector of numbers that correspond to daily low temperatures in
%temperatures (that is, lower than 32 F) without using loops. 
%Here is an example run:
%numfreeze = freezing([45 21 32 31 51 12])
%numfreeze = 3

function numfreeze = freezing (A)
    D = A(A<32);
    numfreeze = numel(D);
end    
