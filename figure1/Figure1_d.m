function Figure1_d
%% plot figure 1 d
%% these data points are obtained by M dynamics with 4 nodes

load Result_M_A23A24
figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);box(axes1,'on');hold(axes1,'on');
view(axes1,[26 24]);

x = 0.2:0.2:6; % the weight changes of link A_23
y = 0.2:0.2:6; % the weight changes of link A_24
[X,Y] = meshgrid(x,y);
surf(X,Y,hehe_mxl,'FaceColor','g','EdgeColor','g');hold on
grid on; 
alpha(0.5);
surf(X,Y,hehe_mxh,'FaceColor','g','EdgeColor','g');hold on
shading interp %flat %
xlabel('A_{23}');ylabel('A_{24}');zlabel('x')