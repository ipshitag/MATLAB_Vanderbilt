%{A function to keep the corners of a matrix to different variables}

function [top_left,top_right,bottom_left,bottom_right] = corners (M)
top_left = M(1,1);
top_right = M(1,end);
bottom_left = M(end,1);
bottom_right = M(end,end);
end


%{calling part
%A = randi(100,4,5)
%[top_left, top_right, bottom_left, bottom_right] = corners(A)
%B = [1; 2]
%[top_left, top_right, bottom_left, bottom_right] = corners(B)
