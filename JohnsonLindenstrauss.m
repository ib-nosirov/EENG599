% Let v_1,...,v_n in R^D for some D. Let A in R^mxD be a random matrix
% whose entries are independent N(0,1/m) random variables. Then for any
% epsilon in (0,1), with probability at least 1- 1/n^2, the following
% holds:
% for all i neq j, (1-epsilon)||v_i - v_j||_2^2 <= ||Av_i - Av_j||_2^2 <=
% (1+epsilon)||v_i - v_j||_2^2
% provided m > 32 log n/epsilon^2

D = 80000;
m = 8000;
ep = 0.1;
% since m > 32 log n/epsilon^2, n < 22.7599
n = 10;
A = randn(m,D);
V = rand(n,D);

for ii=1:n-1
    %lower bound
    lowerBound = (1-ep)*norm(V(ii) - V(ii+1))^2
    % middle quantity
    middle = norm(A*V(ii) - A*V(ii+1))^2
    % upper bound
    upperBound = (1+ep)*norm(V(ii) - V(ii+1))^2
end