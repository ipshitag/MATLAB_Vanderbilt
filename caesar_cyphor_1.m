%{Caesar's cypher is the simplest encryption algorithm.
It adds a fixed value to the ASCII (unicode) value of each character of a text.
In other words, it shifts the characters.
Decrypting a text is simply shifting it back by the same amount, that is, it substract the same value from the characters.
Write a function called caesar that accepts two arguments: the first is the character vector to be encrypted, 
%while the second is the shift amount.
The function returns the output argument coded, the encrypted text.
The function needs to work with all the visible ASCII characters from space to ~.
The ASCII codes of these are 32 through 126. If the shifted code goes outside of this range,
it should wrap around. For example, if we shift ~ by 1, the result should be space. If we shift space by -1, the result should be ~. 
}

function coded = caesar(char_vec,shift_amount)
char_value = char_vec+shift_amount;
for ii = 1:length(char_value)
    if char_value>126
        coded = char(char_value-95);
    elseif char_value<32
        coded = char(char_value+95);
    else
        coded = char(char_value);
    end
end
end
