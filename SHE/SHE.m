% select apropriate period
T = 1; 

% view myfun file to set harmonic to eliminate

% set initial values for theta in radian
theta_0 = [.5 .5 .5];
theta = fsolve(@myfun,theta_0);


theta_1 = theta(1)*180/pi;
theta_2 = theta(2)*180/pi;
theta_3 = theta(3)*180/pi;



period  = T;

puls_w_p_1 = ((theta_2 - theta_1)*T)/3.6;
delay_p_p_1 = theta_1 * T / 360;

puls_w_p_2 = 2*((90 - theta_3)*T)/3.6;
delay_p_p_2 = theta_3 * T / 360;

puls_w_p_3 = ((theta_2 - theta_1)*T)/3.6;
delay_p_p_3 = ((180 - theta_2) * T) / 360;



puls_w_n_1 = ((theta_2 - theta_1)*T)/3.6;
delay_p_n_1 = (theta_1 * T )/ 360 + T/2;

puls_w_n_2 = 2*((90 - theta_3)*T)/3.6;
delay_p_n_2 = (theta_3 * T) / 360 + T/2;

puls_w_n_3 = ((theta_2 - theta_1)*T)/3.6;
delay_p_n_3 = ((180 - theta_2) * T) / 360 + T/2;


