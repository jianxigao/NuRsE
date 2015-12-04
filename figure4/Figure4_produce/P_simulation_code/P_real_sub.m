function P_real_sub(the_net)

%   Main_real_P is the main function for study the resilience of power
%   systems. To run this code, one needs to download the software
%   matpower5.0b1 or higher version.
%
%   Main_real_P
%
%   Inputs:
%       the_net : the network we study
%
%   Outputs:
%       file_name : save a .mat file with all the results
%
%   Format of outputs:
%   For the detialed format of output, see sub_function_lambda_P.m
% 
%
%   NuRsEv1.0
%   $Id: R_real_sub.m Created at 2015-10-25 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

path(path,'/Users/jianxigao/Documents/MATLAB/My_toolbox/matpower5.0b1/');
if the_net == 1
    a = case14;
    num_nodes = 14;
    %% calculate beta
    b = a.bus; 
    Sd = complex(b(:,3),b(:,4));
    set_load_bus = []; 
    Sd = abs(Sd);
    for j = 1:num_nodes
        if (b(j,2) == 1) && Sd(j) > 0
            set_load_bus = [set_load_bus,j];
        end
    end
    bus14 = sub_function_lambda_P(a,num_nodes,set_load_bus);
    save bus14 bus14
elseif the_net == 2
    a = case30; 
    num_nodes = 30;
    %% find the load buses
    b = a.bus; 
    Sd = complex(b(:,3),b(:,4));
    set_load_bus = []; 
    Sd = abs(Sd);
    for j = 1:num_nodes
        if (b(j,2) == 1) && Sd(j) > 0
            set_load_bus = [set_load_bus,j];
        end
    end
    bus30 = sub_function_lambda_P(a,num_nodes,set_load_bus);
    save bus30 bus30
elseif the_net == 3
    a = case57; 
    num_nodes = 57;
    %% find the load buses
    b = a.bus; 
    Sd = complex(b(:,3),b(:,4));
    set_load_bus = []; 
    Sd = abs(Sd);
    for j = 1:num_nodes
        if (b(j,2) == 1) && Sd(j) > 0
            set_load_bus = [set_load_bus,j];
        end
    end
    bus57 = sub_function_lambda_P(a,num_nodes,set_load_bus);
    save bus57 bus57
elseif the_net == 4
    a = case118; 
    num_nodes = 118;
    %% find the load buses
    b = a.bus; 
    Sd = complex(b(:,3),b(:,4));
    set_load_bus = []; 
    Sd = abs(Sd);
    for j = 1:num_nodes
        if (b(j,2) == 1) && Sd(j) > 0
            set_load_bus = [set_load_bus,j];
        end
    end
    bus118 = sub_function_lambda_P(a,num_nodes,set_load_bus);
    save bus118 bus118
end



