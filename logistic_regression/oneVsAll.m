fprintf('======== One VS All =======\n');

clc; close all; clear;

fprintf('loading data...\n');
%[X, y] = readData('adult.data');
load('iris.mat');

fprintf('loading over!\nfinding theta...\n');
fprintf('press any key to continue...\n'); pause;

lambda = 0;

% default by gradient descent method
[all_theta, labels] = findMultiClassTheta(X, y, lambda, 0);

save theta_log.mat;

disp('[gradient descent] :\n');
disp(all_theta);

testMultiTheta(X, y, all_theta, labels);

fprintf('press any key to over...\n'); pause;

clc; close all; clear;
