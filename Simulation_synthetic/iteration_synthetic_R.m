function output_one= iteration_synthetic_R(steps,output_one,A)
%   iteration_synthetic_R calculates the output for one step
%   of gene regulatory dynamic on the network A
%
%   output_one= iteration_synthetic_R(steps,output_one,A)
%
%   Inputs:
%       steps : the current step of calculation, corresponding to a
%               perturbation f.
%       output_one : the output obtained until steps-1
%       A : Adjacency matrix of the network
%
%   Outputs:
%       output_one : the output of the system until steps, which is 
%                    a M \times N matrix. M = steps, N = 4. 
%
%   Format of outputs:
%
%   columns of output_one are
%	[Average state,	x_eff, beta_eff, fraction of reduction f] 
%   rows of output_one for regulatory dynamic correspond to different f.
%
%
%   See also find_gaint_component. 

%   NuRsEv1.0
%   $Id: iteration_synthetic_R.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

n = length(A);

%---Parameters for iteration_synthetic_R-----------
t0 = 0; % the start time
tf = 400; % the end time
x_initial = 2;
%---Parameters for iteration_synthetic_R-----------


options = [];
x0 = ones(n,1)*x_initial;  % The initial state of each node
[t,x] = ode45(@R_system,[t0,tf],x0,options,A);
y1 = x(end,:);y1 = y1';
output_one(steps,1) = mean(y1);

[xnn,beta] = betaspace(A,y1);
output_one(steps,2) = xnn;
output_one(steps,3) = beta;



