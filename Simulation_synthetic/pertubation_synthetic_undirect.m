function output_one = pertubation_synthetic_undirect(A,perturbation_type,fraction_reduce,dynamic_type)
%   pertubation_synthetic_direct calculates the output for one realization
%   on undirected networks
%
%   output_one = pertubation_synthetic_undirect(A,perturbation_type,fraction_reduce,dynamic_type)
%
%   Inputs:
%       A : Adjacency matrix of the network
%       perturbation_type : type of perturbations: 1 for node removal, 2
%                           for link removal, and 3 for weight reduction
%       fraction_reduce : the fraction of node/link/weight reduction in
%                         each step
%       dynamic_type : the type of dynamics: 1 for mutualistic dynamic, 2
%                      for gene regulatory dynamics
%
%   Outputs:
%       output_one : the output for one realization, which is 
%                    a M \times N matrix. M is equal to the length of 
%                    fraction_reduce, N = 6 for mutualistic dynamic,
%                    and N = 4 for gene regulatory dynamic
%
%   Format of outputs:
%
%   columns of output_one for mutulistic dynamic are
%	[Average low state,	Average high state,	x_eff of low state, 
%    x_eff of high state, beta_eff, fraction of reduction f] 
%   rows of output_one for mutulistic dynamic correspond to different f.
%
%   columns of output_one for regulatory dynamic are
%	[Average state,	x_eff, beta_eff, fraction of reduction f] 
%   rows of output_one for mutulistic dynamic correspond to different f.
%
%   See also find_gaint_component. 

%   NuRsEv1.0
%   $Id: pertubation_synthetic_undirect.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

iteration = 1;
output_one = [];
cluster = find_gaint_component(A);
A = A(cluster,:); A = A(:,cluster);
n = length(A);
A0 = A;
[i,j,s] = find(A0);
L = length(i)/2; 
i_greater_j = find(i > j); % the edges left
i1 = i(i_greater_j);
j1 = j(i_greater_j);
s1 = s(i_greater_j);
the_nodes = randperm(n);
the_links = randperm(L);

for steps = 1:length(fraction_reduce)
    if perturbation_type == 1 % node removal
        A = A0;
        num_removed_nodes = fix(fraction_reduce(steps)*n); 
        removed_nodes = the_nodes(1:num_removed_nodes);
        A(removed_nodes,:) = [];
        A(:,removed_nodes) = [];
        cluster = find_gaint_component(A);
        A = A(cluster,:);A = A(:,cluster);
    elseif perturbation_type == 2 % link removal
        s = s1;
        num_removed_links = fix(fraction_reduce(steps)*L);
        removed_links = the_links(1:num_removed_links);
        s(removed_links) = 0;
        A = sparse([i1,j1],[j1,i1],[s,s]);
        d = sum(A); isoluted = find(d==0);
        A(isoluted,:) = [];A(:,isoluted) = [];
        cluster = find_gaint_component(A);
        A = A(cluster,:);A = A(:,cluster);
    else % weight reduction
        A = A0*(1-fraction_reduce(steps));
    end
    iteration = iteration+1;
    if dynamic_type == 1
        if length(A) >= 1
            output_one = iteration_synthetic_M(iteration,output_one,A); 
        else
            output_one(iteration,1:5) = 0;
        end
        output_one(iteration,6) = 1-fraction_reduce(steps);
    else
        if length(A) >= 1
            output_one = iteration_synthetic_R(iteration,output_one,A);  
        else
            output_one(iteration,1:3) = 0;
        end
        output_one(iteration,4) = 1-fraction_reduce(steps);
    end
end


