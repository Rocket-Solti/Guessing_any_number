%% Question:



%% Lets play a guesing game with yes or no.You can guess any number from 1 to 100
% and ultimatey it reconizes the game and gives the number of guesses as
% well.
%% Parameters required for this Function are :
%set a upper limit as upper_limit
%set a lower limit as lower_limit
%mean is given by the mittel

clear ;         
close all;             
clc;                    
%% 
fprintf(' Hi, Welcome to the Game of Guess my Secret Number!\n')% It prints as the main title for Guessing Game
disp(' ') 
player = input('\nYour Name is : ','s'); % you can give your name here
fprintf('\nWelcome %s',player);% this greets  the user with name to play this game 
disp(' ');

%%
upper_limit = input('Give the upper limit: ');% give the upper limit for the number from 1 to 100
while upper_limit ~= round(upper_limit) || upper_limit <=0 %while loop till the lower limit is equal to upper limit
    upper_limit = input('My number');
end


%%
lower_limit = 1;% set the lower limit first as 1
Trial = 0;% first trial is set as zero
Mittel = ceil((upper_limit-lower_limit)/2);% make a mean from higher and lower
%% after this  we use the while loop unitl the lower limit is smaller or equal to upper limit
while  lower_limit< upper_limit
    
    user_ans = questdlg(sprintf('Is the number smaller  or equal to %d?',Mittel), 'ratespiel','Yes','No','Yes');%Ask the question is smaller or equal
    if strcmp(user_ans,'Yes')  %if yes is pressed                                                                                   % to the quesed number with yes and No option. 
        upper_limit =Mittel; % upper_limit is now changed to mean value
    elseif strcmp(user_ans,'No') % if no iss pressed
        lower_limit = Mittel;% than lower_limit is equal to mean value  
    else break % else it would break the loop
    end %end the if
        Mittel=round((upper_limit-lower_limit)/2)+ lower_limit; % Now the guess  is equal to lower_limt and mean of the the guessed 
       if Mittel== upper_limit % so that mittel is also equal to upper limit
           disp('Thats it') % thats when it guesssed your number
    break
       else 
       end  %end the  if
           
    Trial = Trial + 1; % no of trial 
end

fprintf('You guessed %d . It took you  %d triAL.\n', lower_limit+1, Trial);
% print the guessed number with number of trial


