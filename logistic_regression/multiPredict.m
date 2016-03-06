function [label] = multiPredict(X, all_theta, labels)
% function MultiPredict could predict for multiple classes.
	
	if length(find(X(:, 1) == 1)) ~= size(X, 1)
		X = [ones(size(X, 1), 1), X];
	end

	result = sigmoid(X * all_theta);
	max_result = max(result, [], 2);
	label = zeros(length(max_result), 1);

	for item = 1 : length(max_result)
		label(item) = labels(find(result(item, :) == max_result(item)));
	end
	
end