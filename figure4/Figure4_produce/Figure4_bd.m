function Figure4_bd
%% plot figure 4 b and d

clear
clc

%%  IEEE 14
load bus14
[m,n] = size(bus14);
num = 10;simsize = 6;
color_net1 = [27,158,119]/255;

figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);%,'XScale','log'
hold(axes1,'all');
for i = 1:m
    for j = 1:n
        e10 = bus14{i,j};
        e10 = abs(e10');
        plot(e10(:,3),e10(:,1),'-s','Color',color_net1,'Linewidth',0.01,'MarkerSize',simsize,'MarkerFaceColor',color_net1,'MarkerEdgeColor',color_net1);hold on;
        plot([e10(end,3),e10(end,3)],[e10(end,1),0],'-','Color',color_net1)
    end
end

box on
xlabel('\lambda')
ylabel('x')
ylim([0,1.07])
%% beta space
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);%
hold(axes1,'all');
[m,n] = size(bus14);color_net1 = [27,158,119]/255;
for i = 1:m
    for j = 1:n
        e10 = bus14{i,j};
        e10 = abs(e10');
        e10(:,2) = e10(:,2);
        plot(e10(:,2),e10(:,4),'-s','Color',color_net1,'Linewidth',0.01,'MarkerSize',simsize,'MarkerFaceColor',color_net1,'MarkerEdgeColor',color_net1);hold on;
        plot([e10(end,2),e10(end,2)],[e10(end,4),0],'-','Color',color_net1)
    end
end
ylim([0,1.07])




