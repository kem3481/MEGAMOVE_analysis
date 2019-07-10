%% Reading in Fixation Data
targetPosFix = FixationbyRadius(1:179, 1:3);
targetPosFix = table2array(targetPosFix);

penaltyPosFix = FixationbyRadius(1:179, 4:6);
penaltyPosFix = table2array(penaltyPosFix);

collisionPosFix = FixationbyRadius(1:179, 7:9);
collisionPosFix = table2array(collisionPosFix);
%% Target and Collision positions raw Fication
targetVcollision = [targetPosFix penaltyPosFix collisionPosFix];

figure(1);
scatter3(targetVcollision(1:179, 1), targetVcollision(1:179, 2), targetVcollision(1:179,3), 50, 'r', 'filled'); hold on;
scatter3(targetVcollision(1:179, 4), targetVcollision(1:179, 5), targetVcollision(1:179, 6), 50, 'r', 'd', 'filled');
scatter3(targetVcollision(1:179, 7), targetVcollision(1:179, 8), targetVcollision(1:179,6), 50, 'r'); hold off; 

%% Target and collision positions by radius, fixation
figure(2);
title('Fixation'); hold on;
scatter3(targetVcollision(1:60, 1), targetVcollision(1:60, 2), targetVcollision(1:60,3), 50, 'r', 'filled');
scatter3(targetVcollision(1:60, 4), targetVcollision(1:60, 5), targetVcollision(1:60,6), 50, 'r', 'd', 'filled'); 
scatter3(targetVcollision(1:60, 7), targetVcollision(1:60, 8), targetVcollision(1:60, 9), 50, 'r');
scatter3(targetVcollision(61:120, 1), targetVcollision(61:120, 2), targetVcollision(61:120,3), 50, 'g', 'filled'); 
scatter3(targetVcollision(61:120, 4), targetVcollision(61:120, 5), targetVcollision(61:120,6), 50, 'g', 'd', 'filled');
scatter3(targetVcollision(61:120, 7), targetVcollision(61:120, 8), targetVcollision(61:120, 9), 50, 'g');
scatter3(targetVcollision(121:179, 1), targetVcollision(121:179, 2), targetVcollision(121:179,3), 50, 'b', 'filled'); 
scatter3(targetVcollision(121:179, 7), targetVcollision(121:179, 8), targetVcollision(121:179, 9), 50, 'b', 'd', 'filled');
scatter3(targetVcollision(121:179, 4), targetVcollision(121:179, 5), targetVcollision(121:179,6), 50, 'b'); hold off; 

%% Reading in Free Viewing Data
targetPosFV = FVbyRadius(1:179, 1:3);
targetPosFV = table2array(targetPosFV);

penaltyPosFV = FVbyRadius(1:179, 4:6);
penaltyPosFV = table2array(penaltyPosFV);

collisionPosFV = FVbyRadius(1:179, 7:9);
collisionPosFV = table2array(collisionPosFV);

%% FV

targetVcollisionFV = [targetPosFV penaltyPosFV collisionPosFV];

figure(3);
scatter3(targetVcollisionFV(1:179, 1), targetVcollisionFV(1:179, 2), targetVcollisionFV(1:179,3), 50, 'r', 'filled'); hold on;
scatter3(targetVcollisionFV(1:179, 7), targetVcollisionFV(1:179, 8), targetVcollisionFV(1:179, 9), 50, 'r')
scatter3(targetVcollisionFV(1:179, 4), targetVcollisionFV(1:179, 5), targetVcollisionFV(1:179,6), 50, 'r', 'd', 'filled'); hold off; 

%% Target and collision positions by radius, FV
figure(4);
title('Free Viewing'); hold on;
scatter3(targetVcollisionFV(1:60, 1), targetVcollisionFV(1:60, 2), targetVcollisionFV(1:60,3), 50, 'r', 'filled');
scatter3(targetVcollisionFV(1:60, 4), targetVcollisionFV(1:60, 5), targetVcollisionFV(1:60,6), 50, 'r', 'd', 'filled'); 
scatter3(targetVcollisionFV(1:60, 7), targetVcollisionFV(1:60, 8), targetVcollisionFV(1:60, 9), 50, 'r');
scatter3(targetVcollisionFV(61:120, 1), targetVcollisionFV(61:120, 2), targetVcollisionFV(61:120,3), 50, 'g', 'filled'); 
scatter3(targetVcollisionFV(61:120, 4), targetVcollisionFV(61:120, 5), targetVcollisionFV(61:120,6), 50, 'g', 'd', 'filled');
scatter3(targetVcollisionFV(61:120, 7), targetVcollisionFV(61:120, 8), targetVcollisionFV(61:120, 9), 50, 'g');
scatter3(targetVcollisionFV(121:179, 1), targetVcollisionFV(121:179, 2), targetVcollisionFV(121:179,3), 50, 'b', 'filled'); 
scatter3(targetVcollisionFV(121:179, 7), targetVcollisionFV(121:179, 8), targetVcollisionFV(121:179, 9), 50, 'b', 'd', 'filled');
scatter3(targetVcollisionFV(121:179, 4), targetVcollisionFV(121:179, 5), targetVcollisionFV(121:179,6), 50, 'b'); hold off; 

