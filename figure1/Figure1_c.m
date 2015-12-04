function Figure1_c
%% plot figure 1 c

figure1 = figure('color',[1 1 1]);

Va = 1;
R = 0.5; X = 0.6;beta = 0.6;
PL = 0.01:0.001:0.283;
a = (R*PL+X*PL*beta)/Va;b = (-R*PL*beta+X*PL)/Va;

V1 = (-2*(a/Va^2-1)+sqrt((2*a/Va-1).^2-4*(1/Va^2)*(a.^2+b.^2)))/2/Va^2;
V2 = (-2*(a/Va^2-1)-sqrt((2*a/Va-1).^2-4*(1/Va^2)*(a.^2+b.^2)))/2/Va^2;

plot(PL,V1,'-b','LineWidth',4);hold on;
plot(PL,V2,'--g','LineWidth',3);hold on;

plot([PL(end),PL(end)],[0,V1(end)],'--k','LineWidth',2)

ylim([0.1,1.7])
xlim([0,0.45])


annotation(figure1,'arrow',[0.25 0.25],[0.9 0.79]);
annotation(figure1,'arrow',[0.45 0.45],[0.9 0.67]);

annotation(figure1,'arrow',[0.25 0.25],[0.35 0.72]);
annotation(figure1,'arrow',[0.45 0.45],[0.4 0.6]);

annotation(figure1,'arrow',[0.25 0.25],[0.3 0.2]);
annotation(figure1,'arrow',[0.45 0.45],[0.32 0.2]);


annotation(figure1,'arrow',[0.7 0.7],[0.7 0.2]);
annotation(figure1,'arrow',[0.8 0.8],[0.7 0.2]);

axis off
annotation('arrow',[0.132 0.132],[0.11 0.93],'LineStyle','-','color',[0 0 0],'LineWidth',2);
annotation('arrow',[0.132 0.9],[0.11 0.11],'LineStyle','-','color',[0 0 0],'LineWidth',2);

annotation(figure1,'textbox',...
    [0.609285714285709 0.051904761904767 0.0399999999999999 0.0400000000000001],...
    'String','\beta_c',...
    'FontSize',28,...
    'FontName','Helvetica',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);



annotation(figure1,'textbox',...
    [0.826071428571427 0.0771428571428574 0.02 0.0200000000000001],...
    'String','\beta',...
    'FontSize',36,...
    'FontName','Helvetica',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);


annotation(figure1,'textbox',...
    [0.0667857142857142 0.506190476190478 0.05 0.05],'String','x','FontSize',36,...
    'FontName','Times New Roman',...
    'FontAngle','italic',...
    'FitBoxToText','off',...
    'EdgeColor',[1 1 1]);
