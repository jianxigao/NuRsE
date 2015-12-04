function output_one = node_removal_M(nnros,A)
%   node_removal calculates the results for node removal on real
%   networks with mutualistic dynamics
%
%   output_one = node_removal_M(nnros,A)
%
%   Inputs:
%       nnros : number of nodes removal in each step
%       A : Adjacency matrix of the network
%
%   Outputs:
%       output_one : the output for one realization, which is 
%                    a M \times N matrix. M depends on nnros and number of
%                    nodes in the network, N = 6.
%
%
%   Format of outputs:
%
%   columns of output_one are
%	[Average low state,	Average high state,	x_eff of low state, 
%    x_eff of high state, beta_eff, fraction of reduction f] 
%   rows of output_one for mutulistic dynamic correspond to different f.
%
%   See also weight_changes_M, link_removal_M. 
%
%   NuRsEv1.0
%   $Id: node_removal_M.m Created at 2015-10-23 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


n = length(A);
steps = 0; 
output_one = []; 
all = randperm(n); 
A = A(all,:);
A = A(:,all);
A0 = A; 
% start to remove the nodes and perform simulations
for i = [n-1:-nnros:nnros,0] % i is the number of nodes removal
    A = A0; 
    steps = steps+1; 
    A(1:i,:) = [];
    A(:,1:i) = [];
    cluster = find_gaint_component(A); 
    A = A(cluster,cluster); 
    output_one= iteration_real_M(steps,output_one,A); 
    output_one(steps,6) = 1-i/n; 
end