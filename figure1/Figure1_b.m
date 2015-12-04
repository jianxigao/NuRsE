function Figure1_b
%% plot figure 1 b

B = 1;maxbeta = 4;
beta = 0.01:0.01:maxbeta;
x(1,1:length(beta)) = 0;
x(2,1:length(beta)) = (beta+sqrt(beta.^2-4*B^2))/2/B;
x(3,1:length(beta)) = (beta-sqrt(beta.^2-4*B^2))/2/B;
figure1 = figure('color',[1 1 1]);
plot(beta,x(1,:)-0.4,'-r','LineWidth',2);hold on

plot(beta(201:length(beta)),x(2,201:length(beta)),'-b','LineWidth',4);hold on
plot(beta(201:10:length(beta)),x(3,201:10:length(beta)),'--g','LineWidth',3);hold on
plot([beta(201),beta(201)],[-0.4,x(2,201)],'--k','LineWidth',2)
ylim([-0.8,maxbeta])
xlim([1,maxbeta])


annotation(figure1,'arrow',[0.2 0.2],[0.8 0.2]);
annotation(figure1,'arrow',[0.3 0.3],[0.8 0.2]);


annotation(figure1,'arrow',[0.55 0.55],[0.9 0.65]);
annotation(figure1,'arrow',[0.75 0.75],[0.9 0.8]);

annotation(figure1,'arrow',[0.55 0.55],[0.4 0.6]);
annotation(figure1,'arrow',[0.75 0.75],[0.35 0.75]);

annotation(figure1,'arrow',[0.55 0.55],[0.3 0.2]);
annotation(figure1,'arrow',[0.75 0.75],[0.28 0.2]);

axis off
annotation('arrow',[0.132 0.132],[0.11 0.93],'LineStyle','-','color',[0 0 0],'LineWidth',2);
annotation('arrow',[0.132 0.9],[0.11 0.11],'LineStyle','-','color',[0 0 0],'LineWidth',2);
annotation(figure1,'textbox',...
    [0.824285714285713 0.0771428571428575 0.02 0.0200000000000001],...
    'String',{'\beta'},...
    'FontSize',36,...
    'FontName','Helvetica',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);


annotation(figure1,'textbox',...
    [0.37178571428571 0.0542857142857199 0.04 0.0400000000000001],...
    'String',{'\beta_c'},...
    'FontSize',28,...
    'FontName','Helvetica',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);


annotation(figure1,'textbox',...
    [0.0667857142857142 0.506190476190478 0.05 0.05],'String','x','FontSize',36,...
    'FontName','Times',...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);


