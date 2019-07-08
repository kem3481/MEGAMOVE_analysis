%% Importing Data by Radius and Overlap
% Fixation
SRadSOLFix = Fixbyboth(1:19, 1:9);
SRadSOLFix = table2array(SRadSOLFix);

SRadMOLFix = Fixbyboth(20:39, 1:9);
SRadMOLFix = table2array(SRadMOLFix);

SRadLOLFix = Fixbyboth(40:59, 1:9);
SRadLOLFix = table2array(SRadLOLFix);

MRadSOLFix = Fixbyboth(60:79, 1:9);
MRadSOLFix = table2array(MRadSOLFix);

MRadMOLFix = Fixbyboth(80:99, 1:9);
MRadMOLFix = table2array(MRadMOLFix);

MRadLOLFix = Fixbyboth(100:119, 1:9);
MRadLOLFix = table2array(MRadLOLFix);

LRadSOLFix = Fixbyboth(120:139, 1:9);
LRadSOLFix = table2array(LRadSOLFix);

LRadMOLFix = Fixbyboth(140:159, 1:9);
LRadMOLFix = table2array(LRadMOLFix);

LRadLOLFix = Fixbyboth(160:179, 1:9);
LRadLOLFix = table2array(LRadLOLFix);

% Free Viewing
SRadSOLFV = FVbyboth(1:19, 1:9);
SRadSOLFV = table2array(SRadSOLFV);

SRadMOLFV = FVbyboth(20:39, 1:9);
SRadMOLFV = table2array(SRadMOLFV);

SRadLOLFV = FVbyboth(40:59, 1:9);
SRadLOLFV = table2array(SRadLOLFV);

MRadSOLFV = FVbyboth(60:79, 1:9);
MRadSOLFV = table2array(MRadSOLFV);

MRadMOLFV = FVbyboth(80:99, 1:9);
MRadMOLFV = table2array(MRadMOLFV);

MRadLOLFV = FVbyboth(100:119, 1:9);
MRadLOLFV = table2array(MRadLOLFV);

LRadSOLFV = FVbyboth(120:139, 1:9);
LRadSOLFV = table2array(LRadSOLFV);

LRadMOLFV = FVbyboth(140:159, 1:9);
LRadMOLFV = table2array(LRadMOLFV);

LRadLOLFV = FVbyboth(160:179, 1:9);
LRadLOLFV = table2array(LRadLOLFV);

%% Finding relative collision position
% Fixation
for i = 1:19
    for j = 1:3
        SRadSOLFixRel(i, j) = SRadSOLFix(i,j) - SRadSOLFix(i, j+6);
        SSFix(i, j) = SRadSOLFix(i,j) - SRadSOLFix(i, j+3);
    end
end

for i = 1:20
    for j = 1:3
        SRadMOLFixRel(i, j) = SRadMOLFix(i,j) - SRadMOLFix(i, j+6);
        SMFix(i,j) = SRadMOLFix(i, j) - SRadMOLFix(i, j+3);
        SRadLOLFixRel(i, j) = SRadLOLFix(i,j) - SRadLOLFix(i, j+6);
        SLFix(i, j) = SRadLOLFix(i, j) - SRadLOLFix(i, j+3);
        MRadSOLFixRel(i, j) = MRadSOLFix(i,j) - MRadSOLFix(i, j+6);
        MSFix(i, j) = MRadSOLFix(i, j) - MRadSOLFix(i, j+3)
        MRadMOLFixRel(i, j) = MRadMOLFix(i,j) - MRadMOLFix(i, j+6);
        MMFix(i, j) = MRadMOLFix(i,j) - MRadMOLFix(i, j+3);
        MRadLOLFixRel(i, j) = MRadLOLFix(i,j) - MRadLOLFix(i, j+6);
        MLFix(i, j) = MRadLOLFix(i,j) - MRadLOLFix(i, j+3);
        LRadSOLFixRel(i, j) = LRadSOLFix(i,j) - LRadSOLFix(i, j+6);
        LSFix(i, j) = LRadSOLFix(i,j) - LRadSOLFix(i, j+3);
        LRadMOLFixRel(i, j) = LRadMOLFix(i,j) - LRadMOLFix(i, j+6);
        LMFix(i, j) = LRadMOLFix(i,j) - LRadMOLFix(i, j+3);
        LRadLOLFixRel(i, j) = LRadLOLFix(i,j) - LRadLOLFix(i, j+6);
        LLFix(i, j) = LRadLOLFix(i,j) - LRadLOLFix(i, j+3);
    end
end

% Free viewing
for i = 1:19
    for j = 1:3
        SRadSOLFVRel(i, j) = SRadSOLFV(i,j) - SRadSOLFV(i, j+6);
        SSFV(i, j) = SRadSOLFV(i,j) - SRadSOLFV(i, j+3);
    end
end

