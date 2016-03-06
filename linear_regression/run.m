% show the sigmoid curve


clear; close all; clc;

fprintf('This is my first machine learning program.\n');

data = load('ex0.txt');

% ------------------------------------------------
% display
fprintf('Plot the data...\n');
x_p = data(:, 2);
y_p = data(:, 3);
plotDataByPoint(x_p, y_p);
fprintf('press any key to continue...\n');
pause;


% ------------------------------------------------
% gradient descent (get the value of theta)
fprintf('gradient descent...\n');
X = data(:, [1 : end - 1]);
y = data(:, end);

X = [X(:, 1), featureNormalize(X(:, [2 : end]))];
X = [X, sin(4.75 * (2 * pi) .* X(:, 2))];

m = length(y);
init_theta = zeros(size(X, 2), 1);
iterations = 1500;
alpha = 0.01;

[theta, J_history] = gradientDescent(X, y, init_theta, alpha, iterations);
plot([1:iterations], J_history);
xlabel('iterations');
ylabel('J');
fprintf('press any key to continue...\n');
pause;

J_cost = sum((X * theta - y).^2);
fprintf('The cost is : %f\n', J_cost);


fprintf('theta is :\n');
disp(theta);
fprintf('Normal Equation : \n');
theta = normalEquation(X, y);
disp(theta);
fprintf('press any key to continue...\n');
pause;

% ------------------------------------------------
% print the regression curve.
fprintf('print the regression curve...\n');
plotDataByPoint(x_p, y_p);
hold on;
plot(x_p, X * theta, 'r.');
hold off;
fprintf('press any key to continue...\n');
pause;

% ------------------------------------------------
% clean up
clear; close all; clc;