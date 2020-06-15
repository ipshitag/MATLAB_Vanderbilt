%{A sparse matrix is a large matrix with almost all elements of the same value (typically zero). The normal representation of a sparse matrix takes up lots of memory
%information can be captured with much less. A possible way to represent a sparse matrix is with a cell vector whose first element is a 2-element vector representin
%sparse matrix. The second element is a scalar specifying the default value of the sparse matrix. Each successive element of the cell vector is a 3-element vector r
%element of the sparse matrix that has a value other than the default. The three elements are the row index, the column index and the actual value. Write a function
%sparse2matrix that takes a single input of a cell vector as defined above and returns the output argument called matrix, the matrix in its traditional form. Conside
%run:
%cellvec = {[2 3], 0, [1 2 3], [2 2 -3]};
%matrix = sparse2matrix(cellvec)
%matrix =
% 0 3 0
% 0 -3 0
%}


function matrix = sparse2matrix (cellvec)
 
    matrix = ones(cellvec{1,1}(1,1),cellvec{1,1}(1,2));
    matrix = matrix * cellvec{1,2}(1,1);
    
    for i = 3:numel(cellvec)
        matrix(cellvec{1,i}(1,1),cellvec{1,i}(1,2)) = cellvec{1,i}(1,3);
    end
    
end
