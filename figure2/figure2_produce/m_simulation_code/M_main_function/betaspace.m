function [x_eff,beta_eff] = betaspace(A,x)
%   betaspace calculates beta_eff and x_eff by A and x.
%
%   [x_eff,beta_eff] = betaspace(A,x)
%
%   Inputs:
%       A : Adjacency matrix of the network
%       x : the steady state vector of all nodes
%
%   Outputs:
%       x_eff : x_eff of all nodes
%       beta_eff : beta_eff of the network
% 
%
%   NuRsEv1.0
%   $Id: betaspace.m Created at 2015-10-25 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

sAout = sum(A);
x_nss = A*x;
if sum(sum(A)) == 0 % if the network has no connectivity
    % beta xnn are not well defined when there is no network
    beta_eff = 0;
    x_eff = 0;
else % the network has its connectivity
    beta_eff = full(sum(sum(A*A))/sum(sum(A))); 
    x_eff = sum(x_nss)/sum(sAout); 
end
