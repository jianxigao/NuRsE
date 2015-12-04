function FIgure2_n
%% plot figure 2 n

clear
clc

simsize = 6;

% number_x = 100;
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24,'XScale','log','YScale','log');%
box(axes1,'on');
hold(axes1,'on');
color_net1 = 'r';color_net2 = 'c';
color_net3 = [0.3,0.75,0.93];color_net4 = [0.6,0.2,0];
color_net5 = [0.75,0.75,0];color_net6 = [1,0.6,0.78];
color_net7 = [0.75,0,0.75];color_net8 = [0,0.5,0];
color_net9 = [0,0.75,0.75];color_net10 = [0,0.45,0.74];
color_net11 = 'b';color_net12 = 'm';
color_net13 = [0.52,0.32,0.32];color_net14 = [0.42,0.25,0.39];

%% plot theory
load beta_xnn
plot(beta0,xnn,'k','Linewidth',1);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net12
load('../results/node/3PLANT_POLLINATOR_Robertson_1929_A')
Robertson_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Robertson_n0,color_net12,simsize,perturbation_type)
load('../results/link/3PLANT_POLLINATOR_Robertson_1929_link_A')
Robertson_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Robertson_l0,color_net12,simsize,perturbation_type)
load('../results/weight/3PLANT_POLLINATOR_Robertson_1929_weight_A')
Robertson_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Robertson_w0,color_net12,simsize,perturbation_type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net13
load('../results/node/5PLANT_SEED_DISPERSER_Schleuning_2010_P')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net13,simsize,perturbation_type)
load('../results/link/5PLANT_SEED_DISPERSER_Schleuning_2010_link_P')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net13,simsize,perturbation_type)
load('../results/weight/5PLANT_SEED_DISPERSER_Schleuning_2010_weight_P')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net13,simsize,perturbation_type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net6
load('../results/node/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_A')
Clements_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Clements_n0,color_net6,simsize,perturbation_type)
load('../results/link/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_link_A')
Clements_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Clements_l0,color_net6,simsize,perturbation_type)
load('../results/weight/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_weight_A')
Clements_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Clements_w0,color_net6,simsize,perturbation_type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net8
load('../results/node/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_A')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net8,simsize,perturbation_type)
load('../results/link/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_link_A')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net8,simsize,perturbation_type)
load('../results/link/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_link_A')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net8,simsize,perturbation_type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net10
load('../results/node/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_A')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net10,simsize,perturbation_type)
load('../results/link/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_link_A')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net10,simsize,perturbation_type)
load('../results/weight/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_weight_A')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net10,simsize,perturbation_type)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net14
load('../results/node/5PLANT_SEED_DISPERSER_Schleuning_2010_A')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net14,simsize,perturbation_type)
load('../results/link/5PLANT_SEED_DISPERSER_Schleuning_2010_link_A')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net14,simsize,perturbation_type)
load('../results/weight/5PLANT_SEED_DISPERSER_Schleuning_2010_weight_A')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net14,simsize,perturbation_type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net11
load('../results/node/3PLANT_POLLINATOR_Robertson_1929_P')
Robertson_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Robertson_n0,color_net11,simsize,perturbation_type)
load('../results/link/3PLANT_POLLINATOR_Robertson_1929_link_P')
Robertson_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Robertson_l0,color_net11,simsize,perturbation_type)
load('../results/weight/3PLANT_POLLINATOR_Robertson_1929_weight_P')
Robertson_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Robertson_w0,color_net11,simsize,perturbation_type)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net9
load('../results/node/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_P')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net9,simsize,perturbation_type)
load('../results/link/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_link_P')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net9,simsize,perturbation_type)
load('../results/weight/4PLANT_POLLINATOR_BEES_WASPS_Santos_2010_weight_P')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net9,simsize,perturbation_type)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net7
load('../results/node/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_P')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net7,simsize,perturbation_type)
load('../results/link/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_link_P')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net7,simsize,perturbation_type)
load('../results/weight/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_weight_P')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net7,simsize,perturbation_type)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net5
load('../results/node/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_P')
Clements_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Clements_n0,color_net5,simsize,perturbation_type)
load('../results/link/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_link_P')
Clements_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Clements_l0,color_net5,simsize,perturbation_type)
load('../results/weight/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_weight_P')
Clements_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Clements_w0,color_net5,simsize,perturbation_type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net4
load('../results/node/1PLANT_ANT_WEBS_Bluthgen_2004_A')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net4,simsize,perturbation_type)
load('../results/link/1PLANT_ANT_WEBS_Bluthgen_2004_link_A')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net4,simsize,perturbation_type)
load('../results/weight/1PLANT_ANT_WEBS_Bluthgen_2004_weight_A')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net4,simsize,perturbation_type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net3
load('../results/node/1PLANT_ANT_WEBS_Bluthgen_2004_P')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net3,simsize,perturbation_type)
load('../results/link/1PLANT_ANT_WEBS_Bluthgen_2004_link_P')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net3,simsize,perturbation_type)
load('../results/weight/1PLANT_ANT_WEBS_Bluthgen_2004_weight_P')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net3,simsize,perturbation_type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net2
load('../results/node/6ANEMONE_FISH_WEBS_Coral_reefs2007_A')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net2,simsize,perturbation_type)
load('../results/link/6ANEMONE_FISH_WEBS_Coral_reefs2007_link_A')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net2,simsize,perturbation_type)
load('../results/weight/6ANEMONE_FISH_WEBS_Coral_reefs2007_weight_A')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net2,simsize,perturbation_type)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net1
load('../results/node/6ANEMONE_FISH_WEBS_Coral_reefs2007_P')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_beta_new(Coral_n0,color_net1,simsize,perturbation_type)
load('../results/link/6ANEMONE_FISH_WEBS_Coral_reefs2007_link_P')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_beta_new(Coral_l0,color_net1,simsize,perturbation_type)
load('../results/weight/6ANEMONE_FISH_WEBS_Coral_reefs2007_weight_P')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_beta_new(Coral_w0,color_net1,simsize,perturbation_type)


