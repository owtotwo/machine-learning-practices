function theta = findLogisticTheta(X, y, lambda = 0, mode = 0)
% function FindTheta could find the theta for X and y.
% X is not added ones(size(X, 1), 1).
% mode 0 means it will find by gradient descent, and mode 1 is normal equation.
	[m, n] = size(X);
	X = [ones(m, 1), X];
	
  
  if mode != 1  % default by 0
		disp('here will be gradientDescent()...\n');
		% gradient descent
		init_theta = zeros(n + 1, 1);
		iterations = 100;
		alpha = 2.3;
		% [theta, J_history] = gradientDescent(X, y, init_theta, alpha, iterations, lambda);
		% plot([1 : iterations], J_history);
		options = optimset('GradObj', 'on', 'MaxIter', 400);
		[theta, J, exit_flag] = fminunc(@(t)(computeCost(X, y, t, lambda)), init_theta, options);
		
	else
		disp('here will be normalEquation()...\n');
		% normal equation
		% inv the sigmoid
		y_tmp = zeros(length(y), 1);
		y_tmp(find(y == 1)) = 13;	% set True to 13 (sigmoid(13) = 1)
		y_tmp(find(y == 0)) = -13;	% set False to -13 (sigmoid(-13) == 0)
		theta = normalEquation(X, y_tmp, lambda);

	end
	
end