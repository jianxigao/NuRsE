function Bipartite_to_projection_net(M)
%   Bipartite_to_projection_net returns the projection networks from
%   mutualistic bipartitie network
%
%   Bipartite_to_projection_net(M)
%
%   Inputs:
%       M : mutualistic bipartitie network
%
%   Outputs:
%       file_name : save a .mat file including all the network data
%       A : the projection flower network
%       B : the projection bee network
%       M : mutualistic bipartitie network
%
%   See also remove_one_effect_the_other

%   MATRESILIENCE1.0
%   $Id: iteration_real_M.m Created at 2015-10-23 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)

[m,n] = size(M);

A = zeros(n);

kn = sum(M');% a vector denotes the number of flowers each bee visits

% According to Eq. (25) in the SI to calculate the A matrix
for i = 1:m
    for j = 1:n-1
        for k = j+1:n
            if M(i,j) ~= 0 && M(i,k) ~= 0
                A(j,k) = A(j,k)+M(i,k)/kn(i)+M(i,j)/kn(i);
                A(k,j) = A(k,j)+M(i,j)/kn(i)+M(i,k)/kn(i);
            end
        end
    end
end

B = zeros(m); 

km = sum(M); 
%% According to Eq. (25) in the SI to calculate the B matrix
for i = 1:n
    for j = 1:m-1
        for k = j+1:m
            if M(j,i) ~= 0 && M(k,i) ~= 0
                B(j,k) = B(j,k)+M(k,i)/km(i)+M(j,i)/km(i);
                B(k,j) = B(k,j)+M(j,i)/km(i)+M(k,i)/km(i);
            end
        end
    end
end

save file_name A B M
