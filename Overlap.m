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
    for j = 1:3
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

%% Creating Lists of Overlaps
% Small overlap lists
SOLFixlist(:, 1) = [SRadSOLFixRel(:, 1); MRadSOLFixRel(:, 1) ;LRadSOLFixRel(:, 1)];
SOLFixlist(:, 2) = [SRadSOLFixRel(:, 2); MRadSOLFixRel(:, 2) ;LRadSOLFixRel(:, 2)];
SOLFixlist(:, 3) = [SRadSOLFixRel(:, 3); MRadSOLFixRel(:, 3) ;LRadSOLFixRel(:, 3)];

SOLFVlist(:, 1) = [SRadSOLFVRel(:, 1); MRadSOLFVRel(:, 1) ;LRadSOLFVRel(:, 1)];
SOLFVlist(:, 2) = [SRadSOLFVRel(:, 2); MRadSOLFVRel(:, 2) ;LRadSOLFVRel(:, 2)];
SOLFVlist(:, 3) = [SRadSOLFVRel(:, 3); MRadSOLFVRel(:, 3) ;LRadSOLFVRel(:, 3)];

% Medium overlap lists
MOLFixlist(:, 1) = [SRadMOLFixRel(:, 1); MRadMOLFixRel(:, 1) ;LRadMOLFixRel(:, 1)];
MOLFixlist(:, 2) = [SRadMOLFixRel(:, 2); MRadMOLFixRel(:, 2) ;LRadMOLFixRel(:, 2)];
MOLFixlist(:, 3) = [SRadMOLFixRel(:, 3); MRadMOLFixRel(:, 3) ;LRadMOLFixRel(:, 3)];

MOLFVlist(:, 1) = [SRadMOLFVRel(:, 1); MRadMOLFVRel(:, 1) ;LRadMOLFVRel(:, 1)];
MOLFVlist(:, 2) = [SRadMOLFVRel(:, 2); MRadMOLFVRel(:, 2) ;LRadMOLFVRel(:, 2)];
MOLFVlist(:, 3) = [SRadMOLFVRel(:, 3); MRadMOLFVRel(:, 3) ;LRadMOLFVRel(:, 3)];

% Large overlap lists
LOLFixlist(:, 1) = [SRadLOLFixRel(:, 1); MRadLOLFixRel(:, 1) ;LRadLOLFixRel(:, 1)];
LOLFixlist(:, 2) = [SRadLOLFixRel(:, 2); MRadLOLFixRel(:, 2) ;LRadLOLFixRel(:, 2)];
LOLFixlist(:, 3) = [SRadLOLFixRel(:, 3); MRadLOLFixRel(:, 3) ;LRadLOLFixRel(:, 3)];

LOLFVlist(:, 1) = [SRadLOLFVRel(:, 1); MRadLOLFVRel(:, 1) ;LRadLOLFVRel(:, 1)];
LOLFVlist(:, 2) = [SRadLOLFVRel(:, 2); MRadLOLFVRel(:, 2) ;LRadLOLFVRel(:, 2)];
LOLFVlist(:, 3) = [SRadLOLFVRel(:, 3); MRadLOLFVRel(:, 3) ;LRadLOLFVRel(:, 3)];
%% Plotting 
% Fixation
x = linspace(0, 0, 20);
y = linspace(0, 0, 20);
z = linspace(0, 0, 20);

figure(5);
scatter3(SOLFixlist(:, 1), SOLFixlist(:, 2), SOLFixlist(:, 3), 'r', 'filled'); hold on;
scatter3(MOLFixlist(:, 1), MOLFixlist(:, 2), MOLFixlist(:, 3), 'g', 'filled');
scatter3(LOLFixlist(:, 1), LOLFixlist(:, 2), LOLFixlist(:, 3), 'b', 'filled'); 
scatter3(x, y, z, 'filled', 'd'); hold off;

figure(6);
scatter3(SOLFVlist(:, 1), SOLFVlist(:, 2), SOLFVlist(:, 3), 'r', 'filled'); hold on;
scatter3(MOLFVlist(:, 1), MOLFVlist(:, 2), MOLFVlist(:, 3), 'g', 'filled');
scatter3(LOLFVlist(:, 1), LOLFVlist(:, 2), LOLFVlist(:, 3), 'b', 'filled'); 
scatter3(x, y, z, 'filled', 'd'); hold off;

%% Differences
for i = 1:19
    for j = 1:3
        SradSOLFixDiff(i, j) = sqrt((SRadSOLFixRel(i,j))^2);
        SradSOLFVDiff(i, j) = sqrt((SRadSOLFVRel(i, j))^2);
    end
end

