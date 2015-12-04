function outputs = sub_function_lambda_P(old_a,num_nodes,set_load_bus)
%   sub_function_lambda_P calculates the voltage collapse for all load
%   buses.
%
%   output = sub_function_lambda_P(a,num_nodes,set_load_bus)
%
%   Inputs:
%       a : The power system
%       num_nodes : number of nodes in the system
%       set_load_bus : the set of load buses with non-zero load
%
%   Outputs:
%       output : the output of cacluation
%
%   Format of outputs:
%
%   output is an 1-by-N cell array corresponding to the length of
%   set_load_bus. In each cell, there is a 5-by-M matrix.
%   row 1 : Voltage amplitude 
%   row 2 : beta_eff     
%   row 3 : lambda    
%   row 4 : x_eff    
%   row 5 : gamma     
%   M denotes the steps the system loss its resilience
%
%
%   NuRsEv1.0
%   $Id: sub_function_lambda_P.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


new_a = old_a;
b = new_a.branch; [m,n] = size(b);
% times = rand(m,1)+0.5;
% b(:,3) = b(:,3).*times;b(:,4) = b(:,4).*times;
b(:,3) = b(:,3);b(:,4) = b(:,4);
new_a.branch = b;

[Ybus, Yf, Yt] = makeYbus(new_a.baseMVA, new_a.bus, new_a.branch);
Ybus000 = Ybus;
Ybus = -Ybus;
for j = 1:num_nodes
    Ybus(j,j) = 0;
    w(j,1) = Ybus000(j,j);
end

%% 
aaa = new_a.gen;
bbb = aaa(:,[2,3]);
number1 = aaa(:,1);
Sg = zeros(num_nodes,2);
for ii = 1:length(number1)
    Sg(number1(ii),[1,2]) = bbb(ii,[1,2]);
end
Sg = complex(Sg(:,1),Sg(:,2));

Ybus0 =Ybus; 

for ii = 1:length(set_load_bus)
    number0 = set_load_bus(ii);
    output_one = [];num = 0;
    %% start simulation on perturbation of lambda
    [num,output_one,lambda] = one_iteration_P(0,100000,1,new_a,num,Sg,Ybus0,number0,w,output_one);
    [num,output_one,lambda] = one_iteration_P(lambda-1,lambda,0.1,new_a,num,Sg,Ybus0,number0,w,output_one);
    [num,output_one,lambda] = one_iteration_P(lambda-0.1,lambda,0.01,new_a,num,Sg,Ybus0,number0,w,output_one);
    [num,output_one,lambda] = one_iteration_P(lambda-0.01,lambda,0.001,new_a,num,Sg,Ybus0,number0,w,output_one);
    [num,output_one,lambda] = one_iteration_P(lambda-0.001,lambda,0.0001,new_a,num,Sg,Ybus0,number0,w,output_one);
    [num,output_one,lambda] = one_iteration_P(lambda-0.0001,lambda,0.00001,new_a,num,Sg,Ybus0,number0,w,output_one);
    [num,output_one,lambda] = one_iteration_P(lambda-0.00001,lambda,0.000001,new_a,num,Sg,Ybus0,number0,w,output_one);
    outputs{ii} = output_one;
%     abs(w)
%     pause
end
