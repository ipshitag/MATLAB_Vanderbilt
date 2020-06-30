%Write a function called under_age that takes two positive integer scalar arguments:
%1. age that represents someone's age, and

%2. limit that represents an age limit.
%The function returns true if the person is younger than the age limit. If the second argument, limit, is not pro
%positive integer scalars. The name of the output argument is too_young.


function too_young = under_age(age,limit)
if(nargin==1)
    limit = 21;
end
if(age<limit)
    too_young = true;
else
    too_young = false;
end
end
