function theta = normalEquation (X, y)
% function NormalEqualtion could find the theta by the normal equation.
% It's recommanded that use this function to find the value of theta when data is big-scale.
	theta = pinv(X' * X) * (X' * y);

end
