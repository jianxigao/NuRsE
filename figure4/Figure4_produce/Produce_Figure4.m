function Produce_Figure4
%   Produce_Figure4 plots all the Figure 6 (in supplementary information) in our paper "Universal
%   resilience patterns in complex networks".
%
%  
%   NuRsEv2.0
%   $Id: Figure1_main.m Created at 2018-2-26 21:35:29 $
%   by Jianxi Gao, RPI, Troy, NY
%   Copyright (c) 2012-2018 by Center for Complex Network Research (CCNR)


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