%% Finding Relative Collision Positions
% Fixation
for i = 1:59
    for j = 1:3
        SradFix(i, j) = targetPosFix(i, j) - collisionPosFix(i, j);
        SFixPen(i, j) = penaltyPosFix(i, j) - collisionPosFix(i, j);
    end
end

for i = 60:119
    for j = 1:3
        MradFix(i-59, j) = targetPosFix(i, j) - collisionPosFix(i, j);
        MFixPen(i-59, j) = penaltyPosFix(i, j) - collisionPosFix(i, j);
    end
end

for i = 120:179
    for j = 1:3
        LradFix(i-119, j) = targetPosFix(i, j) - collisionPosFix(i, j);
        LFixPen(i-119, j) = penaltyPosFix(i, j) - collisionPosFix(i, j);
    end
end

% Free viewing
for i = 1:59
    for j = 1:3
        SradFV(i, j) = targetPosFV(i, j) - collisionPosFV(i, j);
        SFVPen(i, j) = penaltyPosFV(i, j) - collisionPosFV(i, j);
    end
end

for i = 60:119
    for j = 1:3
        MradFV(i-59, j) = targetPosFV(i, j) - collisionPosFV(i, j);
        MFVPen(i-59, j) = penaltyPosFV(i, j) - collisionPosFV(i, j);
    end
end

for i = 120:179
    for j = 1:3
        LradFV(i-119, j) = targetPosFV(i, j) - collisionPosFV(i, j);
        LFVPen(i-119, j) = penaltyPosFV(i, j) - collisionPosFV(i, j);
    end
end

%% Calculating Ratios
for i = 1:59
    for j = 1:3
        SRadFixRatio(i, j) = abs(SradFix(i, j))/abs(SFixPen(i, j));
        SRadFVRatio(i, j) = abs(SradFV(i, j))/abs(SFVPen(i, j));
    end
end

for i = 1:60
    for j = 1:3
        MRadFixRatio(i, j) = abs(MradFix(i, j))/abs(MFixPen(i, j));
        MRadFVRatio(i, j) = abs(MradFV(i, j))/abs(MFVPen(i, j));
        
        LRadFixRatio(i, j) = abs(LradFix(i, j))/abs(LFixPen(i, j));
        LRadFVRatio(i, j) = abs(LradFV(i, j))/abs(LFVPen(i, j));
    end
end

%% Average of Ratios
SRadFixRatio = [SRadFixRatio(:, 1) SRadFixRatio(:, 3)];
SRadFVRatio = [SRadFVRatio(:, 1) SRadFVRatio(:, 3)];

MRadFixRatio = [MRadFixRatio(:, 1) MRadFixRatio(:, 3)];
MRadFVRatio = [MRadFVRatio(1:14, 1) MRadFVRatio(1:14, 2); MRadFVRatio(16:60, 1) MRadFVRatio(16:60, 3)];

LRadFixRatio = [LRadFixRatio(:, 1) LRadFixRatio(:, 3)];
LRadFVRatio = [LRadFVRatio(:, 1) LRadFVRatio(:, 3)];


SRadFixRatioMean = mean(SRadFixRatio);
SRadFixRatioMean = sqrt(SRadFixRatioMean(1)^2 + SRadFixRatioMean(2)^2);
SRadFVRatioMean = mean(SRadFVRatio);
SRadFVRatioMean = sqrt(SRadFVRatioMean(1)^2 + SRadFVRatioMean(2)^2);

MRadFixRatioMean = mean(MRadFixRatio);
MRadFixRatioMean = sqrt(MRadFixRatioMean(1)^2 + MRadFixRatioMean(2)^2);
MRadFVRatioMean = mean(MRadFVRatio);
MRadFVRatioMean = sqrt(MRadFVRatioMean(1)^2 + MRadFVRatioMean(2)^2);

LRadFixRatioMean = mean(LRadFixRatio);
LRadFixRatioMean = sqrt(LRadFixRatioMean(1)^2 + LRadFixRatioMean(2)^2);
LRadFVRatioMean = mean(LRadFVRatio);
LRadFVRatioMean = sqrt(LRadFVRatioMean(1)^2 + LRadFVRatioMean(2)^2);
%%
figure(8);
bar([[SRadFixRatioMean; MRadFixRatioMean; LRadFixRatioMean] [SRadFVRatioMean; MRadFVRatioMean; LRadFVRatioMean]]); hold on;
legend({'Fixation', 'Free Viewing'}, 'Location', 'north'); 
ylabel('Difference Ratio (Target/Penalty)');
xlabel('Eccentricity Size');
hold off;