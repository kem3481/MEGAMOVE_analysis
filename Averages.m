%% Difference Fixation and FV to target

for i = 1:179
    for j = 1:3
    differenceFixXYZ(i, j) = targetVcollision(i, j) - targetVcollision(i, j+3);
    differenceFVXYZ(i, j) = targetVcollisionFV(i, j) - targetVcollisionFV(i, j+3);
    end
    
    differenceFix(i) = sqrt(((differenceFixXYZ(i, 1))^2) + ((differenceFixXYZ(i, 2))^2) + ((differenceFixXYZ(i, 3))^2));
    differenceFV(i) = sqrt(((differenceFVXYZ(i, 1))^2) + ((differenceFVXYZ(i, 2))^2) + ((differenceFVXYZ(i, 3))^2));
end

%% Difference Fixation and FV to penalty
penaltyPosFix = FixationbyRadius(1:179, 4:6);
penaltyPosFix = table2array(penaltyPosFix);

penaltyPosFV = FVbyRadius(1:179, 4:6);
penaltyPosFV = table2array(penaltyPosFV);

penaltyVcollision = [penaltyPosFix collisionPosFix];
penaltyVcollisionFV = [penaltyPosFV collisionPosFV];

for i = 1:179
    for j = 1:3
    differenceFixXYZPen(i, j) = penaltyVcollision(i, j) - penaltyVcollision(i, j+3);
    differenceFVXYZPen(i, j) = penaltyVcollisionFV(i, j) - penaltyVcollisionFV(i, j+3);
    end
    
    differenceFixPen(i) = sqrt(((differenceFixXYZPen(i, 1))^2) + ((differenceFixXYZPen(i, 2))^2) + ((differenceFixXYZPen(i, 3))^2));
    differenceFVPen(i) = sqrt(((differenceFVXYZPen(i, 1))^2) + ((differenceFVXYZPen(i, 2))^2) + ((differenceFVXYZPen(i, 3))^2));
end
%% Plotting Difference Fixation

figure (9);
scatter(1:59, differenceFix(1:59), 'r', 'filled'); hold on;
scatter(1:60, differenceFix(60:119), 'g', 'filled');
scatter(1:60, differenceFix(120:179), 'b', 'filled'); 
scatter(1:59, differenceFV(1:59), 'r', 'd'); 
scatter(1:60, differenceFV(60:119), 'g', 'd');
scatter(1:60, differenceFV(120:179), 'b', 'd'); hold off;

%%
FixationS = mean(differenceFix(1:59));
FixationM = mean(differenceFix(60:119));
FixationL = mean(differenceFix(120:179));
FixationSsd = std(differenceFix(1:59));
FixationMsd = std(differenceFix(60:119));
FixationLsd = std(differenceFix(120:179));

FVS = mean(differenceFV(1:59));
FVM = mean(differenceFV(60:119));
FVL = mean(differenceFV(120:179));
FVSsd = std(differenceFV(1:59));
FVMsd = std(differenceFV(60:119));
FVLsd = std(differenceFV(120:179));

%%
x = 1:3;
y = [FixationS FixationM FixationL; FVS FVM FVL];
y = y';

figure(10);
bar(x, y); hold on;