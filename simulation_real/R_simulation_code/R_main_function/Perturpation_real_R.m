function output_one = Perturpation_real_R(nnlros,A,perturbation_type)
%   Perturpation_real_R assigns the calculation to different type of
%   perturbations
%
%   output_one = Perturpation_real_R(nnlros,A,perturbation_type,type_net,M)
%
%   Inputs:
%       nnros : number of links removal in one step
%       A : Adjacency matrix of the network
%       perturbation_type : type of perturbations
%       type_net : type_net = 1 for flower; 2 for bee
%       M : mutualistic bipartite networks
%
%   Outputs:
%       output_one : the output for one realization, which is 
%                    a m \times n matrix. m depends on nnros and number of
%                    links in the network, n = 6.
%
%
%   Format of outputs:
%
%   columns of output_one are
%	[Average state,	x_eff, beta_eff, fraction of reduction f] 
%   rows of output_one for regulatory dynamic correspond to different f.
%
%   See also weight_changes_R, node_removal_R, link_removal_R. 
%
%   NuRsEv1.0
%   $Id: Perturpation_real_R.m Created at 2015-10-23 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

if perturbation_type == 1 % run node perturbation function
    output_one = node_removal_R(nnlros,A);
elseif perturbation_type == 2 % run link perturbation function
    output_one = link_removal_R(nnlros,A);
else % run weight perturbation function
    output_one = weight_changes_R(A);
end