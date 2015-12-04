function Main_synthetic
%   This is the main function to run mutualistic and 
%   gene regulatory dynamics on synthetic networks 
%
%
%   Inputs:
%       dynamic_type : the type of dynamics: 1 for mutualistic dynamic, 2
%                      for gene regulatory dynamics. Defaut value, 1
%       isdirected: the network is dircted or undirected networks, 1 for
%                   directed, 0 for undirected. Defaut value 0.
%       n : number of nodes in the network. Default value 100
%       a : Average weight of each link. Defaut value 0.8
%       meank : Average degree of the network. Defaut value 8
%       lambda_w : Weight exponent. Defaut value 2.1
%       lambda_k : degree exponent. Defaut value 2.1
%       perturbation_type : type of perturbations: 1 for node removal, 2
%                           for link removal, and 3 for weight reduction
%       fraction_reduce : the fraction of node/link/weight reduction in
%                         each step.
%       num_reali: number of realizations
%
%
%   Outputs:
%       save_file_name : a .mat file contenting all the simulation results
%       outputs : the outputs of all realizations, which is 
%                    a Z \times M \times N matrix. Z = num_reali,
%                    M is equal to the length of fraction_reduce,
%                    N = 6 for mutualistic dynamic,
%                    and N = 4 for gene regulatory dynamic
%
%   Format of outputs:
%   num_reali different values of matrix output_one (M \times N matrix).
%
%   see pertubation_synthetic_direct.m and pertubation_synthetic_undirect.m
%   for the detial format of output_one
%
%
%   NuRsEv1.0
%   $Id: Main_synthetic.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

clear;
clc;
dynamic_type = 2;
isdirected = 0;
% Parameters of the network
n = 100; 
a = 0.8; 
meank = 8;
lambda_w = 2.1;
lambda_k = 2.1;

%% The fraction of node/link/weight reduction
fraction_reduce = 0.95:-0.05:0; 

%% start calculation
num_reali = 50;
for realization = 1:num_reali
    tic
    perturbation_type = 1;
    % choose one of types of networks, defaut 
    A = generate_ER(meank,n,a); % Type I
%     A = generate_ERk_SFw(meank,n,a,lambda_w); % Type II
%     A = generate_samew_SFk(lambda_k,meank,n,a); % % Type III
%     A = generate_SFw_SFk(lambda_k,lambda_w,meank,n,a); % Type IV
%     A = generate_direct_midS_samew_SFk(lambda_k,meank,n,a);
%     A = generate_direct_negS_samew_SFk(lambda_k,meank,n,a);
    if isdirected == 0
        output_one = pertubation_synthetic_undirect(A,perturbation_type,fraction_reduce,dynamic_type)
    else
        output_one = pertubation_synthetic_direct(A,perturbation_type,fraction_reduce,dynamic_type);
    end
    [nn,mm] = size(output_one);
    outputs(realization,1:nn,1:mm) = output_one;
    save save_file_name outputs
    toc
end


