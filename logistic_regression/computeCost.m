function [J, grad] = computeCost(X, y, theta, lambda = 0)
% function ComputeCost can compute the cost of a specialized value of theta

	m = length(y);

	% J = -1 / m * sum(y .* log(sigmoid(X * theta)) + (1 - y) .* log(1 - sigmoid(X * theta)));
	% grad = 1 / m .* sum(repmat(sigmoid(X * theta) - y, 1, size(theta)) .* X, 1)';

	J = (-1 / m * sum(y .* log(sigmoid(X * theta)) + (1 - y) .* log(1 - sigmoid(X * theta)))) ...
    	+ (lambda / (2 * m) * sum(theta(2:length(theta)).^2));

	grad = grad_func(X, y, theta, lambda);

end
