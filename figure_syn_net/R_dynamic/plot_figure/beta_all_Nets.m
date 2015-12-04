function beta_all_Nets
clear
clc

simsize = 6;
color1 = [166,206,227]/255;
color2 = [31,120,180]/255;
color3 = [178,223,138]/255;
color4 = [51,160,44]/255;
color5 = [251,154,153]/255;
color6 = [227,26,28]/255;

figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24,'YScale','log');
box(axes1,'on');
hold(axes1,'on');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/SF network Neg S lambda=2.1 node removal
load('../R_simulation_data/SF_NegS_direct_n5000_meank8_a2_lambda_21_node')
net1_dat = outputs_node;
sub_plot_figures(net1_dat,color6,simsize,1);
%% load('../R_simulation_data/SF network lambda=2.1 link removal
load('../R_simulation_data/SF_NegS_direct_n5000_meank8_a2_lambda_21_link')
net2_dat = outputs_link;
sub_plot_figures(net2_dat,color6,simsize,2);
%% load('../R_simulation_data/SF network Neg S lambda=2.1 weight changes
load('../R_simulation_data/SF_NegS_direct_n5000_meank8_a2_lambda_21_weight')
net3_dat = outputs_weight;
sub_plot_figures(net3_dat,color6,simsize,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/SF network Neg S lambda=3.0 node removal
load('../R_simulation_data/SF_NegS_direct_n5000_meank8_a2_lambda_30_node')
net4_dat = outputs_node;
sub_plot_figures(net4_dat,color6,simsize,1);
%% load('../R_simulation_data/SF network Neg S lambda=3.0 link removal
load('../R_simulation_data/SF_NegS_direct_n5000_meank8_a2_lambda_30_link')
net5_dat = outputs_link;
sub_plot_figures(net5_dat,color6,simsize,2);
%% load('../R_simulation_data/SF network Neg S lambda=3.0 weight changes
load('../R_simulation_data/SF_NegS_direct_n5000_meank8_a2_lambda_30_weight')
net6_dat = outputs_weight;
sub_plot_figures(net6_dat,color6,simsize,3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/SF network Zero S lambda_k=2.1 node removal
load('../R_simulation_data/SF_ZeorS_direct_n5000_meank8_a2_lambda_21_node')
net10_dat = outputs_node;
sub_plot_figures(net10_dat,color5,simsize,1);

%% load('../R_simulation_data/SF network Zero S lambda_k=2.1 link removal
load('../R_simulation_data/SF_ZeorS_direct_n5000_meank8_a2_lambda_21_link')
net11_dat = outputs_link;
sub_plot_figures(net11_dat,color5,simsize,2);
%% load('../R_simulation_data/SF network Zero S lambda_k=2.1 weight changes
load('../R_simulation_data/SF_ZeorS_direct_n5000_meank8_a2_lambda_21_weight')
net12_dat = outputs_weight;
sub_plot_figures(net12_dat,color5,simsize,3);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/SF network Zero S lambda_k=3.0 node removal
load('../R_simulation_data/SF_ZeroS_direct_n5000_meank8_a2_lambda_30_node')
net13_dat = outputs_node;
sub_plot_figures(net13_dat,color5,simsize,1);

%% load('../R_simulation_data/SF network Zero S lambda_k=3.0 link removal
load('../R_simulation_data/SF_ZeorS_direct_n5000_meank8_a2_lambda_30_link')
net14_dat = outputs_link;
sub_plot_figures(net14_dat,color5,simsize,2);
%% load('../R_simulation_data/SF network Zero S lambda_k=3.0 weight changes
load('../R_simulation_data/SF_ZeorS_direct_n5000_meank8_a2_lambda_30_weight')
net15_dat = outputs_weight;
sub_plot_figures(net15_dat,color5,simsize,3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/SF network lambda_k,lambda_w=2.1 node removal
load('../R_simulation_data/SF_n10000_meank5_a08_lambda_w21_lambda_k21_node')
net7_dat = outputs_node;
sub_plot_figures(net7_dat,color4,simsize,1);
%% load('../R_simulation_data/SF network lambda_k,lambda_w=2.1 link removal
load('../R_simulation_data/SF_n10000_meank5_a08_lambda_w21_lambda_k21_link')
net8_dat = outputs_link;
sub_plot_figures(net8_dat,color4,simsize,2);

%% load('../R_simulation_data/SF network lambda_k,lambda_w=2.1 weight changes
load('../R_simulation_data/SF_n10000_meank5_a08_lambda_w21_lambda_k21_weight')
net9_dat = outputs_weight;
sub_plot_figures(net9_dat,color4,simsize,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/SF network lambda_k,lambda_w=3.0 node removal
load('../R_simulation_data/SF_n10000_meank5_a08_lambda_w30_lambda_k30_node')
net10_dat = outputs_node;
sub_plot_figures(net10_dat,color4,simsize,1);

%% load('../R_simulation_data/SF network lambda_k,lambda_w=3.0 link removal
load('../R_simulation_data/SF_n10000_meank5_a08_lambda_w30_lambda_k30_link')
net11_dat = outputs_link;
sub_plot_figures(net11_dat,color4,simsize,2);
%% load('../R_simulation_data/SF network lambda_k,lambda_w=3.0 weight changes
load('../R_simulation_data/SF_n10000_meank5_a08_lambda_w30_lambda_k30_weight')
net12_dat = outputs_weight;
sub_plot_figures(net12_dat,color4,simsize,3);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/SF network lambda=2.1 node removal
load('../R_simulation_data/SF_n10000_meank5_a08_lambdak_21_node')
net1_dat = outputs_node;
sub_plot_figures(net1_dat,color3,simsize,1);
%% load('../R_simulation_data/SF network lambda=2.1 link removal
load('../R_simulation_data/SF_n10000_meank5_a08_lambdak_21_link')
net2_dat = outputs_link;
sub_plot_figures(net2_dat,color3,simsize,2);
%% load('../R_simulation_data/SF network lambda=2.1 weight changes
load('../R_simulation_data/SF_n10000_meank5_a08_lambdak_21_weight')
net3_dat = outputs_weight;
sub_plot_figures(net3_dat,color3,simsize,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/SF network lambda=3.0 node removal
load('../R_simulation_data/SF_n10000_meank5_a08_lambdak_30_node')
net4_dat = outputs_node;
sub_plot_figures(net4_dat,color3,simsize,1);
%% load('../R_simulation_data/SF network lambda=3.0 link removal
load('../R_simulation_data/SF_n10000_meank5_a08_lambdak_30_link')
net5_dat = outputs_link;
sub_plot_figures(net5_dat,color3,simsize,2);
%% load('../R_simulation_data/SF network lambda=3.0 weight changes
load('../R_simulation_data/SF_n10000_meank5_a08_lambdak_30_weight')
net6_dat = outputs_weight;
sub_plot_figures(net6_dat,color3,simsize,3);



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/ER network lambda_w=2.1 node removal
load('../R_simulation_data/ER_n10000_meank5_a08_lambdaw_21_node')
net10_dat = outputs_node;
sub_plot_figures(net10_dat,color2,simsize,1);

%% load('../R_simulation_data/ER network lambda_w=2.1 link removal
load('../R_simulation_data/ER_n10000_meank5_a08_lambdaw_21_link')
net11_dat = outputs_link;
sub_plot_figures(net11_dat,color2,simsize,2);
%% load('../R_simulation_data/ER network lambda_w=2.1 weight changes
load('../R_simulation_data/ER_n10000_meank5_a08_lambdaw_21_weight')
net12_dat = outputs_weight;
sub_plot_figures(net12_dat,color2,simsize,3);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/ER network lambda_w=3.0 node removal
load('../R_simulation_data/ER_n10000_meank5_a08_lambdaw_30_node')
net10_dat = outputs_node;
sub_plot_figures(net10_dat,color2,simsize,1);

%% load('../R_simulation_data/ER network lambda_w=3.0 link removal
load('../R_simulation_data/ER_n10000_meank5_a08_lambdaw_30_link')
net11_dat = outputs_link;
sub_plot_figures(net11_dat,color2,simsize,2);
%% load('../R_simulation_data/ER network lambda_w=3.0 weight changes
load('../R_simulation_data/ER_n10000_meank5_a08_lambdaw_30_weight')
net12_dat = outputs_weight;
sub_plot_figures(net12_dat,color2,simsize,3);


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/ER network N=20 node removal
load('../R_simulation_data/ER_n20_meank8_a04_node')
net1_dat = outputs_node;
sub_plot_figures(net1_dat,color1,simsize,1);
%% load('../R_simulation_data/ER network N=20 link removal
load('../R_simulation_data/ER_n20_meank8_a04_link')
net2_dat = outputs_link;
sub_plot_figures(net2_dat,color1,simsize,2);
%% load('../R_simulation_data/ER network N=20 weight changes
load('../R_simulation_data/ER_n20_meank8_a04_weight')
net3_dat = outputs_weight;
sub_plot_figures(net3_dat,color1,simsize,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/ER network N=200 node removal
load('../R_simulation_data/ER_n200_meank12_a04_node')
net4_dat = outputs_node;
sub_plot_figures(net4_dat,color1,simsize,1);
%% load('../R_simulation_data/ER network N=200 link removal
load('../R_simulation_data/ER_n200_meank12_a04_link')
net5_dat = outputs_link;
sub_plot_figures(net5_dat,color1,simsize,2);
%% load('../R_simulation_data/ER network N=200 weight changes
load('../R_simulation_data/ER_n200_meank12_a04_weight')
net6_dat = outputs_weight;
sub_plot_figures(net6_dat,color1,simsize,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/ER network N=2000 node removal
load('../R_simulation_data/ER_n2000_meank16_a04_node')
net7_dat = outputs_node;
sub_plot_figures(net7_dat,color1,simsize,1);
%% load('../R_simulation_data/ER network N=2000 link removal
load('../R_simulation_data/ER_n2000_meank16_a04_link')
net8_dat = outputs_link;
sub_plot_figures(net8_dat,color1,simsize,2);
%% load('../R_simulation_data/ER network N=2000 weight changes
load('../R_simulation_data/ER_n2000_meank16_a04_weight')
net9_dat = outputs_weight;
sub_plot_figures(net9_dat,color1,simsize,3);
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load('../R_simulation_data/ER network N=20000 node removal
load('../R_simulation_data/ER_n20000_meank20_a04_node')
net10_dat = outputs_node;
sub_plot_figures(net10_dat,color1,simsize,1);

%% load('../R_simulation_data/ER network N=20000 link removal
load('../R_simulation_data/ER_n20000_meank20_a04_link')
net11_dat = outputs_link;
sub_plot_figures(net11_dat,color1,simsize,2);
%% load('../R_simulation_data/ER network N=20000 weight changes
load('../R_simulation_data/ER_n20000_meank20_a04_weight')
net12_dat = outputs_weight;
sub_plot_figures(net12_dat,color1,simsize,3);



%% theory
beta = [2:0.01:600];
xnnh = (beta+sqrt(beta.^2-4))/2;
xnnl = (beta-sqrt(beta.^2-4))/2;
plot([0:0.01:1.99,beta],[zeros(1,200),xnnh],'-k','LineWidth',0.5);
plot([0:0.01:1.99,beta],[zeros(1,200),xnnl],'--k','LineWidth',0.5);

plot([2,2],[0.000000001,1],'-k','LineWidth',0.5);
hold on

xlabel('b_{eff}','FontSize',36);
ylabel('x_{eff}','FontSize',36);

ylim([0.0001,1000])

function sub_plot_figures(net1_dat,net1,simsize,pertubation_type)
[m,n,z] = size(net1_dat);
if pertubation_type == 1
    for i = 1:m
        net1_dat_i(1:n,1:z) = net1_dat(i,:,:);
        plot(net1_dat_i(:,3),net1_dat_i(:,2),'.','MarkerSize',simsize,'MarkerFaceColor',net1,'MarkerEdgeColor',net1,'LineWidth',0.01);hold on;
    end
elseif pertubation_type == 2
    for i = 1:m
        net1_dat_i(1:n,1:z) = net1_dat(i,:,:);
        plot(net1_dat_i(:,3),net1_dat_i(:,2),'.','MarkerSize',simsize,'MarkerFaceColor',net1,'MarkerEdgeColor',net1,'LineWidth',0.01);hold on;
    end
else
    for i = 1:m
        net1_dat_i(1:n,1:z) = net1_dat(i,:,:);
        plot(net1_dat_i(:,3),net1_dat_i(:,2),'.','MarkerSize',simsize,'MarkerFaceColor',net1,'MarkerEdgeColor',net1,'LineWidth',0.01);hold on;
    end
end
    
