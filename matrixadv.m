%{
takes a matrix (n*m), and converts in (3*n,m) matrix returns 1st 1/3rd part into 1, 2nd 1/3rd part into 2 and 3rd 1/3rd part into 3 
     1     1     1     1
     1     1     1     1
     2     2     2     2
     2     2     2     2
     3     3     3     3
     3     3     3     3
 }    
     

function M = trio(n,m)
    M = ones(3*n,m);
    M(1:n,:) = 1;
    M(n+1:(2*n),:) = 2;
    M((2*n)+1:3*n,:) = 3; 
end
