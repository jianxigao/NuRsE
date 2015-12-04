function Produce_Figure4


%% Set the path to be the folder 
%% "Simulation_real/M_simulation_code/M_main_function" is.
path(path,'P_simulation_code');

%% Calculate each network
for the_net = 1:4
    P_real_sub(the_net);
end

%% plot the figures 4 b and d
Figure4_bd

%% plot the figures 4 c and e
Figure4_ce

%% plot the figures IEEE30
plot_power_IEEE30

% %% plot the figures IEEE57
% plot_power_IEEE57
