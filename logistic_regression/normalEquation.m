function theta = normalEquation (X, y, lambda = 0)
% function NormalEqualtion could find the theta by the normal equation.
% It's recommanded that use this function to find the value of theta when data is big-scale.
	aux_matrix = eye(size(X, 2));
	aux_matrix(1, 1) = 0;
	theta = pinv(X' * X + lambda * aux_matrix) * (X' * y);

end
