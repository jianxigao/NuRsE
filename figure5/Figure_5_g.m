function Figure_5_g
%% plot figure 5 g

clear
clc
%% Theory results
simsize = 10;

%%
inter = 1;
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'YScale','log','YMinorTick','on','FontSize',24);
hold(axes1,'all');
subplot1 = subplot(2,1,1,'FontSize',24);
load TECB_weight_homo_2
plot(1-hehe1(1:inter:end,4),hehe1(1:inter:end,1),'-b^','MarkerSize',simsize,'MarkerEdgeColor','b','MarkerFaceColor','b');hold on
plot(1-hehe(1:inter:end,4),hehe(1:inter:end,1),'-ro','MarkerSize',simsize,'MarkerEdgeColor','r','MarkerFaceColor','w');hold on
ylabel('x','FontSize',24)
legend('Real E. coli','Homo E. coli')
set(gca,'FontSize',24);
ylim([0,5])
box on
subplot(2,1,2,'FontSize',24)
load TYB_weight_a2_homo_2
plot(1-hehe1(1:inter:end,4),hehe1(1:inter:end,1),'-b^','MarkerSize',simsize,'MarkerEdgeColor','b','MarkerFaceColor','b');hold on
plot(1-hehe(1:inter:end,4),hehe(1:inter:end,1),'-ro','MarkerSize',simsize,'MarkerEdgeColor','r','MarkerFaceColor','w');hold on
xlabel('f_w','FontSize',24);ylabel('x','FontSize',24)
legend('Real S. cerevisiae','Homo S. cerevisiae')
set(gca,'FontSize',24);
ylim([0,7])
box on
