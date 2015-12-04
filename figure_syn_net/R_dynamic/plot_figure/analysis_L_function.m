function analysis_L_function
color1 = 'r';%[166,206,227]/255;
color2 = 'r';%[31,120,180]/255;
color3 = 'r';%[178,223,138]/255;
color4 = 'r';%[51,160,44]/255;
color5 = 'r';%[251,154,153]/255;
color6 = 'r';%[227,26,28]/255;

simsize = 6;
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24,'XScale','log','YScale','log');
box(axes1,'on');
hold(axes1,'on');
load('../L_function_data/all_results_FL')

plot(all_FL(1:4),all_LF(1:4),'o','MarkerSize',simsize,'Color',color1,'MarkerFaceColor',color1,'MarkerEdgeColor',color1);hold on;
load('../L_function_data/all_real')
plot(all_FL(1:2),all_LF(1:2),'s','MarkerSize',simsize,'Color','b','MarkerFaceColor','b','MarkerEdgeColor','b');hold on;

load('../L_function_data/all_results_FL')
plot(all_FL(5:6),all_LF(5:6),'o','MarkerSize',simsize,'Color',color2,'MarkerFaceColor',color2,'MarkerEdgeColor',color2);hold on;
plot(all_FL(7:8),all_LF(7:8),'o','MarkerSize',simsize,'Color',color3,'MarkerFaceColor',color3,'MarkerEdgeColor',color3);hold on;
plot(all_FL(9:10),all_LF(9:10),'o','MarkerSize',simsize,'Color',color4,'MarkerFaceColor',color4,'MarkerEdgeColor',color4);hold on;
plot(all_FL(11:12),all_LF(11:12),'o','MarkerSize',simsize,'Color',color5,'MarkerFaceColor',color5,'MarkerEdgeColor',color5);hold on;
plot(all_FL(13:14),all_LF(13:14),'o','MarkerSize',simsize,'Color',color6,'MarkerFaceColor',color6,'MarkerEdgeColor',color6);hold on;

plot([0.01,1000],[0.01,1000],'k','LineWidth',0.1)
legend('Model1-Model14','S. cerevisiae and E. coli')
xlabel('FL','FontSize',36)
ylabel('LF','FontSize',36)
xlim([1,1000])

simsize = 6;
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24,'XScale','log','YScale','log');
box(axes1,'on');
hold(axes1,'on');
load('../L_function_data/all_results_GL')
plot(all_GL(1:4),all_LG(1:4),'o','MarkerSize',simsize,'Color',color1,'MarkerFaceColor',color1,'MarkerEdgeColor',color1);hold on;
load('../L_function_data/all_real')
plot(all_GL(1:2),all_LG(1:2),'s','MarkerSize',simsize,'Color','b','MarkerFaceColor','b','MarkerEdgeColor','b');hold on;

load('../L_function_data/all_results_GL')
plot(all_GL(5:6),all_LG(5:6),'o','MarkerSize',simsize,'Color',color2,'MarkerFaceColor',color2,'MarkerEdgeColor',color2);hold on;
plot(all_GL(7:8),all_LG(7:8),'o','MarkerSize',simsize,'Color',color3,'MarkerFaceColor',color3,'MarkerEdgeColor',color3);hold on;
plot(all_GL(9:10),all_LG(9:10),'o','MarkerSize',simsize,'Color',color4,'MarkerFaceColor',color4,'MarkerEdgeColor',color4);hold on;
plot(all_GL(11:12),all_LG(11:12),'o','MarkerSize',simsize,'Color',color5,'MarkerFaceColor',color5,'MarkerEdgeColor',color5);hold on;
plot(all_GL(13:14),all_LG(13:14),'o','MarkerSize',simsize,'Color',color6,'MarkerFaceColor',color6,'MarkerEdgeColor',color6);hold on;

plot([0.01,1000],[0.01,1000],'k','LineWidth',0.1)
xlim([1,1000])
legend('Model1-Model14','S. cerevisiae and E. coli')
xlabel('GL','FontSize',36)
ylabel('LG','FontSize',36)