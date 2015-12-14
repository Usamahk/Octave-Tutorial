function J = costFunctionJ(X, y, theta)

% X is "design matrix" containing all the training examples
% y is class labels

m = size(X,1); 						% number of training examples
predictions = X*theta; 				% predictions of hypothesis on all training examples
sqrErrors = (predictions - y).^2; 	% squared errors

J = 1/(2*m) * sum(sqrErrors);