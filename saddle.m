%{Write a function called saddle that finds saddle points in the input matrix M. For the purposes of this problem, a saddle point is defined as an element whose value is greater than
%or equal to every element in its row, and less than or equal to every element in its column. Note that there may be more than one saddle point in M. Return a matrix called indices
%that has exactly two columns. Each row of indices corresponds to one saddle point with the first element of the row containing the row index of the saddle point and the second
%element containing the column index. If there is no saddle point in M, then indices is the empty array}

function indices = saddle(M)

indices = [];
[row,col] = size(M);

for i = 1:row
    for j = 1:col
        if M(i,j) >= max(M(i,:)) && M(i,j) <= min(M(:,j)) && isempty(indices) == 1
            indices = [i,j];
        elseif M(i,j) >= max(M(i,:)) && M(i,j) <= min(M(:,j))
            indices = [indices;i j];
        end
    end
end
end
