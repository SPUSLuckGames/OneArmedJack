function [ win_nm ] = win( c )
%WIN Calculates if the given combination is the winning one

win_nm=7; %one higher than the last win, this is a loss by default

% sorts the vector for easier manipulation
c=sort(c);

% checks to see if a given combination is a winning one
% checks if we have the same color in the row
if (c(1)==c(2) && c(2)==c(3))
    if (c(1)==2) %RED
        win_nm=1;
    elseif (c(1)==3) %YELLOW
        win_nm=2;
    elseif (c(1)==4) %GREEN
        win_nm=3;
    elseif (c(1)==5) %CYAN
        win_nm=4;
    elseif (c(1)==6) %BLUE
        win_nm=5;
    elseif (c(1)==7) %PURPLE
        win_nm=6;
    end
end

end

