function A = generate_samew_SFk(lambda_k,meank,n,aij)
%   generate_samew_SFk generates undirected Scale-Free 
%   networks with uniform weight
%
%   A = generate_samew_SFk(lambda_k,meank,n,aij)
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
%   See also generate_ER, generate_ERk_SFw, generate_SFw_SFk, ect. 

%   NuRsEv1.0
%   $Id: generate_samew_SFk.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


A = zeros(n,n);
A = sparse(A);
alpha = 1/(lambda_k-1);
a = 1:n;
w = a.^(-alpha);
Sum_w = sum(w);
w = w/Sum_w;
all = randperm(n);
w=w(all);
for i=1:n
    Cum_w(i) = sum(w(1:i));
end
E = meank*n/2;

edge = 0;
num = 0;
while (edge < E) 
    ran1 = rand;
    ran2 = rand;
    i = BisectionSearch(Cum_w, ran1);
    j = BisectionSearch(Cum_w, ran2);
    if (A(i,j) ==0 && i~=j)
        num = num+1;
        A(i,j) = aij; A(j,i) = aij;
        edge = edge+1;
    end
end
