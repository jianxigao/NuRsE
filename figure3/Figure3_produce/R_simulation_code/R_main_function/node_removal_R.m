function output_one = node_removal_R(nnros,A)
%   node_removal_R calculates the results for node removal
%
%   output_one = node_removal_R(nnros,A)
%
%   Inputs:
%       nnros : number of nodes removal in one step
%       A : Adjacency matrix of the network
%
%   Outputs:
%       output_one : the output for one realization, which is 
%                    a M \times N matrix. M depends on nnros and number of
%                    nodes in the network, N = 4.
%
%
%   Format of outputs:
%
%   columns of output_one are
%	[Average state,	x_eff, beta_eff, fraction of reduction f] 
%   rows of output_one for regulatory dynamic correspond to different f.
%
%   See also weight_changes_R, link_removal_R. 
%
%   NuRsEv1.0
%   $Id: node_removal_R.m Created at 2015-10-23 13:45:29 $
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
    cluster = find_components(A);
    A = A(cluster,cluster); 
    if length(A) >= 1
        output_one= iteration_real_R(steps,output_one,A);  
    else
        output_one(steps,1:3) = 0;
    end
    output_one(steps,4) = 1-i/n; 
end