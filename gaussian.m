function [P] = gaussian(x, y, sigma)

P(xprime, yprime) = (1/(2*pi*sigma))*(exp(-(((xprime - x)^2) + ((yprime - y)^2))/(2*sigma)));

end