function [retgrad] = grad_func(X, y, theta, lambda = 0)
% function compute grad value
	m = length(y); 
	retgrad = (1 / m .* sum(repmat(sigmoid(X * theta) - y, 1, size(theta)) .* X, 1)') ...
    	+ lambda / m * [0; theta(2:length(theta))];
end