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






%% using Least square matrix method
% 1st step, create LS matrix
% input, vector x, vector y, order of polynomial
% output, LS matrix
order = 2;
leastSquareMatrix  = zeros(order + 1,order + 1);
for i=1:size(x,1)
   for r=1:order+1
      for c=1:order+1
          leastSquareMatrix(r,c) = leastSquareMatrix(r,c) ...
          + power(x(i),(r+c));
      end
      leastSquareMatrix(r, order + 1) = leastSquareMatrix(r,c) + x(i) ...
          * power(y(i), r);
   end   
end

bestFitMatrix = leastSquareMatrix

% Solve Linear Equation
% input is bestFitMatrix

bestFitMatrix_rowCnt = size(bestFitMatrix,1);
if bestFitMatrix_rowCnt*(bestFitMatrix_rowCnt + 1) != length()
    
end










disp('********* Game Over ***********');
