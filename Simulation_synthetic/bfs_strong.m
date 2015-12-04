function vis = bfs_strong(A,c)
%   bfs_strong searches the set of nodes can reach and can be reached by
%   node c using Breadth first search
%
%   vis = bfs_strong(A,c)
%
%   Inputs:
%       A : Adjacency matrix of the network
%       c : the node
%
%   Outputs:
%       vis : the set of nodes can reach and can be reached by node c 
%
%   See also bfs. 

%   NuRsEv1.0
%   $Id: bfs_strong.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

vis = c;
new = c;
while 1
    if isempty(new)
        break;
    else
        tem = [];
        for i = 1:length(new)
            if new(i) < length(A)
                tem0 = find(A(new(i),:) ~= 0);
                tem = union(tem,tem0);
            end
        end
        new = setdiff(tem,vis);
        vis = union(vis,tem);
    end
end
vis1 = vis;
vis = c;
new = c;
while 1
    if isempty(new)
        break;
    else
        tem = [];
        for i = 1:length(new)
            if new(i) < length(A)
                tem0 = find(A(:,new(i)) ~= 0);
                tem = union(tem,tem0);
            end
        end
        new = setdiff(tem,vis);
        vis = union(vis,tem);
    end
end
vis = intersect(vis,vis1);