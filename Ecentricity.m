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

%%
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