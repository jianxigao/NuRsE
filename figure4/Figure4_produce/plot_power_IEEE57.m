function plot_power_IEEE57
%   plot_power_IEEE57 produces the results and plots both the Figure 6 c and g (in supplementary information) in our paper "Universal
%   resilience patterns in complex networks".
%
%  
%   NuRsEv2.0
%   $Id: Figure1_main.m Created at 2018-2-26 21:35:29 $
%   by Jianxi Gao, RPI, Troy, NY
%   Copyright (c) 2012-2018 by Center for Complex Network Research (CCNR)

clear
clc


%% IEEE 57
load bus57
[m,n] = size(bus57);
num = 10;simsize = 6;
color_net3 = [230,171,2]/255;
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);%,'XScale','log'
hold(axes1,'all');
for i = 1:m
    for j = 1:n
        e10 =bus57{i,j};e10 = abs(e10');
        plot(e10(:,3),e10(:,1),'-s','Color',color_net3,'Linewidth',0.01,'MarkerSize',simsize,'MarkerFaceColor',color_net3,'MarkerEdgeColor',color_net3);hold on;
        plot([e10(end,3),e10(end,3)],[e10(end,1),0],'-','Color',color_net3)
    end
end
box on
xlabel('\lambda')
ylabel('x')

%% beta space

figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);%,'XScale','log'
hold(axes1,'all');
for i = 1:m
    for j = 1:n
        e10 =bus57{i,j};e10 = abs(e10');
        plot(e10(:,2),e10(:,4),'-s','Color',color_net3,'Linewidth',0.01,'MarkerSize',simsize,'MarkerFaceColor',color_net3,'MarkerEdgeColor',color_net3);hold on;
        plot([e10(end,2),e10(end,2)],[e10(end,4),0],'-','Color',color_net3)
    end
end
box on
xlabel('\beta')
ylabel('x')

