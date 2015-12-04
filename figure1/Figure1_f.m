function Figure1_f
%% plot figure 1 f

%% these data points are from 4 buses power system
load 4_buses_power
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);box(axes1,'on');hold(axes1,'on');
view(axes1,[-146 30]);

y = 0.01:0.1:5.61;x = 0.01:0.1:4.21;
[X,Y] = meshgrid(x,y);
surf(X,Y,hehe,'FaceColor','r','EdgeColor','r')
grid on;

alpha(0.5);
shading interp
xlabel('A_{23}');ylabel('A_{24}');zlabel('x')

xlim([0,4.2])
ylim([0,5.6])