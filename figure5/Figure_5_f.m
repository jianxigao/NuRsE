function Figure_5_f
%% plot figure 5 f

figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);box(axes1,'on');hold(axes1,'on');
view(axes1,[-20 22]);

D = 0.01:0.1:8;
H = 0.01:0.1:6;
[DD,HH] = meshgrid(D,H);
SS = (2-DD)./HH;
surf(DD,HH,SS)
grid on; 
camlight; 
alpha(0.6);
zlim([-1,1])
xlim([0,8])
ylim([0,6])

 
plot3(5.0667,13.2757/5.0667,-0.2464,'r^')
plot3(6.9000,24.2109/6.9000,-0.0830,'b^')

shading interp 


plot3([0,0],[0,0],[-1,1],'r','LineWidth',2)
plot3([0,0],[0,6],[-1,-1],'r','LineWidth',2)
plot3([0,8],[6,6],[-1,-1],'r','LineWidth',2)

plot3([0,0],[6,6],[-1,1/3],'r','LineWidth',2)
plot3([0,2],[0,0],[-1,-1],'r','LineWidth',2)
plot3([0,2],[0,0],[1,1],'r','LineWidth',2)
plot3([0,0],[0,2],[1,1],'r','LineWidth',2)

plot3([0,0],[6,2],[1,1],'b','LineWidth',2)
plot3([8,2],[0,0],[1,1],'b','LineWidth',2)
plot3([8,2],[0,0],[-1,-1],'b','LineWidth',2)
plot3([0,0],[6,6],[1,1/3],'b','LineWidth',2)

plot3([8,8],[0,6],[1,1],'b','LineWidth',2)
plot3([8,8],[0,0],[-1,1],'b','LineWidth',2)
plot3([8,8],[0,6],[-1,-1],'b','LineWidth',2)
plot3([8,8],[6,6],[-1,1],'b','LineWidth',2)
plot3([8,0],[6,6],[1,1],'b','LineWidth',2)


plot3([2,2],[0,0],[-1,1],'g','LineWidth',2)

plot3([0,2],[2,0],[1,1],'g','LineWidth',2)
H = 2:0.01:6;
D = zeros(1,length(H));
S = 2./H;
plot3(D,H,S,'g','LineWidth',2)


S = -1:0.01:1/3;
H = ones(1,length(S))*6;
D = 2-6*S;
plot3(D,H,S,'g','LineWidth',2)

H = 0:0.01:6;
S = -ones(1,length(H));
D = 2+H;
plot3(D,H,S,'g','LineWidth',2)

xlabel('D')
ylabel('H')
zlabel('S')




