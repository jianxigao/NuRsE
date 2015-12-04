function A = generate_SFw_SFk(lambda_k,lambda_w,meank,n,aij)
%   generate_SFw_SFk generates undirected Scale-Free 
%   networks with heterogeneous weight
%
%   A = generate_SFw_SFk(lambda_k,lambda_w,meank,n,aij)
%
%   Inputs:
%       lambda_k : % Degree exponent of Scale-free networks
%       lambda_w : % Weight exponent of all links
%       meank : Average degree of ER networks
%       n : number of nodes in the network
%       aij : Average weight of the links
%
%   Outputs:
%       A : Adjacency matrix of the network
%
%   See also generate_ER, generate_ERk_SFw, generate_samew_SFk, ect. 

%   NuRsEv1.0
%   $Id: generate_SFw_SFk.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


A = zeros(n,n);
A = sparse(A); % Define a sparse all zeor matrix 
alpha = 1/(lambda_k-1); 
a = 1:n;
w = a.^(-alpha);
Sum_w = sum(w);
w = w/Sum_w;
all = randperm(n);
w=w(all);
for i=1:n % the probability to form a link
    Cum_w(i) = sum(w(1:i));
end
E = meank*n/2;

alpha = 1/(lambda_w-1); 
d = (1:2/meank:n+1).^(-alpha);
d = d*aij/mean(d);
all = randperm(length(d));
d = d(all); % the weights for all links

edge = 0;
num = 0;
while (edge < E) % producing the network
    ran1 = rand;
    ran2 = rand;
    i = BisectionSearch(Cum_w, ran1);
    j = BisectionSearch(Cum_w, ran2);
    if (A(i,j) ==0 && i~=j)
        num = num+1;
        A(i,j) = d(num); A(j,i) = d(num);
        edge = edge+1;
    end
end
