%% Gain for all points on large overlap

ylist = linspace(-.04, .07, 111);
xlist = linspace(-.04, .04, 81);

for i = 1:111
    for j = 1:81
        y = ylist(i);
        x = xlist(j);
        sig = .001;
        
        fun = @(xprime,yprime) (1/(2*pi*sig))*exp(-(((xprime - x).^2) + ((yprime - y).^2))/(2*sig));
        
        aL = integral2(fun, -.02, .015, -.02, .02);
        bL = integral2(fun, .015, .05, -.02, .02);
        
        gainL = (100*aL) - (100*bL);
        
        GainL(i, j) = gainL;
    end
end

%% Finding Coordinates of Max Gain

MaxL = max(GainL(:));

GainL(41, 21);

% Optimal aim point is (-.02, 0) for spread of .001 for large overlap

dataLy = mean(LOLFixlist(:, 1));
dataLx = mean(LOLFixlist(:, 3));

% Participant average aim point was (-.017, .003) with stndard deviation of
% .0112 in the x and .0104 in the y
%% Gain for all points on medium overlap

for i = 1:111
    for j = 1:81
        y = ylist(i);
        x = xlist(j);
        sig = .001;
        
        fun = @(xprime,yprime) (1/(2*pi*sig))*exp(-(((xprime - x).^2) + ((yprime - y).^2))/(2*sig));
        
        aM = integral2(fun, -.02, .016667, -.02, .02);
        bM = integral2(fun, .016667, .053334, -.02, .02);
        
        gainM = (100*aM) - (100*bM);
        
        GainM(i, j) = gainM;
    end
end

%% Finding Coordinates of Max Gain

MaxM = max(GainM(:));

GainM(41, 22);

% Optimal aim point is (-.019, 0) for spread of .001 for medium overlap

dataMy = mean(MOLFixlist(:, 1));
dataMx = mean(MOLFixlist(:, 3));

% Participant average aim point was (-.015, .00005) with standard deviation
% of .0099 in the x and .0137 in the y

%% Gain for all points on small overlap

for i = 1:111
    for j = 1:81
        y = ylist(i);
        x = xlist(j);
        sig = .001;
        
        fun = @(xprime,yprime) (1/(2*pi*sig))*exp(-(((xprime - x).^2) + ((yprime - y).^2))/(2*sig));
        
        aS = integral2(fun, -.02, .018333, -.02, .02);
        bS = integral2(fun, .018333, .0566, -.02, .02);
        
        gainS = (100*aS) - (100*bS);
        
        GainS(i, j) = gainS;
    end
end

%% Finding Coordinates of Max Gain

MaxS = max(GainS(:));

GainS(41, 24);

% Optimal aim point is (-.017, 0) for spread of .001 in each direction for small overlap

dataSy = mean(SOLFixlist(:, 1));
dataSx = mean(SOLFixlist(:, 3));

% Participant average aim was (-.014, .0003) with std .0091 in the x and
% .013 in the y

