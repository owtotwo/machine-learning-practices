function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
% function GrandientDescent could find the value of theta 
% which can get the minimum value of X * theta
	m = length(y); % number of training examples
	J_history = zeros(num_iters, 1);

	for iter = 1 : num_iters
	    theta = theta - (sum(repmat(X * theta - y, 1, size(X, 2)) .* X, 1) * alpha / m)';
		J_history(iter) = computeCost(X, y, theta);
	end

end