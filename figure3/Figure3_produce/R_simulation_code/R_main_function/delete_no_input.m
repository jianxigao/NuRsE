function A = delete_no_input(A)
%   delete_no_input deletes all the nodes have no input
%
%   A = delete_no_input(A)
%
%   Inputs:
%       A : Adjacency matrix of the original network
%
%   Outputs:
%       A : Adjacency matrix of the network after deletion 
%
%   See also delete_no_output 

%   NuRsEv1.0
%   $Id: delete_no_input.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

A = A';
lA = length(A);
while (1 && lA>0)
    d = sum(A);
    notin = find(d==0);
    A(notin,:) = [];
    A(:,notin) = [];
    lA0 = length(A);
    if lA0 == lA
        break
    else
        lA = lA0;
    end
end  
A = A';
