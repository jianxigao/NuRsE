function Figure_5_d
%   Figure1_main Plots all the Figures 5 d in our paper "Universal
%   resilience patterns in complex networks".
%
%  
%   NuRsEv2.0
%   $Id: Figure1_main.m Created at 2018-2-26 11:35:29 $
%   by Jianxi Gao, RPI, Troy, NY
%   Copyright (c) 2012-2018 by Center for Complex Network Research (CCNR)


figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24,'XScale','log','YScale','log');box(axes1,'on');hold(axes1,'on');%
%% plot phase space
minx2 = 0.1;maxx2 = 400; % the space size
beta_c = 6.97; 
x3 = linspace(minx2,beta_c,1000);
y3 = beta_c-x3+minx2;
plot(x3,y3,'k');hold on % plot the critical curve
yy3 = [x3(1),x3,x3(end)];
xx3 = [x3(1),y3,x3(1)];
x4 = linspace(minx2,maxx2,1000);
y4 = maxx2*ones(1,1000);
yy4 = [x4(1),x4,x4(end)];xx4 = [x4(1),y4,x4(1)];
fill(xx4,yy4,[0,0,1],'FaceAlpha',0.4); % plot the resilient regime
fill(xx3,yy3,[1,0,0],'FaceAlpha',0.65); % plot the non-resilient regime
xlim([minx2,maxx2])
ylim([minx2,maxx2])


%% plot the data of networks The informations of the 14 networks
%    
a = [0.2738    0.7272   13.7570    0.3000   10.8000    0.5181    2.9570    0.8885    0.8983
    0.4380    0.8558    7.7429    0.5600    5.3846    1.0393    2.3583    0.7671    0.7602
    1.8906    2.6552   27.6593    0.1600    9.5686    0.5848   18.0907    0.8924    0.8832
    0.9846    1.4512   22.6534    0.2000   11.4146    0.4902   11.2387    0.9083    0.9043
    1.5710    2.2744   36.6160    0.1200   14.2418    0.3929   22.3742    0.9088    0.9250
    1.9747    3.1522   18.2226    0.2200    6.1259    0.9135   12.0967    0.7668    0.7989
    0.5832    1.0626   16.5204    0.2600   10.4348    0.5363    6.0856    0.8842    0.8944
    1.4084    2.0713    8.7762    0.5000    3.6441    1.5356    5.1322    0.6166    0.0418
    0.7250    1.4023   11.1615    0.3600    6.4706    0.8648    4.6909    0.8017    0.8128
    0.8251    1.5162   20.2946    0.2000   11.1200    0.5032    9.1746    0.8841    0.9017
    0.0501    0.4791   65.4515    0.0607   62.3289    0.0898    3.1225    0.9839    0.9839
    1.8233    2.2898   80.0419    0.0600   28.3506    0.1974   51.6913    0.9628    0.9638
    0.9799    1.3246   39.7175    0.1200   20.0606    0.2790   19.6569    0.9442    0.9480
    2.3555    2.9868   29.4373    0.1600    8.7727    0.6379   20.6646    0.8824    0.8708];

color_net1 = 'r';color_net2 = 'c';
color_net3 = [0.3,0.75,0.93];color_net4 = [0.6,0.2,0];
color_net5 = [0.75,0.75,0];color_net6 = [1,0.6,0.78];
color_net7 = [0.75,0,0.75];color_net8 = [0,0.5,0];
color_net9 = [0,0.75,0.75];color_net10 = [0,0.45,0.74];
color_net11 = 'b';color_net12 = 'm';
color_net13 = [0.52,0.32,0.32];color_net14 = [0.42,0.25,0.39];


i=1;colors=color_net1;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=2;colors=color_net2;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=3;colors=color_net3;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=4;colors=color_net4;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=5;colors=color_net5;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=6;colors=color_net6;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=7;colors=color_net7;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=8;colors=color_net8;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=9;colors=color_net9;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=10;colors=color_net10;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=11;colors=color_net11;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=12;colors=color_net12;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=13;colors=color_net13;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;
i=14;colors=color_net14;plot(a(i,5),a(i,7),'s','MarkerSize',2/a(i,4)+2,'MarkerFaceColor',colors,'MarkerEdgeColor',colors);hold on;


xlim([1,100]);
ylim([0.2,100]);



xlabel('D^f')
ylabel('H_f')
% legend('Net1','Net2','Net3','Net4','Net5','Net6','Net7','Net8','Net9','Net10','Net11','Net12','Net13','Net14')
