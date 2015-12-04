function j = BisectionSearch(x_array,x)
%   BisectionSearch is a function to to bisection search for 
%   producing SF networks.
%
%   j = BisectionSearch(x_array,x)
%
%   Inputs:
%       x_array : x_array must be monotonic, either increasing or decreasing.
%       x : a value
%
%   Outputs:
%       j : return a value j such that x is between x_array[j-1] and x_array[j].
%           j= -1 or n is returned to indicate that x is out of range.
%
%   See also generate_samew_SFk, generate_SFw_SFk, ect. 

%   NuRsEv1.0
%   $Id: BisectionSearch.m Created at 2015-10-22 13:45:29 $
%   by Jianxi Gao, Northeastern University, Boston
%   Copyright (c) 2012-2015 by Center for Complex Network Research (CCNR)


n = length(x_array);
jl = 0; % initialize lower
ju = n;  % and upper limits
ascnd=(x_array(n) >= x_array(1)); % true if ascending order of table, false otherwise
    
while (ju-jl > 1) 
    jm=ceil((ju+jl)/2); % compute a midpoint
    if ((x > x_array(jm)) == ascnd) 
        jl=jm;       % replace either the lower limit
    else
        ju=jm;       % or the upper limit, as appropriate
    end
end
    
if (x == x_array(1)) 
    j=1;
elseif (x == x_array(n)) 
    j=n-1;
else
    j=jl+1;
end
