function cluster = find_components(A)
%   find_component_greater_than_1 returns a set of nodes in different
%   stronly connected components, and the size of each component is great
%   than one.
%
%   cluster = find_component_greater_than_1(A)
%
%   Inputs:
%       A : Adjacency matrix of the network
%
%   Outputs:
%       cluster : the set of nodes in the components
%
%   See also find_gaint_component_strong, find_gaint_component. 

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
    vis = bfs_strong(A,c);
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
%% cluster is the set of the nodes in the components >= 2
cluster0 = [];
gt1 = find(cluster(:,1)>1);
for i = 1:length(gt1)
    cluster0 = [cluster0,cluster(gt1(i),2:1+cluster(gt1(i),1))];
end
cluster = cluster0;


