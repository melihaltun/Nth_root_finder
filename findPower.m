% @fileName findPower.m
% @author Melih Altun @2015

function x = findPower(base, power)
%raises base number to the given power
tolr = 0.00001;
x=1;
powerResidue = mod(power,1);
power = power - powerResidue;  % find integer power first
if(powerResidue<tolr)   % stop calling findRoot when residue gets negligible
    powerResidue=0;
end
if(power>0)
    for i=1:power
        x = x*base;
    end
end
if(power<0)
    for i=power:-1
        x = x/base;
    end
end
if(powerResidue>0)    % now calculate power from remaining root
    x=x*findRoot(base,1/powerResidue);
end

      