%% Fix large
Xtest = 0;
Ytest = 0;
Xtest1 = .03;


figure (10);
scatter(Xtest, Ytest, 14000, 'g', 'filled'); hold on;
scatter(Xtest1, Ytest, 14000, 'r', 'filled');
scatter(-.02, 0, 50, 'k', 'filled');
scatter(-.017, 0, 50, 'k', 'd', 'filled');
title("Large");
xlim([-.04 .07]);

%% Fix medium
Xtest = 0;
Ytest = 0;
Xtest2 = .033334;


figure (11);
scatter(Xtest, Ytest, 14000, 'g', 'filled'); hold on;
scatter(Xtest2, Ytest, 14000, 'r', 'filled');
scatter(-.019, 0, 50, 'k', 'filled');
scatter(-.015, 0, 50, 'k', 'd', 'filled');
title("Medium");
xlim([-.04 .07]);

%% Fix small
Xtest = 0;
Ytest = 0;
Xtest1 = .03;


figure (12);
scatter(Xtest, Ytest, 14000, 'g', 'filled'); hold on;
scatter(Xtest1, Ytest, 14000, 'r', 'filled');
scatter(-.017, 0, 50, 'k', 'filled');
scatter(-.014, 0, 50, 'k', 'd', 'filled');
title("Small");
xlim([-.04 .07]);

%% FV large
Xtest = 0;
Ytest = 0;
Xtest1 = .03;


figure (13);
scatter(Xtest, Ytest, 14000, 'g', 'filled'); hold on;
scatter(Xtest1, Ytest, 14000, 'r', 'filled');
scatter(-.02, 0, 50, 'k', 'filled');
scatter(-.015, 0, 50, 'k', 'd', 'filled');
title("Large");
xlim([-.04 .07]);

%% FV medium
Xtest = 0;
Ytest = 0;
Xtest2 = .033334;


figure (14);
scatter(Xtest, Ytest, 14000, 'g', 'filled'); hold on;
scatter(Xtest2, Ytest, 14000, 'r', 'filled');
scatter(-.019, 0, 50, 'k', 'filled');
scatter(-.0165, 0, 50, 'k', 'd', 'filled');
title("Medium");
xlim([-.04 .07]);

%% FV small
Xtest = 0;
Ytest = 0;
Xtest1 = .03;


figure (15);
scatter(Xtest, Ytest, 14000, 'g', 'filled'); hold on;
scatter(Xtest1, Ytest, 14000, 'r', 'filled');
scatter(-.017, 0, 50, 'k', 'filled');
scatter(-.016, 0, 50, 'k', 'd', 'filled');
title("Small");
xlim([-.04 .07]);