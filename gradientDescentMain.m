% Tyler Tiedt
% 4/25/18
% CPSC 427
% Assignment 9

% Reads from the csv file
% Stores it in a vector
x = csvread('data.csv');
% Stores the just first column in the vector
x = x(:,1);
% 100 x 1 vector with the value of 1
n = ones(100,1);
% Appends the two vectors with the values in the 
% first column being 1 and the second being x
x = [n,x];
% Reads the second column for a csv and stores 
% it in a vector
y = csvread('data.csv',0,1);

% Check to see if matrix's can be multiplied
numCol = 1;
numRow = 2;
theta_Vec = zeros(numRow, numCol);
disp('size of x vector: ');disp(size(x));
disp('size of theta vector: ');disp(size(theta_Vec));
z = x * (theta_Vec);
disp('size of z vector: '); disp(size(z));
disp('size of y vector: '); disp(size(y));
disp('size of z-y:');disp(size(z-y));
disp('size of x^t:');disp(size(x.'));

% Learning rate and iterations
alpha = .0001;
iterations = 1000;
% Call for gradientDescent function
theta_Vec = gradientDescent(x,y,theta_Vec,alpha,iterations);

% displays output
disp('theta');disp(theta_Vec);
% sets the x vector back to 100x1
x = csvread('data.csv');
x = x(:,1);
% Plots the data points
scatter(x,y,'filled')
hold on
% Slope and y intercepts
slope = theta_Vec(2)
b = theta_Vec(1)
% y = mx+b
f = @(var) slope*var + b;
% plots best fit line on scatter plot
fplot(f,[0,80]);
legend('hide');
