function A = remove_one_effect_the_other(M,type_net,remove)
%   remove_one_effect_the_other returns a projection network 
%   from a bipartite network by removing nodes from another 
%   projection network. 
%
%   A = remove_one_effect_the_other(M,type_net,remove)
%
%   Inputs:
%       M : the bipartite mutualistic network
%       type_net : type_net = 1 for flower, 2 for bee
%       remove : the set of nodes removed from the other type of network.
%
%   Outputs:
%       A : the adjacency matrix of the network after perturbations
%
%
%   See also link_removal_M. 
%
%   NuRsEv1.0
%   $Id: remove_one_effect_the_other.m Created at 2015-10-23 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

if type_net == 1
    M(remove,:) = [];
    [m,n] = size(M);
    A = zeros(n);
    kn = sum(M');
    for i = 1:m
        for j = 1:n-1
            for k = j+1:n
                if M(i,j) ~= 0 && M(i,k) ~= 0
                    A(j,k) = A(j,k)+M(i,k)/kn(i)+M(i,j)/kn(i);
                    A(k,j) = A(k,j)+M(i,j)/kn(i)+M(i,k)/kn(i);
                end
            end
        end
    end
else
    M(:,remove) = [];
    [m,n] = size(M);
    A = zeros(m);
    km = sum(M);
    for i = 1:n
        for j = 1:m-1
            for k = j+1:m
                if M(j,i) ~= 0 && M(k,i) ~= 0
                    A(j,k) = A(j,k)+M(k,i)/km(i)+M(j,i)/km(i);
                    A(k,j) = A(k,j)+M(j,i)/km(i)+M(k,i)/km(i);
                end
            end
        end
    end
end
cluster = find_gaint_component(A);
A = A(cluster,cluster);


