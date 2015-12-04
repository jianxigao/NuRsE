function M_dynamic_beta

clear
clc

simsize = 6;
% net5 = 'b';

color1 = [166,206,227]/255;
color2 = [31,120,180]/255;
color3 = [178,223,138]/255;
color4 = [51,160,44]/255;
color5 = [251,154,153]/255;
color6 = [227,26,28]/255;

figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24,'YScale','log','XScale','log');
box(axes1,'on');
hold(axes1,'on');

%% plot theory
load('../simulation_results_data/theory_M')
plot(beta0,xnn,'k','Linewidth',0.1); hold on;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% SF network <k>=5, <w>=1.6, gamma_k=2.1, gamma_w=2.1 node
load('../simulation_results_data/SF_n10000_meank5_a16_lambdaw_21_lambdak_21_node')
net10_dat = outputs_node;
sub_plot_figures(net10_dat,color4,simsize,1);
%% SF network <k>=5, <w>=1.6, gamma_k=2.1, gamma_w=2.1 link
load('../simulation_results_data/SF_n10000_meank5_a16_lambdaw_21_lambdak_21_link')
net11_dat = outputs_link;
sub_plot_figures(net11_dat,color4,simsize,2);
%% SF network <k>=5, <w>=1.6, gamma_k=2.1, gamma_w=2.1 weight
load('../simulation_results_data/SF_n10000_meank5_a16_lambdak_21_lambdak_21_weight')
net12_dat = outputs_weight;
sub_plot_figures(net12_dat,color4,simsize,3);
% 
%% SF network <k>=5, <w>=1.6, gamma_k=3.0, gamma_w=3.0 node
load('../simulation_results_data/SF_n10000_meank5_a16_lambdak_30_lambdak_30_node')
net13_dat = outputs_node;
sub_plot_figures(net13_dat,color4,simsize,1);
%% SF network <k>=5, <w>=1.6, gamma_k=3.0, gamma_w=3.0 link
load('../simulation_results_data/SF_n10000_meank5_a16_lambdak_30_lambdak_30_link')
net14_dat = outputs_link;
sub_plot_figures(net14_dat,color4,simsize,2);
%% SF network <k>=5, <w>=1.6, gamma_k=3.0, gamma_w=3.0 weight
load('../simulation_results_data/SF_n10000_meank5_a16_lambdak_30_lambdak_30_weight')
net15_dat = outputs_weight;
sub_plot_figures(net15_dat,color4,simsize,3);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% SF network <k>=5, w=1.6, gamma_k=2.1 node
load('../simulation_results_data/SF_n10000_meank5_a16_lambdaw_21_node')
net19_dat = outputs_node;
sub_plot_figures(net19_dat,color3,simsize,1);
%% SF network <k>=5, w=1.6, gamma_k=2.1 link
load('../simulation_results_data/SF_n10000_meank5_a16_lambdaw_21_link')
net20_dat = outputs_link;
sub_plot_figures(net20_dat,color3,simsize,2);
%% SF network <k>=5, w=1.6, gamma_k=2.1 weight
load('../simulation_results_data/SF_n10000_meank5_a16_lambdak_21_weight')
net21_dat = outputs_weight;
sub_plot_figures(net21_dat,color3,simsize,3);

%% SF network <k>=5, w=1.6, gamma_k=3.0 node
load('../simulation_results_data/SF_n10000_meank5_a16_lambdak_30_node')
net22_dat = outputs_node;
sub_plot_figures(net22_dat,color3,simsize,1);
%% SF network <k>=5, w=1.6, gamma_k=3.0 link
load('../simulation_results_data/SF_n10000_meank5_a16_lambdak_30_link')
net23_dat = outputs_link;
sub_plot_figures(net23_dat,color3,simsize,2);
%% SF network <k>=5, w=1.6, gamma_k=3.0 weight
load('../simulation_results_data/SF_n10000_meank5_a16_lambdak_30_weight')
net24_dat = outputs_weight;
sub_plot_figures(net24_dat,color3,simsize,3);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% ER networks <k>=5, <w>=1.6, gamma_w = 2.1 node 
load('../simulation_results_data/ER_n10000_meank5_a16_lambdaw_21_node')
net1_dat = outputs_node;
sub_plot_figures(net1_dat,color2,simsize,1);
%%%%%%ER networks <k>=5, <w>=1.6, gamma_w = 2.1 link
load('../simulation_results_data/ER_n10000_meank5_a16_lambdaw_21_link')
net2_dat = outputs_link;
sub_plot_figures(net2_dat,color2,simsize,2);
%%%%%%ER networks <k>=5, <w>=1.6, gamma_w = 2.1 weight
load('../simulation_results_data/ER_n10000_meank5_a16_lambdaw_21_weight')
net3_dat = outputs_weight;
sub_plot_figures(net3_dat,color2,simsize,3);

