%{
a function named minimax that takes in a matrix 
and returns 2 arguments
x = difference of smallest and largest element from each row
y = difference of smallest and largest from the whole matrix
}%

function [x,y] = minimax(A)
B = A';
x = [max(B)-min(B)];
sml = min(B);
lrg = max(B);
y = max(lrg)-min(sml);
end
