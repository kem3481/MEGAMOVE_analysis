%% Trial Types
% 
% Case one: Small radius, small overlap
% Case two: Small radius, medium overlap
% Case three: Small radius, large overlap
% Case four: Medium radius, small overlap
% Case five: Medium radius, medium overlap
% Case six: Medium radius, large overlap
% Case seven: Large radius, small overlap
% Case eight: Large radius, medium overlap
% Case nine: Large radius, large overlap

dummyVar = linspace(100, 0, 180);
dummyVar = dummyVar';
%% Collective Data

x1 = 1:9; % 9 types of trials, 3 overlap x 3 eccentricities
y1 = dummyVar(1:180); % fixation data
y2 = dummyVar(1:180); % free viewing data



figure(1);
xlabel("Trial Type")
ylabel("Percent Correct") 
title('Trial Type and Accuracy')
hold on
plot(x1,y1);
plot(x1, y2);
hold off
%% Overlap Data

overlaps = Results(1:20, 6);
overlap = table2array(overlaps);
overlap = string(overlap);


for i = 1:20
    if overlap(i) == "SmallOverlap(Clone) (UnityEngine.GameObject)"
        overlap(i) = 1;
    end
    if overlap(i) == "MediumOverlap(Clone) (UnityEngine.GameObject)"
        overlap(i) = 2;
    end
    if overlap(i) == "LargeOverlap(Clone) (UnityEngine.GameObject)"
        overlap(i) = 3;
    end
end

overlap = str2double(overlap);

x2 = overlap;
y3 = dummyVar;
y4 = flip(dummyVar);

figure(2);
xlabel("Overlap Size")
ylabel("Percent COrrect")
title('Overlap and Accuracy')
hold on
plot(x2, y3, 'o');
plot(x2, y4, 'x');
hold off
%% Eccentricity Data

eccentricity = Results(1:20, 8);
eccentricity = table2array(eccentricity);
eccentricity = string(eccentricity);
eccentricity = str2double(eccentricity);

x3 = eccentricity;
y5 = dummyVar;
y6 = flip(dummyVar);

figure(3);
xlabel("Eccentricity (Radians)")
ylabel("Percent Correct")
title('Eccentricity and Accuracy');
hold on
plot(x3, y5, 'o');
plot(x3, y6, 'x');
hold off