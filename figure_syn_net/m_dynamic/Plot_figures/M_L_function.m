function M_L_function


simsize = 6;
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24,'XScale','log','YScale','log');
box(axes1,'on');
hold(axes1,'on');

load('../L_function_data/all_results')
the_color = 'r';
plot(all_FL,all_LF,'s','MarkerSize',simsize,'Color',the_color,'MarkerFaceColor',the_color,'MarkerEdgeColor',the_color);hold on;
load('../L_function_data/all_results_real')
the_color = 'b';
plot(all_FL,all_LF,'s','MarkerSize',simsize,'Color',the_color,'MarkerFaceColor',the_color,'MarkerEdgeColor',the_color)

plot([10,50000],[10,50000],'k','LineWidth',0.1)
xlim([10,50000])
ylim([10,50000])
legend('Synthetic Networks','Real Networks')

xlabel('FL')
ylabel('LF')
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24,'XScale','log','YScale','log');
box(axes1,'on');
hold(axes1,'on');
load('../L_function_data/all_results')
the_color = 'r';
plot(all_GL,all_LG,'o','MarkerSize',simsize,'Color',the_color,'MarkerFaceColor',the_color,'MarkerEdgeColor',the_color);hold on;
load('../L_function_data/all_results_real')
the_color = 'b';
plot(all_GL,all_LG,'o','MarkerSize',simsize,'Color',the_color,'MarkerFaceColor',the_color,'MarkerEdgeColor',the_color)

plot([10,50000],[10,50000],'k','LineWidth',0.1)
xlim([10,50000])
ylim([10,50000])
legend('Synthetic Networks','Real Networks')
xlabel('GL')
ylabel('LG')