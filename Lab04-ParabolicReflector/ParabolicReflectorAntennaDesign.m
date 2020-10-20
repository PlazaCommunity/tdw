clear;
clc;

%% ----------------------
%CONSTANTS
%------------------------

c_0 = 3e+8; %Speed of light [m/s]
eps_0 = 1; %Dielectric constant of the medium

%% ----------------------
%INPUTS
%------------------------

f_0 = 3e+9; %Central frequency [Hz]
focalDepth = 0.27; %[m]
gain = 30; %[dB]
efficiency = 0.6; %[%]

%% ----------------------
%MATH STUFF
%------------------------

lambda = c_0/(sqrt(eps_0) * f_0);
linearGain = 10^(gain/10); %converting dB gain to linear
diameter = lambda/pi * sqrt(linearGain / efficiency);
radius = diameter/2;
%focalDepth = (diameter/2)?2/(4*focalLength);
focalLength = (diameter^2)/(16*focalDepth);

dipoleLength = 0.5*lambda;
dipoleDiameter = 0.006738 * lambda;



%% ----------------------
%OUTPUTS
%------------------------

fprintf("-------------------------------\n");
fprintf("Dipole-Fed Parabolic Reflector Antenna Design Report\n");
fprintf("-------------------------------\n\n");

fprintf("Constants:\n");
fprintf("\tc_0 = %.4E [m/s]\n", c_0);
fprintf("\teps_0 = %.2f\n\n", eps_0);

fprintf("Inputs:\n");
fprintf("\tf_0 = %.4E [Hz]\n", f_0);
fprintf("\tWavelength = %.4E [m]\n", lambda);
fprintf("\tGain = %.2f [dB]\n", gain);
fprintf("\tEfficiency = %.2f [%%]\n", efficiency*100);
fprintf("\tDipole Length = %.4E [m]\n\n", dipoleLength);
fprintf("\tFocal Depth = %.4E [m]\n", focalDepth);

fprintf("Stuffy stuff:\n");
fprintf("\tDiameter = %.4E [m]\n", diameter);
fprintf("\tRadius = %.4E [m]\n", radius);
fprintf("\tFocal Length = %.4E [m]\n", focalLength);
fprintf("\tDipole Length = %.4E [m]\n", dipoleLength);
fprintf("\tDipole Diameter = %.4E [m]\n", dipoleDiameter);
fprintf("\tF/D Ratio = %.4E [m]\n", focalLength/diameter);
