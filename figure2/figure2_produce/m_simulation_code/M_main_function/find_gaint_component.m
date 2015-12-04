function cluster = find_gaint_component(A)
%   find_gaint_component returns the set of nodes in the
%   giant connected component of undirected networks
%
%   cluster = find_gaint_component(A)
%
%   Inputs:
%       A : Adjacency matrix of the network
%
%   Outputs:
%       cluster : the set of nodes in the giant strongly connected component
%
%   See also find_gaint_component_strong. 

%   NuRsEv1.0
%   $Id: find_gaint_component.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


n = length(A);
all = 1:n;
unvis = all;
cluster = [];
num = 0;
while any(unvis)
    num = num+1;
    c = unvis(1);
    vis = bfs(A,c);
    [mm,nn] = size(vis);
    if mm~=1
        vis=vis';
    end
    cluster(num,1:(length(vis)+1)) = [length(vis),vis];
    unvis = setdiff(unvis,vis);
end
[mm,nn] = size(cluster);
for i = 1:mm
    if cluster(i,nn)~=0
        break
    end
end
cluster = cluster(i,2:end);