function Main_real_P

%   Main_real_P is the main function for study the resilience of power
%   systems. To run this code, one needs to download the software
%   matpower5.0b1 or higher version.
%
%   Main_real_P
%
%   Inputs:
%       path : The full path of the folder matpower5.0b1
%       a : the power system, for example, case14,cas30 ect.
%       num_nodes : number of nodes in the system
%
%   Outputs:
%       file_name : save a .mat file with all the results
%
%   Format of outputs:
%   For the detialed format of output, see sub_function_lambda_P.m
% 
%
%   NuRsEv1.0
%   $Id: Main_real_P.m Created at 2015-10-25 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


%% put this folder in the folder of matpower5.0b1
path(path,'/Users/jianxigao/Documents/MATLAB/My_toolbox/matpower5.0b1/');
a = case14; 
num_nodes = 14;

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
output = sub_function_lambda_P(a,num_nodes,set_load_bus);
save file_name output