%% label
xlim([0,100]);ylim([0.1,31])
xlabel('\beta_{eff}','FontSize',36)
ylabel('x_{eff}','FontSize',36)


function sub_plot_figures_beta_new(outputs0,color_net,simsize,simbal)

if simbal == 1      %% node perturbation
    [m,n,z] = size(outputs0);
    for i = 1:1:m
        outputs(1:n,1:z) = outputs0(i,:,:);
        x = outputs(:,5); y1 = outputs(:,1);y2 = outputs(:,2);
        j = find_zores(x);
        plot(x(1:j),y1(1:j),'.','MarkerSize',simsize,'MarkerEdgeColor',color_net);hold on%,'MarkerFaceColor',color_net
        plot(x(1:j),y2(1:j),'.','MarkerSize',simsize,'MarkerEdgeColor',color_net)
    end
elseif simbal == 2  %% link perturbation
    [m,n,z] = size(outputs0);
    for i = 1:1:m
        outputs(1:n,1:z) = outputs0(i,:,:);
        x = outputs(:,5); y1 = outputs(:,1);y2 = outputs(:,2);
        j = find_zores(x);
        plot(x(1:j),y1(1:j),'.','MarkerSize',simsize,'MarkerEdgeColor',color_net);hold on
        plot(x(1:j),y2(1:j),'.','MarkerSize',simsize,'MarkerEdgeColor',color_net)
    end
else                %% weight perturbation        
    [m,n,z] = size(outputs0);
    for i = 1:1:m
        outputs(1:n,1:z) = outputs0(i,:,:);
        x = outputs(:,5); y1 = outputs(:,1);y2 = outputs(:,2);
        plot(x,y1,'.','MarkerSize',simsize,'MarkerEdgeColor',color_net);hold on
        plot(x,y2,'.','MarkerSize',simsize,'MarkerEdgeColor',color_net)
    end
end

function j = find_zores(x)
for j = length(x):-1:1
    if x(j) ~= 0
        break
    end  
end


