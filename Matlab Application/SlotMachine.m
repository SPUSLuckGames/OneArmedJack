function [output]=SlotMachine(N)
%%
% This script sets the "physichal" wheel and its weights
% TODO
% There should be another vector containing the names and images of other
% colors
% I should add another arg to determine which kind of wheels are used

output=0;
W=7; % numbers of wins and the last one is loss

% set to zero
wins=zeros(1,W);

% matrix of N combinations with numbers 1-128, including
rounds=round(rand(N,3)*127+1);

%sets the outcomes of rounds->maps numbers from 1-128 to the physical wheel
[~,rounds]=arrayfun(@(x) isIn(x), rounds,'UniformOutput',false);


rounds=cell2mat(rounds);

%counts the number of each outcome
for ii=1:N
    w=win(rounds(ii,:));
    wins(w)=wins(w)+1;
end

figure;
hold on;
% colors neccessary for drawing
% different from the one in isIn because it doesn't have white color as the
% first one
colors=[
    1 0 0 %Red
    1 1 0 %Yellow
    0 1 0 %Green
    0 1 1 %Cyan
    0 0 1 %Blue
    1 0 1 %Purple
    ];

% displays the bar with winnings
for ii=1:6
    bar(ii,wins(ii),'FaceColor',colors(ii,:));
end
title('Raspored ucestalosti dobitaka');
disp(strcat('Broj gubitnièkih ishoda je : ',mat2str(wins(7))));
output=wins;