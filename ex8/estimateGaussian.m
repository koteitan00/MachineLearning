function [mu sigma2] = estimateGaussian(X)
%ESTIMATEGAUSSIAN This function estimates the parameters of a 
%Gaussian distribution using the data in X
%   [mu sigma2] = estimateGaussian(X), 
%   The input X is the dataset with each n-dimensional data point in one row
%   The output is an n-dimensional vector mu, the mean of the data set
%   and the variances sigma^2, an n x 1 vector
% 

% Useful variables
[m, n] = size(X);

% You should return these values correctly
mu = zeros(n, 1);
sigma_now = zeros(n, 1);
sigma2 = zeros(n, 1);
route_sigma = zeros(n,1);
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the mean of the data and the variances
%               In particular, mu(i) should contain the mean of
%               the data for the i-th feature and sigma2(i)
%               should contain variance of the i-th feature.
%

mu(:,1)=sum(X)'./m;

sigma2 = sum((X-mu').*(X-mu'))'./m;

%for i = 1:m
 %   route_sigma(:,1) = X(i,:)' - mu(:,1);
  %  sigma_now(:,1) = route_sigma(:,1).*route_sigma(:,1);
   % sigma2(:,1) = sigma2(:,1) + sigma_now(:,1);
%end
%sigma2(:,1) = sigma2(:,1) ./ m;






% =============================================================


end
