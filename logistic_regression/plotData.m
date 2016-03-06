function plotData(X, y)
% plot the datas

	neg = find(y == 0); pos = find(y == 1);
	X_true = X(pos, :); X_false = X(neg, :);

	plot(X_true(:, 1), X_true(:, 2), 'ro', X_false(:, 1), X_false(:, 2), 'bs');
	xlabel('x value'); ylabel('y value');
	legend('True', 'False');

end