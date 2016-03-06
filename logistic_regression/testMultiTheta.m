function [corrected_rate] = testMultiTheta(X, y, all_theta, labels)
% function TestTheta could give you the corrected rate.
	total = length(y);

	% add ones
	if length(find(X(:, 1) == 1)) ~= total
		X = [ones(size(X, 1), 1), X];
	end

	ans_tmp = multiPredict(X, all_theta, labels);
	corrected_num = length(find(ans_tmp == y));
	corrected_rate = corrected_num / total * 100;
	fprintf('Corrected Rate is %.2f%% (%.0f / %.0f)\n', corrected_rate, corrected_num, total);
end