%{a function picker that takes 3 arguments, condition,in1 and in2 and returns a value out if condition is true, it returns in1 else in2}

function out = picker(condition,in1,in2)
if condition
    out = in1;
else
    out = in2;
end 
