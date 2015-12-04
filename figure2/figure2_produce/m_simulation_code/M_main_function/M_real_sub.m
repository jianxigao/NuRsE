function M_real_sub(the_net)
%   M_real_sub is a sub function function to run mutualistic dynamics on
%   the given real networks. 
%
%
%   Inputs:
%       the_net : the network we will study.
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
%   $Id: M_real_sub.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

num_reali = 100;
% load the networks
if the_net == 1
    load('../M_real_data/ANEMONE_FISH_WEBS_Coral_reefs2007');
    type_net = 1;
    if type_net == 1
        A = A; 
    else 
        A = B;
    end 
    A = sparse(A); 
    cluster = find_gaint_component(A); 
    A = A(cluster,cluster); 
    nnlros = 1;
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/6ANEMONE_FISH_WEBS_Coral_reefs2007_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/6ANEMONE_FISH_WEBS_Coral_reefs2007_link_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/6ANEMONE_FISH_WEBS_Coral_reefs2007_weight_P.mat'], 'outputs');
    end
elseif the_net == 2
    load('../M_real_data/ANEMONE_FISH_WEBS_Coral_reefs2007');
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
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/6ANEMONE_FISH_WEBS_Coral_reefs2007_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/6ANEMONE_FISH_WEBS_Coral_reefs2007_link_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/6ANEMONE_FISH_WEBS_Coral_reefs2007_weight_A.mat'], 'outputs');
    end
elseif the_net == 3
    load('../M_real_data/PLANT_ANT_WEBS_Bluthgen_2004');
    type_net = 1;
    if type_net == 1
        A = A; 
    else 
        A = B;
    end 
    A = sparse(A); 
    cluster = find_gaint_component(A); 
    A = A(cluster,cluster); 
    nnlros = 1;
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/1PLANT_ANT_WEBS_Bluthgen_2004_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/1PLANT_ANT_WEBS_Bluthgen_2004_link_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/1PLANT_ANT_WEBS_Bluthgen_2004_weight_P.mat'], 'outputs');
    end
elseif the_net == 4
    load('../M_real_data/PLANT_ANT_WEBS_Bluthgen_2004');
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
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/1PLANT_ANT_WEBS_Bluthgen_2004_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/1PLANT_ANT_WEBS_Bluthgen_2004_link_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/1PLANT_ANT_WEBS_Bluthgen_2004_weight_A.mat'], 'outputs');
    end
elseif the_net == 5
    load('../M_real_data/PLANT_POLLINATOR_BEES_WASPS_Clements_1923');
    type_net = 1;
    if type_net == 1
        A = A; 
    else 
        A = B;
    end 
    A = sparse(A); 
    cluster = find_gaint_component(A); 
    A = A(cluster,cluster); 
    nnlros = 1;
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_link_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_weight_P.mat'], 'outputs');
    end
elseif the_net == 6
    load('../M_real_data/PLANT_POLLINATOR_BEES_WASPS_Clements_1923');
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
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_link_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_weight_A.mat'], 'outputs');
    end
elseif the_net == 7
    load('../M_real_data/PLANT_POLLINATOR_BEES_WASPS_Elberling_1999');
    type_net = 1;
    if type_net == 1
        A = A; 
    else 
        A = B;
    end 
    A = sparse(A); 
    cluster = find_gaint_component(A); 
    A = A(cluster,cluster); 
    nnlros = 1;
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_link_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_weight_P.mat'], 'outputs');
    end
elseif the_net == 8
    load('../M_real_data/PLANT_POLLINATOR_BEES_WASPS_Elberling_1999');
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
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_link_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_weight_A.mat'], 'outputs');
    end
elseif the_net == 9
    load('../M_real_data/PLANT_POLLINATOR_BEES_WASPS_Santos_2010');
    type_net = 1;
    if type_net == 1
        A = A; 
    else 
        A = B;
    end 
    A = sparse(A); 
    cluster = find_gaint_component(A); 
    A = A(cluster,cluster); 
    nnlros = 1;
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_link_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_weight_P.mat'], 'outputs');
    end
elseif the_net == 10
    load('../M_real_data/PLANT_POLLINATOR_BEES_WASPS_Santos_2010');
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
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_link_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_weight_A.mat'], 'outputs');
    end
elseif the_net == 11 
    load('../M_real_data/PLANT_POLLINATOR_Robertson_1929');
    type_net = 1;
    if type_net == 1
        A = A; 
    else 
        A = B;
    end 
    A = sparse(A); 
    cluster = find_gaint_component(A); 
    A = A(cluster,cluster); 
    nnlros = 1;
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/3PLANT_POLLINATOR_Robertson_1929_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/3PLANT_POLLINATOR_Robertson_1929_link_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/3PLANT_POLLINATOR_Robertson_1929_weight_P.mat'], 'outputs');
    end
elseif the_net == 12
    load('../M_real_data/PLANT_POLLINATOR_Robertson_1929');
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
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/3PLANT_POLLINATOR_Robertson_1929_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/3PLANT_POLLINATOR_Robertson_1929_link_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/3PLANT_POLLINATOR_Robertson_1929_weight_A.mat'], 'outputs');
    end
elseif the_net == 13
    load('../M_real_data/PLANT_SEED_DISPERSER_Schleuning_2010');
    type_net = 1;
    if type_net == 1
        A = A; 
    else 
        A = B;
    end 
    A = sparse(A); 
    cluster = find_gaint_component(A); 
    A = A(cluster,cluster); 
    nnlros = 1;
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/5PLANT_SEED_DISPERSER_Schleuning_2010_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/5PLANT_SEED_DISPERSER_Schleuning_2010_link_P.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/5PLANT_SEED_DISPERSER_Schleuning_2010_weight_P.mat'], 'outputs');
    end
elseif the_net == 14
    load('../M_real_data/PLANT_SEED_DISPERSER_Schleuning_2010');
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
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 1; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_node/5PLANT_SEED_DISPERSER_Schleuning_2010_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 2; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_link/5PLANT_SEED_DISPERSER_Schleuning_2010_link_A.mat'], 'outputs');
    end
    outputs = [];
    for realization = 1:num_reali 
        perturbation_type = 3; 
        output_one = Perturpation_real_M(nnlros,A,perturbation_type,type_net,M);
        [nn,mm] = size(output_one);
        outputs(realization,1:nn,1:mm) = output_one;
        save(['Results_weight/5PLANT_SEED_DISPERSER_Schleuning_2010_weight_A.mat'], 'outputs');
    end
end


