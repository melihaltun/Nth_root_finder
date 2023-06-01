% @fileName findRoot.m
% @author Melih Altun @2015

function x = findRoot(a, n)
tolr = 0.00001;
%Finds n^th root of 'a' using Newton's method
if (n == 0)
    x=1;   % a^0 = 1 for all a
else
    if (a<0 && mod(n,2) == 0) 
        nth_rt_neg1 = cos(pi/n) + 1i * sin(pi/n);
        x = nth_rt_neg1*(findRoot(-a, n));
        return
    elseif(a<0 && mod(n,1) ~= 0)
        error('Solving fractional exponents for negative bases is not implemented yet.')
    end
    if (n<0)
        n = n*(-1);
        a = 1/a;  % invert base for negative powers
    end

    x = 1;  % seed value  %this can be improved for fast convergence
    max_iteration = 100;

    for i=1:max_iteration
        fx = findPower(x,n) - a;      % f(x)
        fx_x = n*(findPower(x,n-1));   %d/dx f(x)
        x_prev = x;    % keep previous value
        x = x - (fx/fx_x);
        %x
        if (abs(x-x_prev)<tolr)   % check convergence
            break;
        end
    end
end

