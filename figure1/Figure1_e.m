function Figure1_e
%   Figure1_main Plots all the Figures 1 e in our paper "Universal
%   resilience patterns in complex networks".
%   These data points are obtained by R dynamics with 4 nodes
%  
%   NuRsEv2.0
%   $Id: Figure1_main.m Created at 2018-2-26 11:35:29 $
%   by Jianxi Gao, RPI, Troy, NY
%   Copyright (c) 2012-2018 by Center for Complex Network Research (CCNR)

load Result_R_A23A24

figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);box(axes1,'on');hold(axes1,'on');
view(axes1,[26 24]);

x = 0.1:0.1:3; % the weight changes of link A_23
y = 0.1:0.1:3; % the weight changes of link A_24
[X,Y] = meshgrid(x,y);
surf(X,Y,hehe_mx,'FaceColor','g','EdgeColor','g')
grid on; 
alpha(0.5);
shading interp
xlabel('A_{23}');ylabel('A_{24}');zlabel('x')
