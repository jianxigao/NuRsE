function Fv = R_system(t,x,A)
%   R_system describes the gene regulatory dynamic
%
%   Fv = R_system(t,x,A)
%
%   Inputs:
%       t : The time
%       x : The state vector of all nodes
%       A : Adjacency matrix of the network
%
%   Outputs:
%       Fv : the derivative of state x
%
%
%   See also M_system. 
%
%   NuRsEv1.0
%   $Id: R_system.m Created at 2015-10-23 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


%---Parameters for gene regulatory dynamic-----------
f = 1; h = 2;
%---Parameters for gene regulatory dynamic-----------

Fv = -x.^f+A*(x.^h./(x.^h+1));