%% ER networks <k>=5, <w>=1.6, gamma_w = 3.0 node
load('../simulation_results_data/ER_n10000_meank5_a16_lambdaw_30_node')
net4_dat = outputs_node;
sub_plot_figures(net4_dat,color2,simsize,1);
%% ER networks <k>=5, <w>=1.6, gamma_w = 3.0 link
load('../simulation_results_data/ER_n10000_meank5_a16_lambdaw_30_link')
net5_dat = outputs_link;
sub_plot_figures(net5_dat,color2,simsize,2);
%% ER networks <k>=5, <w>=1.6, gamma_w = 3.0 weight
load('../simulation_results_data/ER_n10000_meank5_a16_lambdaw_30_weight')
net6_dat = outputs_weight;
sub_plot_figures(net6_dat,color2,simsize,3);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ER networks n = 20 node
load('../simulation_results_data/ER_n20_meank8_a1_node')
net28_dat = outputs_node;
sub_plot_figures(net28_dat,color1,simsize,1);
%% n = 20 link
load('../simulation_results_data/ER_n20_meank8_a1_link')
net29_dat = outputs_link;
sub_plot_figures(net29_dat,color1,simsize,2);
%% n = 20 weight
load('../simulation_results_data/ER_n20_meank8_a1_weight')
net30_dat = outputs_weight;
sub_plot_figures(net30_dat,color1,simsize,3);
%% n = 200 node
load('../simulation_results_data/ER_n200_meank12_a1_node')
net31_dat = outputs_node;
sub_plot_figures(net31_dat,color1,simsize,1);
%% n = 200 link
load('../simulation_results_data/ER_n200_meank12_a1_link')
net32_dat = outputs_link;
sub_plot_figures(net32_dat,color1,simsize,2);
%% n = 200 weight
load('../simulation_results_data/ER_n200_meank12_a1_weight')
net33_dat = outputs_weight;
sub_plot_figures(net33_dat,color1,simsize,3);
%% n = 2000 node
load('../simulation_results_data/ER_n2000_meank16_a1_node')
net34_dat = outputs_node;
sub_plot_figures(net34_dat,color1,simsize,1);
%% n = 2000 link
load('../simulation_results_data/ER_n2000_meank16_a1_link')
net35_dat = outputs_link;
sub_plot_figures(net35_dat,color1,simsize,2);
%% n = 2000 weight
load('../simulation_results_data/ER_n2000_meank16_a1_weight')
net36_dat = outputs_weight;
sub_plot_figures(net36_dat,color1,simsize,3);
%% n = 20000 node
load('../simulation_results_data/ER_n20000_meank20_a1_node')
net37_dat = outputs_node;
sub_plot_figures(net37_dat,color1,simsize,1);
%% n = 20000 link
load('../simulation_results_data/ER_n20000_meank20_a1_link')
net38_dat = outputs_link;
sub_plot_figures(net38_dat,color1,simsize,2);
%% n = 20000 weight
load('../simulation_results_data/ER_n20000_meank20_a1_weight')
net39_dat = outputs_weight;
sub_plot_figures(net39_dat,color1,simsize,3);


xlabel('\beta')
ylabel('x')

xlim([0.01,1000])
function sub_plot_figures(net1_dat,net_color,simsize,pertubation_type)

[m,n,z] = size(net1_dat);
if pertubation_type == 1
    for i = 1:m
        b(1:n,1:z) = net1_dat(i,1:n,1:z);
        plot(b(2:end,5),b(2:end,3),'.','MarkerSize',simsize,'MarkerFaceColor',net_color,'MarkerEdgeColor',net_color,'LineWidth',0.01);hold on;
        plot(b(2:end,5),b(2:end,4),'.','MarkerSize',simsize,'MarkerFaceColor',net_color,'MarkerEdgeColor',net_color,'LineWidth',0.01);
    end
elseif pertubation_type == 2
    for i = 1:m
%         i
        b(1:n,1:z) = net1_dat(i,1:n,1:z);
%         pause
        plot(b(2:end,5),b(2:end,3),'.','MarkerSize',simsize,'MarkerFaceColor',net_color,'MarkerEdgeColor',net_color,'LineWidth',0.01);hold on;
        plot(b(2:end,5),b(2:end,4),'.','MarkerSize',simsize,'MarkerFaceColor',net_color,'MarkerEdgeColor',net_color,'LineWidth',0.01);
    end
else
    for i = 1:m
%         i
        b(1:n,1:z) = net1_dat(i,1:n,1:z);
%         pause
        plot(b(2:end,5),b(2:end,3),'.','MarkerSize',simsize,'MarkerFaceColor',net_color,'MarkerEdgeColor',net_color,'LineWidth',0.01);hold on;
        plot(b(2:end,5),b(2:end,4),'.','MarkerSize',simsize,'MarkerFaceColor',net_color,'MarkerEdgeColor',net_color,'LineWidth',0.01);
    end
end