for i = 1:20
    for j = 1:3SRadMOLFVRel(i, j) = SRadMOLFV(i,j) - SRadMOLFV(i, j+6);
        SMFV(i,j) = SRadMOLFV(i, j) - SRadMOLFV(i, j+3);
        SRadLOLFVRel(i, j) = SRadLOLFV(i,j) - SRadLOLFV(i, j+6);
        SLFV(i, j) = SRadLOLFV(i, j) - SRadLOLFV(i, j+3);
        MRadSOLFVRel(i, j) = MRadSOLFV(i,j) - MRadSOLFV(i, j+6);
        MSFV(i, j) = MRadSOLFV(i, j) - MRadSOLFV(i, j+3)
        MRadMOLFVRel(i, j) = MRadMOLFV(i,j) - MRadMOLFV(i, j+6);
        MMFV(i, j) = MRadMOLFV(i,j) - MRadMOLFV(i, j+3);
        MRadLOLFVRel(i, j) = MRadLOLFV(i,j) - MRadLOLFV(i, j+6);
        MLFV(i, j) = MRadLOLFV(i,j) - MRadLOLFV(i, j+3);
        LRadSOLFVRel(i, j) = LRadSOLFV(i,j) - LRadSOLFV(i, j+6);
        LSFV(i, j) = LRadSOLFV(i,j) - LRadSOLFV(i, j+3);
        LRadMOLFVRel(i, j) = LRadMOLFV(i,j) - LRadMOLFV(i, j+6);
        LMFV(i, j) = LRadMOLFV(i,j) - LRadMOLFV(i, j+3);
        LRadLOLFVRel(i, j) = LRadLOLFV(i,j) - LRadLOLFV(i, j+6);
        LLFV(i, j) = LRadLOLFV(i,j) - LRadLOLFV(i, j+3);
        SRadMOLFVRel(i, j) = SRadMOLFV(i,j) - SRadMOLFV(i, j+6);
        SMFV(i,j) = SRadMOLFV(i, j) - SRadMOLFV(i, j+3);
        SRadLOLFVRel(i, j) = SRadLOLFV(i,j) - SRadLOLFV(i, j+6);
        SLFV(i, j) = SRadLOLFV(i, j) - SRadLOLFV(i, j+3);
        MRadSOLFVRel(i, j) = MRadSOLFV(i,j) - MRadSOLFV(i, j+6);
        MSFV(i, j) = MRadSOLFV(i, j) - MRadSOLFV(i, j+3)
        MRadMOLFVRel(i, j) = MRadMOLFV(i,j) - MRadMOLFV(i, j+6);
        MMFV(i, j) = MRadMOLFV(i,j) - MRadMOLFV(i, j+3);
        MRadLOLFVRel(i, j) = MRadLOLFV(i,j) - MRadLOLFV(i, j+6);
        MLFV(i, j) = MRadLOLFV(i,j) - MRadLOLFV(i, j+3);
        LRadSOLFVRel(i, j) = LRadSOLFV(i,j) - LRadSOLFV(i, j+6);
        LSFV(i, j) = LRadSOLFV(i,j) - LRadSOLFV(i, j+3);
        LRadMOLFVRel(i, j) = LRadMOLFV(i,j) - LRadMOLFV(i, j+6);
        LMFV(i, j) = LRadMOLFV(i,j) - LRadMOLFV(i, j+3);
        LRadLOLFVRel(i, j) = LRadLOLFV(i,j) - LRadLOLFV(i, j+6);
        LLFV(i, j) = LRadLOLFV(i,j) - LRadLOLFV(i, j+3);
    end
end
%% Plotting 
% Fixation
x = linspace(0, 0, 20);
y = linspace(0, 0, 20);
z = linspace(0, 0, 20);

figure(5);
scatter(SRadSOLFixRel(:, 1), SRadSOLFixRel(:, 3), 50, 'filled');hold on;
scatter(SRadSOLFVRel(:, 1), SRadSOLFVRel(:, 3), 50, 'd', 'filled');
scatter(x, z, 100, 'filled', 'g'); hold off;

figure(6);
scatter(SRadMOLFixRel(:, 1), SRadMOLFixRel(:, 3), 'filled'); hold on;
scatter(SRadMOLFVRel(:, 1), SRadMOLFVRel(:, 3), 'd', 'filled');
scatter(x, z, 100, 'filled', 'g'); hold off;

figure(7);
scatter(SRadLOLFixRel(:, 1), SRadLOLFixRel(:, 3), 'filled');hold on;
scatter(SRadLOLFVRel(:, 1), SRadLOLFVRel(:, 3), 'd', 'filled');
scatter(x, z, 100, 'filled', 'g'); hold off;

figure(8);
scatter(MRadSOLFixRel(:, 1), MRadSOLFixRel(:, 3), 'filled');hold on;
scatter(MRadSOLFVRel(:, 1), MRadSOLFVRel(:, 3), 'd', 'filled')
scatter(x, z, 100, 'filled', 'g'); hold off;

figure(9);
scatter(MRadMOLFixRel(:, 1), MRadMOLFixRel(:, 3), 'filled');hold on;
scatter(MRadMOLFVRel(:, 1), MRadMOLFVRel(:, 3), 'd', 'filled');
scatter(x, z, 100, 'filled', 'g'); hold off;

figure(10);
scatter(MRadLOLFixRel(:, 1), MRadLOLFixRel(:, 3), 'filled');hold on;
scatter(MRadLOLFVRel(:, 1), MRadLOLFVRel(:, 3), 'd', 'filled');
scatter(x, z, 100, 'filled', 'g'); hold off;

figure(11);
scatter(LRadSOLFixRel(:, 1), LRadSOLFixRel(:, 3), 'filled');hold on;
scatter(LRadSOLFVRel(:, 1), LRadSOLFVRel(:, 3), 'd', 'filled');
scatter(x, z, 100, 'filled', 'g'); hold off;

figure(12);
scatter(LRadMOLFixRel(:, 1), LRadMOLFixRel(:, 3), 'filled');hold on;
scatter(LRadMOLFVRel(:, 1), LRadMOLFVRel(:, 3), 'd', 'filled');
scatter(x, z, 100, 'filled', 'g'); hold off;

figure(13);
scatter(LRadLOLFixRel(:, 1), LRadLOLFixRel(:, 3), 'filled');hold on;
scatter(LRadLOLFVRel(:, 1), LRadLOLFVRel(:, 3), 'd', 'filled');
scatter(x, z, 100, 'filled', 'g'); hold off;

%% Differences
for i = 1:19
    for j = 1:3
        SradSOLFixDiff(i, j) = sqrt((SRadSOLFixRel(i,j))^2);
        
    end
end

