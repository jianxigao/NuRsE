function output_one = link_removal_R(nnros,A)
%   node_removal_R calculates the results for node removal
%
%   output_one = link_removal_R(nnros,type_net,M)
%
%   Inputs:
%       nnros : number of links removal in one step
%       A : Adjacency matrix of the network
%
%   Outputs:
%       output_one : the output for one realization, which is 
%                    a M \times N matrix. M depends on nnros and number of
%                    links in the network, N = 4.
%
%
%   Format of outputs:
%
%   columns of output_one are
%	[Average low state,	Average high state,	x_eff of low state, 
%    x_eff of high state, beta_eff, fraction of reduction f] 
%   rows of output_one for mutulistic dynamic correspond to different f.
%
%   See also weight_changes_M, node_removal_M. 
%
%   NuRsEv1.0
%   $Id: link_removal_M.m Created at 2015-10-23 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


iteration = 1;
output_one = [];
A = delete_no_output(A);
A = delete_no_input(A);
cluster = find_components(A);
A = A(cluster,:);A = A(:,cluster);

A0 = A;
[i,j,s] = find(A0);
L = length(i); % number of links

the_links = randperm(L);
for remove = [L-1:-nnros:nnros,0]
    iteration = iteration+1;
    s1 = s;
    num_removed_links = remove;
    removed_links = the_links(1:num_removed_links);
    s1(removed_links) = 0;
    A = sparse(i,j,s1);max_i_j = max([max(i),max(j)]);
    A(max_i_j,max_i_j) = 0;
    d = sum(A); isoluted = find(d==0);
    A(isoluted,:) = [];A(:,isoluted) = [];
    cluster = find_components(A);
    A = A(cluster,:);A = A(:,cluster);
    if length(A) >= 1
        output_one = iteration_real_R(iteration,output_one,A);  
    else
        output_one(iteration,1:3) = 0;
    end
    output_one(iteration,4) = 1-remove/L;
end




