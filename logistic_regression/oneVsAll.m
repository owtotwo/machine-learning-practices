fprintf('======== One VS All =======\n');

clc; close all; clear;

fprintf('loading data...\n');
%[X, y] = readData('adult.data');
load('ex3data1.mat');

fprintf('loading over!\nfinding theta...\n');
fprintf('press any key to continue...\n'); pause;

lambda = 0.01;

% default by gradient descent method
[all_theta, labels] = findMultiClassTheta(X, y, lambda, 0);

save theta_log.mat;

testMultiTheta(X, y, all_theta, labels);

fprintf('press any key to over...\n'); pause;


