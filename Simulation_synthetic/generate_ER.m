function A = generate_ER(meank,n,aij)
%   generate_ER generates a ER network with uniform weight.
%
%   A = generate_ER(meank,n,aij)
%
%   Inputs:
%       meank : Average degree of ER networks
%       n : number of nodes in the network
%       aij : weight of each link
%
%   Outputs:
%       A : Adjacency matrix of the network
%
%   See also generate_ERk_SFw, generate_samew_SFk, generate_SFw_SFk, ect. 

%   NuRsEv1.0
%   $Id: generate_ER.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

link = fix(meank*n/2);
A = zeros(n);
A = sparse(A);
while 1
    i = fix(rand*n)+1;
    j = fix(rand*n)+1;
    if (A(i,j)==0 && i~=j)
        A(i,j) = aij;
        A(j,i) = aij;
        link=link-1;
    end
    if link==0
        break;
    end
end
