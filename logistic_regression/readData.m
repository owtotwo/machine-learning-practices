function [X, y] = readData(file_addr)
% read the data in normal form.
	data = load(file_addr);
	X = data(:, [1 : end - 1]);
	y = data(:, end);
end