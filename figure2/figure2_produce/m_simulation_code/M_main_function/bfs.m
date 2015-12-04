function vis = bfs(A,c)
%   bfs searches the set of nodes can reach and can be reached by
%   node c using Breadth first search for undirected networks
%
%   vis = bfs(A,c)
%
%   Inputs:
%       A : Adjacency matrix of the network
%       c : the node
%
%   Outputs:
%       vis : the set of nodes can reach and can be reached by node c 
%
%   See also bfs_strong. 

%   NuRsEv1.0
%   $Id: bfs.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


vis = c;
new = c;
while 1
    if ~any(new)
        break;
    else
        tem = [];
        for i = 1:length(new)
            tem0 = find(A(new(i),:) ~= 0);
            tem = union(tem,tem0);
        end
        new = setdiff(tem,vis);
        vis = union(vis,tem);
    end
end
