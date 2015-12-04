function Produce_Figure2



%% Set the path to be the folder "Simulation_real/M_simulation_code/M_main_function" is.
path(path,'M_simulation_code/M_main_function');

%% Calculate each network
for the_net = 1:14
    M_real_sub(the_net);
end

%% plot the figures in f space
Figure2_f

%% plot the figures in beta space
FIgure2_beta

%% plot the figures in f space in SI
f_space_SI

