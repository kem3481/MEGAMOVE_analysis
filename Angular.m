%% Import Data in terms of overlap amount
% Fixation
targetPosFixOL = FixationbyOverlap(1:179, 1:3);
targetPosFixOL = table2array(targetPosFixOL);

collisionPosFixOL = FixationbyOverlap(1:179, 7:9);
collisionPosFixOL = table2array(collisionPosFixOL);

targetVcollisionOL = [targetPosFixOL collisionPosFixOL];

% FV
targetPosFVOL = FVbyOverlap(1:179, 1:3);
targetPosFVOL = table2array(targetPosFVOL);

collisionPosFVOL = FVbyOverlap(1:179, 7:9);
collisionPosFVOL = table2array(collisionPosFVOL);

targetVcollisionFVOL = [targetPosFVOL collisionPosFVOL];
%%
for i = 1:179
    u = targetPosFixOL(i, :);
    v = collisionPosFixOL(i, :);
    cosTheta = dot(u,v)/(norm(u)*norm(v));
    theta(i) = acosd(cosTheta);
    
    ufv = targetPosFVOL(i, :);
    vfv = collisionPosFVOL(i, :);
    cosThetaFV = dot(ufv,vfv)/(norm(ufv)*norm(vfv));
    thetaFV(i) = acosd(cosThetaFV);
end

FixSmall = mean(theta(1:59));
FixSmallsd = std(theta(1:59));
FixMedium = mean(theta(60:119));
FixLarge = mean(theta(120:179));

FVSmall = mean(thetaFV(1:59));
FVMedium = mean(thetaFV(60:119));
FVLarge = mean(thetaFV(120:179));

figure(5);
scatter(1:59, theta(1:59), 'r'); hold on;
scatter(1:60, theta(60:119), 'g');
scatter(1:60, theta(120:179), 'b'); hold off;

figure(6);
scatter(1:59, thetaFV(1:59), 'r'); hold on;
scatter(1:60, thetaFV(60:119), 'g');
scatter(1:60, thetaFV(120:179), 'b'); hold off;