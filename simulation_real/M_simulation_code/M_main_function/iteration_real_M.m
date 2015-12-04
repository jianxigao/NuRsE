function output_one= iteration_real_M(steps,output_one,A)
%   iteration_synthetic_M calculates the output for one step
%   of mutulistic dynamic on real networks
%
%   output_one= iteration_real_M(steps,output_one,A)
%
%   Inputs:
%       steps : the current step of calculation, corresponding to a
%               perturbation f.
%       output_one : the output obtained until steps-1
%       A : Adjacency matrix of the network
%
%   Outputs:
%       output_one : the output of the system until steps, which is 
%                    a M \times N matrix. M = steps, N = 6. 
%
%   Format of outputs:
%
%   columns of output_one are
%	[Average low state,	Average high state,	x_eff of low state, 
%    x_eff of high state, beta_eff, fraction of reduction f] 
%   rows of output_one for mutulistic dynamic correspond to different f.
%
%
%   See also find_gaint_component. 

%   NuRsEv1.0
%   $Id: iteration_real_M.m Created at 2015-10-23 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


n = length(A); % number of nodes in the network

%---Parameters for iteration_synthetic_R-----------
t0 = 0; % the start time 
tf = 200; % the end time 
x_low = 0;
x_high = 5;
%---Parameters for iteration_synthetic_R-----------


%% calculate the low state
x0 = ones(n,1)*x_low;  % Initial conditions
options = [];
[t,x] = ode45(@M_system,[t0,tf],x0,options,A); 
xl_ss = x(end,:);xl_ss = xl_ss'; 
output_one(steps,1) = mean(xl_ss); 


%% calculate the high state
x0 = ones(n,1)*x_high;  % Initial conditions
options = [];
[t,x] = ode45(@M_system,[t0,tf],x0,options,A); 
xh_ss = x(end,:);xh_ss = xh_ss'; 
output_one(steps,2) = mean(xh_ss); 


%% calculate the results
[xl_nn,beta] = betaspace(A,xl_ss);
[xh_nn,beta] = betaspace(A,xh_ss);

output_one(steps,3) = xl_nn;
output_one(steps,4) = xh_nn;
output_one(steps,5) = beta;


