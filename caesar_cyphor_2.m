function coded = caesar(M, n)
num = double(M);                        %Converts string into double
num2 = num;
N = n - 95 * fix(n/95);
for i = 1:length(num);  
    if  num(i) + N < 32                 %If ASCII value goes below 32
        num2(i) = 126 - (31- num(i) - N);
    elseif num(i) + N > 126             %If ASCII value goes beyond 126
        num2(i) = 32 + (num(i) + N -127);
    else 
        num2(i) = num(i) + N ;          %If ASCII value goes normal
    end
coded = char(num2);
end
