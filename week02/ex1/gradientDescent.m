function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);


for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    hypo = theta'*X';
    const = alpha/m;
    %some1 = const*((hypo-y')*X(:,1));  % must be 2x1
    %some2 = const*((hypo-y')*X(:,2));
    some = const*(hypo-y')*X;
    %temp_theta(1) = theta(1) - some1;
    %temp_theta(2) = theta(2) - some2;
    temp_theta = theta-some';
    theta = temp_theta;
    %theta(1) = temp_theta(1);
    %theta(2) = temp_theta(2);




    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end
