function [num,output_one,lambda] = one_iteration_P(sp,ep,inter,new_a,num,Sg,Ybus0,number0,w,output_one)
%   one_iteration_P calculates calculates the voltage collapse for one load
%   bus for the given initial lambda and final lambda. 
%
%   [num,output_one,lambda] = one_iteration_P(sp,ep,inter,new_a,num,Sg,Ybus0,the_loadbus,w,output_one)
%
%   Inputs:
%       sp : the start lambda
%       ep : the end lambda
%       inter : the lambda increase each step
%       new_a : the new system
%       num : the steps to calculate 
%       Sg : the power on load buses
%       Ybus0 : the network matrix
%       the_loadbus : the loabus to get the perturbations
%       w : weighted degree vector of all nodes
%       output_one : the results
%
%   Outputs:
%       num : the steps to calculate 
%       output_one : the results
%       lambda : the lambda after increase the load.
%
%   Format of output_one:
%
%   output is a 5-by-num matrix.
%   row 1 : Voltage amplitude 
%   row 2 : beta_eff     
%   row 3 : lambda    
%   row 4 : x_eff    
%   row 5 : gamma     
%
%
%   NuRsEv1.0
%   $Id: one_iteration_P.m Created at 2015-10-25 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


for lambda = sp:inter:ep
    a = new_a;
    num = num+1;
    b = a.bus;
    b(number0,3) = b(number0,3).*(1+lambda);
    b(number0,4) = b(number0,4).*(1+lambda);
    a.bus = b;
    Sd = complex(b(:,3),b(:,4));
    Snow = Sg-Sd;Snow = Snow/a.baseMVA;
    
    results = runpf(a);
    b = results.bus;
    c = b(1:end,8);
    angle = b(1:end,9)*pi/180;
    VV = c.*complex(cos(angle),sin(angle));
    V = mean(c);%V_nn = (Ybus0*VV)./w;

    gamma0 = abs(w(number0))^2/(abs(Snow(number0))*abs(w(number0))-real(Snow(number0)*w(number0)));
    gamma0 = sqrt(gamma0);
    for ii = 1:length(w)
        Ybus(ii,:) = Ybus0(ii,:)*gamma0/w(ii);
    end
    Vn1 = abs(sum(Ybus*VV)/sum(sum(Ybus)));
    if ~results.success
        num = num-1;
        break;
    else
        beta = abs(sum(sum(Ybus*Ybus))/sum(sum(Ybus)));
        output_one(1,num) = full(V);
        output_one(2,num) = full(beta);
        output_one(3,num) = lambda;
        output_one(4,num) = full(Vn1);
        output_one(5,num) = min(gamma0);
    end
end
