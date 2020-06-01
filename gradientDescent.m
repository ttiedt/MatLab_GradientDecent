% Tyler Tiedt
% 4/25/18
% CPSC 427
% gradientDescent.m

% This function takes in vectors of sample data and make a
% best fit line for the data by preforming gradient .
function [output] = gradientDescent(x, y, theta, alpha, num_iterations)

% size of sample
M = length(y)
% theta = theta - slope
for iter = 0 : num_iterations
  theta = theta - ((alpha/M)*(x.' * ((x * (theta))-y)));
end

% outputs theta
output = theta;
end