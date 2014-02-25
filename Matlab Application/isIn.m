function [ color,out ] = isIn( in )
%This function maps the number to the symbol on the physical wheel
% the all wheels are equally weighted

out=1;
%checks and returns a number of set on a "physichal" wheel to which a number on a virtual wheel corresponds
%EDIT : Instead of a number returns the color corresponding to the number

% Blank - Crvena + Zelena + Plava = Bijelo 
% Cherry - Crvena 
% Bar - Zelena 
% Double Bar - Crvena + Zelena = Žuto 
% Triple Bar - Zelena + Plava = Tirkizna (Svjetlo plava)
% Red 7 - Crvena + Plava = Ljubièasta 
% Jackpot - Plava

% the color corresponds to the facecolor property of a rectangle object
% it has to be in the given format [R G B] where R,G,B is Red, Green, Blue
% respectively 
% each of the colors must be a number between 0 and 1, boundaries are
% included

colors=[
    1 1 1 %White
    1 0 0 %Red
    1 1 0 %Yellow
    0 1 0 %Green
    0 1 1 %Cyan
    0 0 1 %Blue
    1 0 1 %Purple
    ];

% The real wheel is below which is used for generating colors and winning
% combinations

c=zeros(7,70);
c1=[1:3 15:19 27:36 41:50 57:59 65:67 74:76 81:95 99:113 118:120];
c2=[20:26 121:128];c2=[c2 zeros(1,length(c1)-length(c2))];
c3=[60:64];c3=[c3 zeros(1,length(c1)-length(c3))];
c4=[51:56 114:117];c4=[c4 zeros(1,length(c1)-length(c4))];
c5=[96:98];c5=[c5 zeros(1,length(c1)-length(c5))];
c6=[4:14 68:73];c6=[c6 zeros(1,length(c1)-length(c6))];
c7=[37:40 77:80];c7=[c7 zeros(1,length(c1)-length(c7))];
c=[c1;c2;c3;c4;c5;c6;c7];
clear c1 c2 c3 c4 c5 c6 c7;

%sets the color of the combination
for ii=1:7
    if (ismember(in,c(ii,:)))
        color=colors(ii,:);
        out=ii;
        return;
    end
end

end



