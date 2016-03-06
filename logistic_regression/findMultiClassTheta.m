% Multiclass Logistic Regression

function [all_theta, labels] = findMultiClassTheta(X, y, lambda = 0, mode = 0)
% function FindMultiClassTheta could find all the theta for multiple classes.
% mode 0 means it will find by gradient descent, and mode 1 is normal equation.
	[m, n] = size(X);
	labels = unique(y);
	labels_num = length(labels);
	all_theta = zeros(n + 1, labels_num);

	for item = 1 : labels_num
		label = labels(item);
		y_tmp = (y == label);
		all_theta(:, item) = findLogisticTheta(X, y_tmp, lambda, mode);
		fprintf('label:%f found!\n', label);
		fprintf('press any key to continue...\n'); pause;
	end

end