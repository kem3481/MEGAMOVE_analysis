function [P, Ptarget, Ppenalty] = MegaMoveModel(x, y, sigma)

P(xprime, yprime) = (1/(2*pi*(sigma)))*exp(-(((x' - x)^2) + ((y' - y)^2))/(2*sigma));

Ptarget = integral2(P, -.02, .015, -.02, .02);

Ppenalty = integral2(P, .015, .05, -.02, .02);

