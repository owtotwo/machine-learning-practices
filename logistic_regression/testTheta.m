function [corrected_rate] = testTheta(X, y, theta)
% function TestTheta could give you the corrected rate.
	total = length(y);

	% add ones
	if length(find(X(:, 1) == 1)) ~= total
		X = [ones(size(X, 1), 1), X];
	end

	ans_tmp = predict(X, theta);
	corrected_num = length(find(ans_tmp == y))
	corrected_rate = corrected_num / total * 100;
	fprintf('Corrected Rate is %.2f%%\n', corrected_rate);
end
