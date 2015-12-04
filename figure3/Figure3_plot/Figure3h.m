function Figure3h
%% plot figure 3 h

clear
clc
%% Theory results
simsize = 1;

figure1 = figure('color',[1 1 1]);
axes1 = axes('Parent',figure1,'FontSize',24);
box(axes1,'on');hold(axes1,'on');

%% weight TYB
load TYB_weight_a2
outputs_weight = outputs;
[m,n,z] = size(outputs_weight);
for i = 1:m
    weight(1:n,1:z) = outputs_weight(i,:,:);
    x = weight(:,3);y = weight(:,2);
    plot(x,y,'b.','MarkerSize',simsize,'MarkerFaceColor','b','MarkerEdgeColor','b')
    hold on
end
%% link TYB
load TYB_link_a2
outputs_link = outputs;
[m,n,z] = size(outputs_link);
for i = 1:m
    link(1:n,1:z) = outputs_link(i,:,:);
    x = link(:,3);y = link(:,2); 
    plot(x,y,'g.','MarkerSize',simsize,'MarkerFaceColor','g','MarkerEdgeColor','g')
    hold on
end
%% node TYB
load TYB_node_a2
outputs_node = outputs;
[m,n,z] = size(outputs_node);
for i = 1:m
    node(1:n,1:z) = outputs_node(i,:,:);
    x = node(:,3);y = node(:,2);
    plot(x,y,'r.','MarkerSize',simsize,'MarkerFaceColor','r','MarkerEdgeColor','r')
    hold on
end
%% weight TECB
load TECB_weight_a2
outputs_weight = outputs;
[m,n,z] = size(outputs_weight);
weight = [];
for i =1:m
    weight(1:n,1:z) = outputs_weight(i,:,:);weight = weight(1:1:end,:);
    plot(weight(:,3),weight(:,2),'b.','MarkerSize',simsize,'MarkerFaceColor','b','MarkerEdgeColor','b')
    hold on
end
%% link TECB
load TECB_link_a2
outputs_link = outputs;
[m,n,z] = size(outputs_link);
link =[];
for i = 1:m
    link(1:n,1:z) = outputs_link(i,:,:);
    plot(link(:,3),link(:,2),'g.','MarkerSize',simsize,'MarkerFaceColor','g','MarkerEdgeColor','g')
end
%% node TECB
load TECB_node_a2 
outputs_node = outputs;
[m,n,z] = size(outputs_node);
node = [];
for i = 1:m
    node(1:n,1:z) = outputs_node(i,:,:);
    plot(node(:,3),node(:,2),'r.','MarkerSize',simsize,'MarkerFaceColor','r','MarkerEdgeColor','r')
end

beta = 2:0.01:7;
xnnh = (beta+sqrt(beta.^2-4))/2; % the analytical high state for xnn
xnnl = (beta-sqrt(beta.^2-4))/2; % the analytical low state for xnn
plot([1:0.01:1.99,beta],[zeros(1,100),xnnh],'-k','LineWidth',2);
plot(beta,xnnl,'--k','LineWidth',1)
xlim([0,7])
ylim([0,7])
xlabel('\beta_{eff}','FontSize',36);
ylabel('x_{eff}','FontSize',36)
