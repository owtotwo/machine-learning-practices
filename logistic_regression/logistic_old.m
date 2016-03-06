% Logistic Regression

fprintf('========== Logistic Regression =========\n');

clc; close all; clear;

fprintf('loding data...\n');
data = load('horseColicTraining.txt');

X = data(:, [1 : end - 1]);
y = data(:, end);

% -----------------------------------------------
% logistic regression

[m, n] = size(X);
X = [ones(m, 1), X];

%{ gradient descent method
init_theta = zeros(n + 1, 1);
iterations = 3000;
alpha = 0.2;
[theta, J_history] = gradientDescent(X, y, init_theta, alpha, iterations);

plot([1 : iterations], J_history);
fprintf('theta is : \n');
disp(theta);
%}


% inv the sigmoid
y_tmp = y;
y_tmp(find(y_tmp == 1)) = 13;	% set True to 13 (sigmoid(13) = 1)
y_tmp(find(y_tmp == 0)) = -13;	% set False to -13 (sigmoid(-13) == 0)
% normal equation method
theta = normalEquation(X, y_tmp);
fprintf('theta is : \n');
disp(theta);

fprintf('press any key to continue...\n');
pause;


if n == 3
	plotDecisionBoundary(X, y, theta);

	fprintf('press any key to continue...\n');
	pause;
	plotData(X(:, [2:3]), y);
	hold on;
	plot(X(:, 2), X * theta, 'yo');
	hold off;

	fprintf('press any key to over...\n');
	pause;
end


test_data = load('horseColicTest.txt');
X = test_data(:, [1 : end - 1]);
y = test_data(:, end);
[m, n] = size(X);
X = [ones(m, 1), X];
testTheta(X, y, theta);

fprintf('press any key to over...\n');
pause;

clc; close all; clear;