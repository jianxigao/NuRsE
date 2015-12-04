function R_real_sub(the_net)
%   This is the main function to run regulatory dynamics on real networks.
%
%
%   Inputs:
%       load networks : load the real networks in folder all_real_data.
%       type_net : the type of networks, 1 for flower, 2 for bee.
%       nnlros : number of nodes or links removal in one step. Defaut value
%       1.
%       perturbation_type : type of perturbations: 1 for node removal, 2
%                           for link removal, and 3 for weight reduction
%       num_reali: number of realizations
%
%
%   Outputs:
%       save_file_name : a .mat file contenting all the simulation results
%       outputs : the outputs of all realizations, which is 
%                    a Z \times M \times N matrix. Z = num_reali,
%                    M is equal to the length of fraction_reduce,
%                    and N = 4 for gene regulatory dynamic
%
%   Format of outputs:
%   num_reali different values of matrix output_one (M \times N matrix).
%
%   see node_removal.m and link_removal.m and weight_changes.m
%   for the detial format of output_one
%
%
%   NuRsEv1.0
%   $Id: R_real_sub.m Created at 2015-10-26 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

num_reali = 500;
a = 2;
if the_net == 1
    load TYB; 
    A = sparse(A*a); 
    A = delete_no_input(A);
    cluster = find_components(A);
    A = A(cluster,cluster); 
    nnlros = 1;
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_R(nnlros,A,perturbation_type);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save TYB_node_a2 outputs
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_R(nnlros,A,perturbation_type);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save TYB_link_a2 outputs
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_R(nnlros,A,perturbation_type);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save TYB_weight_a2 outputs
    end
else
    load TECB; 
    A = sparse(A*a); 
    A = delete_no_input(A);
    cluster = find_components(A);
    A = A(cluster,cluster); 
    nnlros = 1;
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_R(nnlros,A,perturbation_type);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save TECB_node_a2 outputs
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_R(nnlros,A,perturbation_type);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save TECB_link_a2 outputs
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_R(nnlros,A,perturbation_type);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save TECB_weight_a2 outputs
    end
end

