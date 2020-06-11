%Write a function called max_sum that takes v, a row vector of numbers, and n, 
%a positive integer as inputs. The function needs to find the n consecutive elements which is the largest possible. 
%In other words, if v is [1 2 3 4 5 4 3 2 1] and n is 3, it will find 4 5 and 4 because their such sequences exist in v, 
%max_sum returns the first one. The function returns summa, the sum as the first
%consecutive ones as the second output. If the input n is larger than the number of elements of v, the function
%And also, all the values in the vector can be negative




function [summa,index] = max_sum(V,n)
    i = 1;
    global totts;
    totts = 0;
    summa = 0;
    summa1 = -inf;
    index = -1;
    n = n-1;
    size_of_array = numel(V)-n;
    
    for j = 1:size_of_array
        
        for k = i:i+n
            totts = totts + V(k);
        end
        
        if(totts>summa1)
            summa1 = totts;
            index = k-n;
        end 
        
        totts = 0;
        i = i+1;
    end  
    
    if(summa1 ~= -inf)
        summa = summa1;
    end
end
