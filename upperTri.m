% Takes a matrix and returns the sum of upper triangle of the matrix

function total = halfsum(A)
    number_of_rows = size(A,1);
    number_of_col = size(A,2);
    
    if number_of_rows ~= number_of_col
        error("Please give a square matrix!")
        return
    end  
    
    r=1;
    c=1;
    total = 0;
    for r = 1:number_of_rows
        for c = 1:number_of_col
            if(r==c)
                for t = r:number_of_col
                    total = total + A(r,t);
                end
            end
        end
    end   
end
