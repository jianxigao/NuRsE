function Produce_Figure3



%% Set the path to be the folder 
%% "Simulation_real/M_simulation_code/M_main_function" is.
path(path,'R_simulation_code/R_main_function');

%% Calculate each network
for i = 1:2
    R_real_sub(i);
end

%% plot the figures in f space
Figure3_f

%% plot the figures in beta space
Figure3_beta
