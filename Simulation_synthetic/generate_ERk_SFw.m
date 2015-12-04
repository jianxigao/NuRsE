function A = generate_ERk_SFw(meank,n,aij,lambda_w)
%   generate_ERk_SFw generates undirected ER 
%   networks with heterogeneous weight
%
%   A = generate_ERk_SFw(meank,n,aij,lambda_w)
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
%   See also generate_ER, generate_samew_SFk, generate_SFw_SFk, ect. 

%   NuRsEv1.0
%   $Id: generate_ERk_SFw.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

% calculte the weight for all the links
alpha = 1/(lambda_w-1);
d = (1:2/meank:n+1).^(-alpha);
d = d*aij/mean(d);
all = randperm(length(d));
d = d(all);

link = fix(meank*n/2);
A = zeros(n);
A = sparse(A);
num = 0;
while 1 % produce the network
    i = fix(rand*n)+1;
    j = fix(rand*n)+1;
    if (A(i,j)==0 && i~=j)
        num = num+1;
        A(i,j) = d(num);
        A(j,i) = d(num);
        link=link-1;
    end
    if link==0
        break;
    end
end