for i = 1:20
    for j = 1:3
        SradMOLFixDiff(i, j) = sqrt((SRadMOLFixRel(i,j))^2);
        SradMOLFVDiff(i, j) = sqrt((SRadMOLFVRel(i, j))^2);
        
        SradLOLFixDiff(i, j) = sqrt((SRadLOLFixRel(i,j))^2);
        SradLOLFVDiff(i, j) = sqrt((SRadLOLFVRel(i, j))^2);
        
        MradSOLFixDiff(i, j) = sqrt((MRadSOLFixRel(i,j))^2);
        MradSOLFVDiff(i, j) = sqrt((MRadSOLFVRel(i, j))^2);
        
        MradMOLFixDiff(i, j) = sqrt((MRadMOLFixRel(i,j))^2);
        MradMOLFVDiff(i, j) = sqrt((MRadMOLFVRel(i, j))^2);
        
        MradLOLFixDiff(i, j) = sqrt((MRadLOLFixRel(i,j))^2);
        MradLOLFVDiff(i, j) = sqrt((MRadLOLFVRel(i, j))^2);
        
        LradSOLFixDiff(i, j) = sqrt((LRadSOLFixRel(i,j))^2);
        LradSOLFVDiff(i, j) = sqrt((LRadSOLFVRel(i, j))^2);
        
        LradMOLFixDiff(i, j) = sqrt((LRadMOLFixRel(i,j))^2);
        LradMOLFVDiff(i, j) = sqrt((LRadMOLFVRel(i, j))^2);
        
        LradLOLFixDiff(i, j) = sqrt((LRadLOLFixRel(i,j))^2);
        LradLOLFVDiff(i, j) = sqrt((LRadLOLFVRel(i, j))^2);
    end
end

%% Average Differences over Overlap
for i = 1:3
    % Average of each type
    SSFixAvg(i) = (sum(SradSOLFixDiff(1:19, i)))/19;
    SSFVAvg(i) = (sum(SradSOLFVDiff(1:19, i)))/19;
    
    SMFixAvg(i) = (sum(SradMOLFixDiff(1:20, i)))/20;
    SMFVAvg(i) = (sum(SradMOLFVDiff(1:20, i)))/20;
    
    SLFixAvg(i) = (sum(SradLOLFixDiff(1:20, i)))/20;
    SLFVAvg(i) = (sum(SradLOLFVDiff(1:20, i)))/20;
    
    MSFixAvg(i) = (sum(MradSOLFixDiff(1:20, i)))/20;
    MSFVAvg(i) = (sum(MradSOLFVDiff(1:20, i)))/20;
    
    MMFixAvg(i) = (sum(MradMOLFixDiff(1:20, i)))/20;
    MMFVAvg(i) = (sum(MradMOLFVDiff(1:20, i)))/20;
    
    MLFixAvg(i) = (sum(MradLOLFixDiff(1:20, i)))/20;
    MLFVAvg(i) = (sum(MradLOLFVDiff(1:20, i)))/20;
    
    LSFixAvg(i) = (sum(LradSOLFixDiff(1:20, i)))/20;
    LSFVAvg(i) = (sum(LradSOLFVDiff(1:20, i)))/20;
    
    LMFixAvg(i) = (sum(LradMOLFixDiff(1:20, i)))/20;
    LMFVAvg(i) = (sum(LradMOLFVDiff(1:20, i)))/20;
    
    LLFixAvg(i) = (sum(LradLOLFixDiff(1:20, i)))/20;
    LLFVAvg(i) = (sum(LradLOLFixDiff(1:20, i)))/20;
    
    % Average by overlap and gaze condition
    SFixAvg(i) = (SSFixAvg(i) + MSFixAvg(i) + LSFixAvg(i))/3;
    SFVAvg(i) = (SSFVAvg(i) + MSFVAvg(i) + LSFVAvg(i))/3;
    
    MFixAvg(i) = (SMFixAvg(i) + MMFixAvg(i) + LMFixAvg(i))/3;
    MFVAvg(i) = (SMFVAvg(i) + MMFVAvg(i) + LMFVAvg(i))/3;
    
    LFixAvg(i) = (SLFixAvg(i) + MLFixAvg(i) + LLFixAvg(i))/3;
    LFVAvg(i) = (SLFVAvg(i) + MLFVAvg(i) + LLFVAvg(i))/3;
end

% Fixation Matrices
SFixMat = [SSFixAvg ; MSFixAvg ; LSFixAvg];
MFixMat = [SMFixAvg ; MMFixAvg ; LMFixAvg];
LFixMat = [SLFixAvg ; MLFixAvg ; LLFixAvg];

% Free Viewing Matrices
SFVMat = [SSFVAvg ; MSFVAvg ; LSFVAvg];
MFVMat = [SMFVAvg ; MMFVAvg ; LMFVAvg];
LFVMat = [SLFVAvg ; MLFVAvg ; LLFVAvg];

%% plotting averages
