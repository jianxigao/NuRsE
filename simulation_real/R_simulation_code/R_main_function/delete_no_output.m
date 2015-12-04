function A = delete_no_output(A)
%   delete_no_output deletes all the nodes have no output
%
%   A = delete_no_output(A)
%
%   Inputs:
%       A : Adjacency matrix of the original network
%
%   Outputs:
%       A : Adjacency matrix of the network after deletion 
%
%   See also delete_no_input 

%   NuRsEv1.0
%   $Id: delete_no_output.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


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