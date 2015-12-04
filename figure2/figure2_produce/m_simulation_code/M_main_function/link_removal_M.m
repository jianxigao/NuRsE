function output_one = link_removal_M(nnros,type_net,M)
%   node_removal_M calculates the results for node removal
%
%   output_one = link_removal_M(nnros,type_net,M)
%
%   Inputs:
%       nnros : number of links removal in one step
%       type_net : type_net = 1 for flower; 2 for bee
%       A : Adjacency matrix of the network
%
%   Outputs:
%       output_one : the output for one realization, which is 
%                    a M \times N matrix. M depends on nnros and number of
%                    links in the network, N = 6.
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

[m,n] = size(M);
steps = 0;
output_one = [];
if type_net == 1 % for flowers
    all = randperm(m);
    M = M(all,:);
    for i = [m:-nnros:nnros,0]
        A = remove_one_effect_the_other(M,type_net,1:i);
        steps = steps+1;
        output_one = iteration_real_M(steps,output_one,A);
        output_one(steps,6) = 1-i/m;
    end
else % for bees
    all = randperm(n);
    M = M(:,all);
    for i = [n:-nnros:nnros,0]
        A = remove_one_effect_the_other(M,type_net,1:i);
        steps = steps+1;
        output_one = iteration_real_M(steps,output_one,A);
        output_one(steps,6) = 1-i/n;
    end 
end

