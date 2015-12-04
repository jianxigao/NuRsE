function Figure1_a
%% plot figure 1 a

beta = 1.01:0.01:10;
load M_x

figure1 = figure('color',[1 1 1]);
yy1 = [x(2,1:283),x(3,284:459)];
yy2 = [x(5,284:459),x(2,460:end)];
plot(beta(1:459),yy1,'-r','LineWidth',4);hold on
plot(beta([284:10:450,451:2:459]),x(4,[284:10:450,451:2:459]),'--g','LineWidth',3);hold on
plot(beta(284:end),yy2,'-b','LineWidth',4);hold on
plot([beta(459),beta(459)],[-0.2,x(5,458)],'--k','LineWidth',2)
ylim([-0.2,1.1])
xlim([4,7])

annotation(figure1,'arrow',[0.17 0.17],[0.15 0.26]);
annotation(figure1,'arrow',[0.33 0.33],[0.15 0.265]);
annotation(figure1,'arrow',[0.47 0.47],[0.15 0.28]);

annotation(figure1,'arrow',[0.17 0.17],[0.38 0.275]);
annotation(figure1,'arrow',[0.33 0.33],[0.36 0.28]);
annotation(figure1,'arrow',[0.47 0.47],[0.33 0.295]);

annotation(figure1,'arrow',[0.17 0.17],[0.5 0.6]);
annotation(figure1,'arrow',[0.33 0.33],[0.45 0.65]);
annotation(figure1,'arrow',[0.47 0.47],[0.38 0.69]);


annotation(figure1,'arrow',[0.17 0.17],[0.85 0.65]);
annotation(figure1,'arrow',[0.33 0.33],[0.85 0.7]);
annotation(figure1,'arrow',[0.47 0.47],[0.85 0.74]);



annotation(figure1,'arrow',[0.65 0.65],[0.85 0.74]);
annotation(figure1,'arrow',[0.83 0.83],[0.85 0.76]);

annotation(figure1,'arrow',[0.65 0.65],[0.40 0.72]);
annotation(figure1,'arrow',[0.83 0.83],[0.38 0.74]);

axis off
annotation('arrow',[0.132 0.132],[0.11 0.93],'LineStyle','-','color',[0 0 0]);
annotation('arrow',[0.132 0.95],[0.11 0.11],'LineStyle','-','color',[0 0 0]);

annotation(figure1,'textbox',...
    [0.52392857142857 0.0580952380952403 0.04 0.0399999999999999],...
    'String','\beta_c',...
    'FontSize',28,...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);

annotation(figure1,'textbox',...
    [0.886428571428569 0.0533333333333356 0.04 0.0399999999999999],...
    'String','\beta',...
    'FontSize',28,...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);

annotation(figure1,'textbox',...
    [0.0703571428571428 0.520476190476191 0.05 0.05],'String',{'x'},...
    'FontSize',36,...
    'FontName','Times',...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);


