function [ret_ans] = predict (X, theta)
% Function Predict could predict the class for some feature X ...
% in a specialized value of theta.
	% ret_ans = round(sigmoid(X * theta));
	ret_ans = ((X * theta) >= 0);
end