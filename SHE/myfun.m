function F = myfun(theta)
% select coefficient of harmonic to eliminate in n vector
n = [3 5 7];

%uncomment Main_voltage if length of "n" is 2
%main_voltage = 69;

if (length(n)<3)
   F = [4/(n(1)*pi)*(cos(n(1)*theta(1))-cos(n(1)*theta(2))+cos(n(1)*theta(3)))
    4/(n(2)*pi)*(cos(n(2)*theta(1))-cos(n(2)*theta(2))+cos(n(2)*theta(3)))];
   % 4/pi*(cos(theta(1))-cos(theta(2))+cos(theta(3)))- main_voltage];
else
   F= [4/(n(1)*pi)*(cos(n(1)*theta(1))-cos(n(1)*theta(2))+cos(n(1)*theta(3)))
    4/(n(2)*pi)*(cos(n(2)*theta(1))-cos(n(2)*theta(2))+cos(n(2)*theta(3)))
    4/(n(3)*pi)*(cos(n(3)*theta(1))-cos(n(3)*theta(2))+cos(n(3)*theta(3)))];
end
end