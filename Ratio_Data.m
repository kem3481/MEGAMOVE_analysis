% Reading in Data

targetPos = Results(1:20, 3:5);
targetPos = table2array(targetPos);

%penaltyPos = Results(1:20, 6:8);
%penaltyPos = table2array(penaltyPos);

collisionPos = Results(1:20, 9:11);
collisionPos = table2array(collisionPos);

% Difference between positions fixation
targetCompDiffFix = matrix(180, 3);
penaltyCompDiffFix = matrix(180, 3);
targetTotalDiffFix = array(180);
penaltyTotalDiffFix = array(180);
differenceRatioFix = array(180);

% Difference between positions
targetCompDiff = matrix(180, 3);
penaltyCompDiff = matrix(180, 3);
targetTotalDiff = array(180);
penaltyTotalDiff = array(180);
differenceRatio = array(180);

for j = 1:180
for i = 1:3
   targetCompDiffFix(j, i) = targetPosFix(j, i) - collisionPosFix(j, i);
   penaltyCompDiffFix(j, i) = penaltyPosFix(j, i) - collisionPosFix(j, i);
end
    targetTotalDiffFix(j) = (sum(targetCompDiffFix(j, :).^2))^.5;
    penaltyTotalDiffFix(j) = (sum(penaltyCompDiffFix(j, :).^2))^.5;
    
    differenceRatioFix(j) = targetTotalDiffFix(j)/penaltyTotalDiffFix(j);
end

for j = 1:180
for i = 1:3
   targetCompDiff(j, i) = targetPos(j, i) - collisionPos(j, i);
   penaltyCompDiff(j, i) = penaltyPos(j, i) - collisionPos(j, i);
end
    targetTotalDiff(j) = (sum(targetCompDiff(j, :).^2))^.5;
    penaltyTotalDiff(j) = (sum(penaltyCompDiff(j, :).^2))^.5;
    
    differenceRatio(j) = targetTotalDiff(j)/penaltyTotalDiff(j);
end

%% Collective Data

x1 = 1:9;
y1 = differenceRatioFix(1:180); % fixation
y2 = differenceRatio(1:180); % free motion

figure(1);
xlabel("Trial Type")
ylabel("Difference Ration")
title('Trial Type and Difference Ration')
hold on
plot(x1,y1);
plot(x1, y2);
hold off

%% Overlap Data

overlaps = Results(1:20, 13);
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
ylabel("Difference Ratio")
title('Overlap and Difference Ratio')
hold on
plot(x2, y3, 'o');
plot(x2, y4, 'x');
hold off

%% Eccentricity Data

eccentricity = Results(1:20, 15);
eccentricity = table2array(eccentricity);
eccentricity = string(eccentricity);
eccentricity = str2double(eccentricity);

x3 = eccentricity;
y5 = dummyVar;
y6 = flip(dummyVar);

figure(3);
xlabel("Eccentricity (Radians)")
ylabel("Difference Ratio")
title('Eccentricity and Difference Ratio');
hold on
plot(x3, y5, 'o');
plot(x3, y6, 'x');
hold off