fprintf('========== Logistic Regression =========\n');

clc; close all; clear;
fprintf('loading data...\n');
[X, y] = readData('adult.data');

fprintf('loading over!\nfinding theta...\n');

theta = findLogisticTheta(X, y);

fprintf('theta is : \n'); disp(theta);

fprintf('loading test data...\n');
[X, y] = readData('adultTest.data');
testTheta(X, y, theta);

fprintf('press any key to over...\n'); pause;

clc; close all; clear;