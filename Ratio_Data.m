%% Reading in Data

% Target, Penalty and COllision Positions
targetPosFix = Fixend(1:180, 3:5);
targetPosFix = table2array(targetPosFix);

penaltyPosFix = Fixend(1:180, 6:8);
penaltyPosFix = table2array(penaltyPosFix);

collisionPosFix = Fixend(1:180, 9:11);
collisionPosFix = table2array(collisionPosFix);

targetPosFV = FVend(1:180, 3:5);
targetPosFV = table2array(targetPosFV);

penaltyPosFV = FVend(1:180, 6:8);
penaltyPosFV = table2array(penaltyPosFV);

collisionPosFV = FVend(1:180, 9:11);
collisionPosFV = table2array(collisionPosFV);

% Target and Eccentricity lists
targetTypesFix = Fixend(1:180, 13);
targetTypesFix = table2array(targetTypesFix);
targetTypesFix = cellstr(targetTypesFix);
targetTypesFix = char(targetTypesFix);
for i = 1:180
    if targetTypesFix(i) == 'S'
        targettypesFix(i) = 1;
    end
    if targetTypesFix(i) == 'M'
        targettypesFix(i) = 2;
    end
    if targetTypesFix(i) == 'L'
        targettypesFix(i) = 3;
    end
end

eccentricitiesFix = Fixend(1:180, 15);
eccentricitiesFix = table2array(eccentricitiesFix);
eccentricitiesFix = eccentricitiesFix';


targetTypesFV = FVend(1:180, 13);
targetTypesFV = table2array(targetTypesFV);
targetTypesFV = cellstr(targetTypesFV);
targetTypesFV = char(targetTypesFV);
for i = 1:180
    if targetTypesFV(i) == 'S'
        targettypesFV(i) = 1;
    end
    if targetTypesFV(i) == 'M'
        targettypesFV(i) = 2;
    end
    if targetTypesFV(i) == 'L'
        targettypesFV(i) = 3;
    end
end

eccentricitiesFV = FVend(1:180, 15);
eccentricitiesFV = table2array(eccentricitiesFV);
eccentricitiesFV = eccentricitiesFV';

% Difference Ratios
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
   targetCompDiffFV(j, i) = targetPosFV(j, i) - collisionPosFV(j, i);
   penaltyCompDiffFV(j, i) = penaltyPosFV(j, i) - collisionPosFV(j, i);
end
    targetTotalDiffFV(j) = (sum(targetCompDiffFV(j, :).^2))^.5;
    penaltyTotalDiffFV(j) = (sum(penaltyCompDiffFV(j, :).^2))^.5;
    
    differenceRatioFV(j) = targetTotalDiffFV(j)/penaltyTotalDiffFV(j);
end

%% Overlap Data

x1 = targettypesFix;
x = targettypesFV;
y1 = differenceRatioFix; 
y2 = differenceRatioFV;
OverlapFix = [targettypesFix ; differenceRatioFix];
OverlapFix = OverlapFix';
OverlapFix = sortrows(OverlapFix, 1);
OverlapFV = [targettypesFV ; differenceRatioFV];
OverlapFV = OverlapFV';
OverlapFV = sortrows(OverlapFV, 1);

SmallOverlapAverageFix = mean(OverlapFix(1:65, 2));
SmallOverlapSDFix = std(OverlapFix(1:65, 2));

MediumOverlapAverageFix = mean(OverlapFix(66:122, 2));
MediumOverlapSDFix = std(OverlapFix(66:122, 2));

LargeOverlapAverageFix = mean(OverlapFix(123:180, 2));
LargeOverlapSDFix = std(OverlapFix(123:180, 2));

SmallOverlapAverageFV = mean(OverlapFV(1:65, 2));
SmallOverlapSDFV = std(OverlapFV(1:65, 2));

MediumOverlapAverageFV = mean(OverlapFV(66:122, 2));
MediumOverlapSDFV = std(OverlapFV(66:122, 2));

LargeOverlapAverageFV = mean(OverlapFV(123:180, 2));
LargeOverlapSDFV = std(OverlapFV(123:180, 2));

AveragesFixOverlap = [SmallOverlapAverageFix MediumOverlapAverageFix LargeOverlapAverageFix];
SDsFixOverlap = [SmallOverlapSDFix MediumOverlapSDFix LargeOverlapSDFix];
AveragesFVOverlap = [SmallOverlapAverageFV MediumOverlapAverageFV LargeOverlapAverageFV];
SDsFVOverlap = [SmallOverlapSDFV MediumOverlapSDFV LargeOverlapSDFV];


figure(1);
hold on;
xlabel("Overlap Type")
ylabel("Difference Ratio")
title('Overlap Type and Difference Ratio')
errorbar(1:3, AveragesFixOverlap, SDsFixOverlap); hold on;
errorbar(1:3, AveragesFVOverlap, SDsFVOverlap);
legend('Fix', 'Free Viewing')
hold off;
hold off;

%% Eccentricity Data

x2 = eccentricitiesFix;
x3 = eccentricitiesFV;
y3 = differenceRatioFix; 
y4 = differenceRatioFV;
TestFix = [eccentricitiesFix ; differenceRatioFix];
TestFix = TestFix';
TestFix = sortrows(TestFix, 1);
TestFV = [eccentricitiesFV ; differenceRatioFV];
TestFV = TestFV';
TestFV = sortrows(TestFV, 1);

SmallEccAverageFix = mean(TestFix(1:65, 2));
SmallEccSDFix = std(TestFix(1:65, 2));

MediumEccAverageFix = mean(TestFix(66:122, 2));
MediumEccSDFix = std(TestFix(66:122, 2));

LargeEccAverageFix = mean(TestFix(123:180, 2));
LargeEccSDFix = std(TestFix(123:180, 2));

SmallEccAverageFV = mean(TestFV(1:65, 2));
SmallEccSDFV = std(TestFV(1:65, 2));

MediumEccAverageFV = mean(TestFV(66:122, 2));
MediumEccSDFV = std(TestFV(66:122, 2));

LargeEccAverageFV = mean(TestFV(123:180, 2));
LargeEccSDFV = std(TestFV(123:180, 2));

AveragesFix = [SmallEccAverageFix MediumEccAverageFix LargeEccAverageFix];
SDsFix = [SmallEccSDFix MediumEccSDFix LargeEccSDFix];
AveragesFV = [SmallEccAverageFV MediumEccAverageFV LargeEccAverageFV];
SDsFV = [SmallEccSDFV MediumEccSDFV LargeEccSDFV];

ecc = [1.2217 1.3090 1.3963];

figure(2);
hold on;
xlabel("Eccentricity")
ylabel("Difference Ratio")
title('Eccentricity and Difference Ratio')
errorbar(ecc, AveragesFix, SDsFix); hold on;
errorbar(ecc, AveragesFV, SDsFV);
legend('Fix', 'Free Viewing')
hold off;
hold off;
