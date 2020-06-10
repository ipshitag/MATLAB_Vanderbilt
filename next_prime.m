%Receives an input and returns the next smallest prime number

function k = next_prime(n)
prime_true = 0;
    while(~prime_true)
        n = n+1;
        prime_true = isprime(n);
            if (prime_true)
                k = n;
                return
            end
    end 
    
end
