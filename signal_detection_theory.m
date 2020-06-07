%Signal Detection Theory, Mingshuang Li, UT, 05/13/2020
clear;
%Input the proportions of hits and false alarms
proportion_of_hits = input('Please input hits proportion in decimals: ');
proportion_of_false_alarms = input('Please input false alarm proportionin decimals: ');

% Convert to Z scores 
     zHit = norminv(proportion_of_hits) ;
     zFA = norminv(proportion_of_false_alarms) ; 
% Calculate d-prime 
     dPrime = zHit - zFA ;
% Calculate BETA 
     beta = exp((zFA^2 - zHit^2)/2); 
% Calculate C 
     C = -.5 * (zHit + zFA);
     
% Output the values of d', beta (criterion standard) and C(bias)
dprime_output = ['The d_prime value is ',num2str(dPrime)];
disp(dprime_output);
beta_output = ['The beta(criterion standard) value is ',num2str(beta)];
disp(beta_output);
C_output = ['The C(bias) value is ',num2str(C)];
disp(C_output);