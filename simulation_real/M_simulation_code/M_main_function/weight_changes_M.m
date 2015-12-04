function output_one = weight_changes_M(A)
%   weight_changes_M calculates the results for weight perturbations.
%
%   output_one = weight_changes_M(A)
%
%   Inputs:
%       A : Adjacency matrix of the network
%
%   Outputs:
%       output_one : the output of the system until steps, which is 
%                    a M \times N matrix. M = steps, N = 6. 
%
%
%   Format of outputs:
%
%   columns of output_one are
%	[Average low state,	Average high state,	x_eff of low state, 
%    x_eff of high state, beta_eff, fraction of reduction f] 
%   rows of output_one for mutulistic dynamic correspond to different f.
%
%   See also node_removal_M, link_removal_M. 
%
%   NuRsEv1.0
%   $Id: weight_changes_M.m Created at 2015-10-23 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


n = length(A);
steps = 0;
output_one = [];

%---Random initial perturbation to the network-----------------------
A0 = rand(n)+0.5;
A0 = A0.*A;
A0 = sparse(A0);
A0 = A0*sum(sum(A))/sum(sum(A0)); 
%---Random initial perturbation to the network-----------------------

%--- every step we reduce 2% of weights----can be changed------------
for i = 0:0.02:1
%--- every step we reduce 2% of weights----can be changed------------

    A = i*A0;
    steps = steps+1;
    output_one= iteration_real_M(steps,output_one,A); 
    output_one(steps,6) = i;

end


