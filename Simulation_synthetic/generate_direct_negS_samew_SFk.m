function A = generate_direct_negS_samew_SFk(lambda_k,meank,n,aij)
%   generate_direct_negS_samew_SFk generates directed Scale-Free 
%   networks with negative in- out-degree correlations
%
%   A = generate_direct_negS_samew_SFk(lambda_k,meank,n,aij)
%
%   Inputs:
%       lambda_k : % Degree exponent of Scale-free networks
%       meank : Average degree of ER networks
%       n : number of nodes in the network
%       aij : weight of each link
%
%   Outputs:
%       A : Adjacency matrix of the network
%
%   See also generate_ERk_SFw, generate_samew_SFk, generate_SFw_SFk, ect. 

%   NuRsEv1.0
%   $Id: generate_direct_negS_samew_SFk.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

A = zeros(n,n);
A = sparse(A); % Define a sparse all zeor matrix 
alpha = 1/(lambda_k-1);
a = 1:n;
w_in = a.^(-alpha);
Sum_w_in = sum(w_in);
w_in = w_in/Sum_w_in;
w_out = w_in(n:-1:1); % negative in- out- degree correlations
for i=1:n % the probability to form a link
    Cum_w_in(i) = sum(w_in(1:i));
    Cum_w_out(i) = sum(w_out(1:i));
end
E = meank*n; % number of links

edge = 0;
num = 0;
while (edge < E) % producing the network
    ran1 = rand;
    ran2 = rand;
    i = BisectionSearch(Cum_w_in, ran1);
    j = BisectionSearch(Cum_w_out, ran2);
    if (A(i,j) ==0 && i~=j)
        num = num+1;
        A(i,j) = aij; 
        edge = edge+1;
    end
end

