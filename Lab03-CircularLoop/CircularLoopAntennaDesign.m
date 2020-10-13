clear;
clc;

%% ----------------------
%CONSTANTS
%------------------------

c_0 = 3e+8; %Speed of light
eps_0 = 1; %Dielectric constant of the medium

%% ----------------------
%INPUTS
%------------------------

f_0 = 1e+9; %Central frequency

%% ----------------------
%MATH STUFF
%------------------------

lambda = c_0/(sqrt(eps_0) * f_0);
loopRadius = 1.089 * lambda / (2 * pi);
loopConstant = 12;
wireRadius = 2 * pi * loopRadius / exp(loopConstant/2);

matlabWireTHICCness = 4 * wireRadius;

%% ----------------------
%OUTPUTS
%------------------------

fprintf("-------------------------------\n");
fprintf("Loop Antenna Design Report\n");
fprintf("-------------------------------\n\n");

fprintf("Constants:\n");
fprintf("\tc_0 = %.4E [m/s]\n", c_0);
fprintf("\teps_0 = %.2f\n\n", eps_0);

fprintf("Inputs:\n");
fprintf("\tf_0 = %.4E [Hz]\n\n", f_0);

fprintf("Stuffy stuff:\n");
fprintf("\tWavelength = %.4E [m]\n", lambda);
fprintf("\tLoop Radius = %.4E [m]\n", loopRadius);
fprintf("\tLoop Constant = %.4E [m]\n", loopConstant);
fprintf("\tWire Radius = %.4E [m]\n", wireRadius);
fprintf("\tWire THICCness = %.4E [m]\n", matlabWireTHICCness);
