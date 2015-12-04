
=======================================================================
Folder Figure2_plot ---> Run Figure2_abcdefghijkl.m and FIgure2_n.m
=======================================================================

Using folder Figure2_plot, one can produce all the figures in Figure 2
and SI about mutualisitc dynamics on real networks by the data we simulated 
and saved.


=======================================================================
Folder Figure2_produce ---> Run Produce_Figure2.m
=======================================================================

Using folder Figure2_produce, one can produce all the figures in Figure 2
and SI about mutualistic dynamics on real by running the code. The data 
points will be save in Results_node, Results_link and Results_weight 
folders. It may take very long time (Weeks or a Month) to produce this 
figure. There are several ways to accelerate the cacluation: (1) Reduce 
the number of realizations num_reali for some large networks in 
M_real_sub.m; (2) Increase number of nodes or link removal in each step 
for some large networks in M_real_sub.m;(3) Run severl Main_real_M.m for 
different real networks at the same time. Bothe files are in the folder 
Simulation_real/M_simulation_code/M_main_function.


