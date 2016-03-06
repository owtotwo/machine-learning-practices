function J = computeCost(X, y, theta)
% compute the cost value
    m = length(y);
    % distance_func = @(_x) (_x' * _x);
    % J = distance_func(X * theta - y) / (2 * m);
    J = sum((X * theta - y).^2) / (2 * m);
end