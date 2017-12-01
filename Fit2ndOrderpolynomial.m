%% Fit2ndOrderpolynomial

clc
close all
clearvars

x = -200:200;

y = -3.7*power(x,2) + 57.3*x - 18.2 + 5*sin(x);

p = polyfit(x,y,2)

y1 = p(1,1)*power(x,2) + p(1,2)*power(x,1) + p(1,3)*power(x,0);

yDiff = y1 - y;
figure,subplot 221,plot(x,yDiff),subplot 222, plot(x,y),subplot 223, plot(x,y1);
max(yDiff),min(yDiff)

disp('********* Game Over ***********');
