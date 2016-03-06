function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters, lambda = 0)
% function GrandientDescent could find the value of theta 
% which can get the minimum value of X * theta

	m = length(y); % number of training examples
	J_history = zeros(num_iters, 1);

	for iter = 1 : num_iters
	    % theta = theta - (alpha / m .* sum(repmat(sigmoid(X * theta) - y, 1, size(theta)) .* X, 1)');
	    theta = theta - alpha * grad_func(X, y, theta, lambda);

		J_history(iter) = computeCost(X, y, theta, lambda);
	end
	
end