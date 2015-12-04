function Figure2_f
%% plot figure 2 a-l

simsize = 8;

color_net1 = 'r';color_net2 = 'c';
color_net3 = [0.3,0.75,0.93];color_net4 = [0.6,0.2,0];
color_net5 = [0.75,0.75,0];color_net6 = [1,0.6,0.78];
color_net7 = [0.75,0,0.75];color_net8 = [0,0.5,0];
color_net9 = [0,0.75,0.75];color_net10 = [0,0.45,0.74];
color_net11 = 'b';color_net12 = 'm';
color_net13 = [0.52,0.32,0.32];color_net14 = [0.42,0.25,0.39];



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% load data Net1
load('Results_node/6ANEMONE_FISH_WEBS_Coral_reefs2007_P')
Coral_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_f(Coral_n0,color_net1,simsize,perturbation_type,1)
xlim([0,0.9])
load('Results_link/6ANEMONE_FISH_WEBS_Coral_reefs2007_link_P')
Coral_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_f(Coral_l0,color_net1,simsize,perturbation_type,1)
load('Results_weight/6ANEMONE_FISH_WEBS_Coral_reefs2007_weight_P')
Coral_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_f(Coral_w0,color_net1,simsize,perturbation_type,1)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net5
load('Results_node/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_P')
Clements_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_f(Clements_n0,color_net5,simsize,perturbation_type,1)
load('Results_link/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_link_P')
Clements_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_f(Clements_l0,color_net5,simsize,perturbation_type,1)
load('Results_weight/2PLANT_POLLINATOR_BEES_WASPS_Clements_1923_weight_P_new')
Clements_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_f(Clements_w0,color_net5,simsize,perturbation_type,1)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% load data Net7
load('Results_node/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_P')
Robertson_n0 = outputs;perturbation_type = 1;%node
sub_plot_figures_f(Robertson_n0,color_net7,simsize,perturbation_type,1)
load('Results_link/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_link_P')
Robertson_l0 = outputs;perturbation_type = 2;%link
sub_plot_figures_f(Robertson_l0,color_net7,simsize,perturbation_type,1)
load('Results_weight/7PLANT_POLLINATOR_BEES_WASPS_Elberling_1999_weight_P')
Robertson_w0 = outputs;perturbation_type = 3;%weight
sub_plot_figures_f(Robertson_w0,color_net7,simsize,perturbation_type,1)

function sub_plot_figures_f(outputs0,color_net,simsize,simbal,inter)
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',28);
box(axes1,'on');
hold(axes1,'on');

if simbal == 1      %% node perturbation
    [m,n,z] = size(outputs0);
    for i = 1:m
        outputs(1:n,1:z) = outputs0(i,:,:);
        x = 1-outputs(:,6); y1 = outputs(:,3);y2 = outputs(:,4);
        j = find_zores(y1);
        plot(x(1:j),y1(1:j),'-','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',0.01);hold on
        plot(x(1:j),y2(1:j),'-','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',0.01);
    end
    xlabel('f_n','FontSize',36)
    ylabel('x','FontSize',36)
    color_net = 'k';
    plot(x(1:j),y1(1:j),'-v','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',2);hold on
    plot(x(1:j),y2(1:j),'-^','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',2);
  
    
elseif simbal == 2  %% link perturbation
    [m,n,z] = size(outputs0);
    for i = 1:m
        outputs(1:n,1:z) = outputs0(i,:,:);
        x = 1-outputs(:,6); y1 = outputs(:,3);y2 = outputs(:,4);
        j = find_zores(y1);
        plot(x(1:j),y1(1:j),'-','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',0.01);hold on
        plot(x(1:j),y2(1:j),'-','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',0.01);hold on
    end
    color_net = 'k';
    plot(x(1:j),y1(1:j),'-<','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',2);hold on
    plot(x(1:j),y2(1:j),'->','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',2);hold on
  
    xlabel('f_l','FontSize',36)
    ylabel('x','FontSize',36)
else                %% weight perturbation        
    [m,n,z] = size(outputs0);
    for i = 1:m
        outputs(1:n,1:z) = outputs0(i,:,:);
        x = 1-outputs(:,6);y1 = outputs(:,3);y2 = outputs(:,4);
        j = find_zores(y1);
        plot(x(1:j),y1(1:j),'-','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',0.01);hold on
        plot(x(1:j),y2(1:j),'-','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',0.01)
    end
    color_net = 'k';
    plot(x(1:j),y1(1:j),'-s','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',2);hold on
    plot(x(1:j),y2(1:j),'-o','MarkerSize',simsize,'MarkerFaceColor',color_net,'MarkerEdgeColor',color_net,'Color',color_net,'LineWidth',2)
    xlabel('f_w','FontSize',36)
    ylabel('x','FontSize',36)
end

%% delete the non relavent data
function j = find_zores(x)
for j = length(x):-1:1
    if x(j) ~= 0
        break
    end  
end
