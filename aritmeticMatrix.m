%{Given a Matrix A, 

Create a row vector of 1's that has same number of elements as A has rows. 
Create a column vector of 1's that has the the same number of column as A " 
Using matrix multiplication, assign the product of the row vector, matrix A, and the column vector (in this order) to the variable result 

link about what the result represents...}

A = [1:5; 6:10; 11:15; 16:20];
rowVec = [1 1 1 1];
colVec = [1;1;1;1;1];

result = rowVec * A * colVec


%{The result is the sum of all the elements}
