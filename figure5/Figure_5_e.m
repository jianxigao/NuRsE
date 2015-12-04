function Figure_5_e
%% plot figure 5 e

mark_size = 10;


%% Net12
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'YScale','log','YMinorTick','on','FontSize',24);
hold(axes1,'all');
load 3PLANT_POLLINATOR_Robertson_1929_weight_A
net12n(1:8,1:7)=haha(32,:,:);
load beta_xnn00_net12;
net12 = xnn;w12 = [20.7:-5:8,7:-1:0]/20.7;

subplot(2,1,1)
plot(1-net12n(:,6),net12n(:,1),'-b^','MarkerSize',mark_size,'MarkerEdgeColor','b','MarkerFaceColor','b');hold on
plot(1-w12,net12(1,:),'-ro','MarkerSize',mark_size,'MarkerEdgeColor','r','MarkerFaceColor','w')

plot(1-net12n(:,6),net12n(:,2),'-b^','MarkerSize',mark_size,'MarkerEdgeColor','b','MarkerFaceColor','b');hold on
plot(1-w12,net12(3,:),'-ro','MarkerSize',mark_size,'MarkerEdgeColor','r','MarkerFaceColor','w')


legend('Real Net12','Homo Net12')
% xlabel('f_w','FontSize',24)
ylabel('x','FontSize',24)
set(gca,'FontSize',24);
box on
%% Net11
subplot(2,1,2)
load 3PLANT_POLLINATOR_Robertson_1929_weight_P
net11n(1:10,1:7)=haha(32,:,:);
load beta_xnn00_net11;
net11 = xnn;w11 = [62.3:-10:8,7:-1:0]/62.3;

plot(1-net11n(:,6),net11n(:,1),'-b^','MarkerSize',mark_size,'MarkerEdgeColor','b','MarkerFaceColor','b');hold on
plot(1-w11,net11(1,:),'-ro','MarkerSize',mark_size,'MarkerEdgeColor','r','MarkerFaceColor','w')

plot(1-w11,net11(3,:),'-ro','MarkerSize',mark_size,'MarkerEdgeColor','r','MarkerFaceColor','w')
plot(1-net11n(:,6),net11n(:,2),'-b^','MarkerSize',mark_size,'MarkerEdgeColor','b','MarkerFaceColor','b');hold on

legend('Real Net11','Homo Net11')
xlabel('f_w','FontSize',24)
ylabel('x','FontSize',24)
set(gca,'FontSize',24);
box on