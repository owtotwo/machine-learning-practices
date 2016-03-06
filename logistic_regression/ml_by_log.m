function ml_by_log(file, lambda = 0, mode = 0)
% machine learning by logistic regression
    fprintf('loading data...\n');
    [X, y] = readData(file);
  
    fprintf('loading over!\nfinding theta...\n');
    [all_theta, labels] = findMultiClassTheta(X, y, lambda, 0);
    save theta_log.mat;

    testMultiTheta(X, y, all_theta, labels);
    fprintf('press any key to over...\n'); pause;
    
endfunction
