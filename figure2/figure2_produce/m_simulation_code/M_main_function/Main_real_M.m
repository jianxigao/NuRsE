function Main_real_M
%   This is the main function to run mutualistic dynamics on real networks.
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
%                    N = 6 for mutualistic dynamic,
%
%   Format of outputs:
%   num_reali different values of matrix output_one (M \times N matrix).
%
%   see node_removal.m and link_removal.m and weight_changes.m
%   for the detial format of output_one
%
%
%   NuRsEv1.0
%   $Id: Main_real_M.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

clear;
clc;
% load the networks
load('../M_real_data/ANEMONE_FISH_WEBS_Coral_reefs2007');
% load('../M_real_data/PLANT_ANT_WEBS_Bluthgen_2004');
% load('../M_real_data/PLANT_POLLINATOR_BEES_WASPS_Elberling_1999');
% load('../M_real_data/PLANT_POLLINATOR_BEES_WASPS_Clements_1923');
% load('../M_real_data/PLANT_POLLINATOR_BEES_WASPS_Santos_2010');
% load('../M_real_data/PLANT_POLLINATOR_Robertson_1929');
% load('../M_real_data/PLANT_SEED_DISPERSER_Schleuning_2010');


type_net = 2;
if type_net == 1
    A = A; 
else 
    A = B;
end
A = sparse(A); 
cluster = find_gaint_component(A); 
A = A(cluster,cluster); 
nnlros = 1;
num_reali = 100;
for realization = 1:num_reali 
    perturbation_type = 3; 
    output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
    [nn,mm] = size(output_one);
    outputs(realization,1:nn,1:mm) = output_one;
    save file_name_the_results outputs
end


