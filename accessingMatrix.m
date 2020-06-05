% 
{
assign 2nd column to v
then, change the bottom row to 0
}

A = [1:5; 6:10; 11:15; 16:20];
v = A([1:4],2)
A(4,[1:5]) = 0
