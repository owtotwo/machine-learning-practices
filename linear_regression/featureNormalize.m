function [X_norm, mu, sigma] = featureNormalize(X)
% normalize the feature.
	mu = mean(X, 1);
	sigma = std(X, 1);
	% X_norm = (X - repmat(mu, size(X, 1), 1)) ./ repmat(sigma, size(X, 1), 1);
	min_value = min(X);
	max_value = max(X);
	X_norm = (X .- repmat(min_value, size(X, 1), 1)) ./ repmat(max_value - min_value, size(X, 1), 1);
end
