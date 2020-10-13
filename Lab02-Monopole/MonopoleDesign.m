clear;
clc;

%% ----------------------
%CONSTANTS
%------------------------

c_0 = 3e+8; %Speed of light
eps_0 = 1;

%% ----------------------
%INPUTS
%------------------------

f_0 = 700e+6; %Central frequency

%% ----------------------
%MATH STUFF
%------------------------

lambda = c_0/(sqrt(eps_0) * f_0);
wireHeight = lambda/4;
wireDiameter = 0.006738 * lambda;
matlabDiameter = 2 * wireDiameter;
gap = 0.025 * lambda;
minGroundSize = lambda/2;
maxGroundSize = 2.5 * lambda;

%% ----------------------
%OUTPUTS
%------------------------

fprintf("-------------------------------\n");
fprintf("Monopole Antenna Design Report\n");
fprintf("-------------------------------\n\n");

fprintf("Constants:\n");
fprintf("\tc_0 = %.4E [m/s]\n", c_0);
fprintf("\teps_0 = %.2f\n\n", eps_0);

fprintf("Inputs:\n");
fprintf("\tf_0 = %.4E [Hz]\n\n", f_0);

fprintf("Stuffy stuff:\n");
fprintf("\tWire Height = %.4E [m]\n", wireHeight);
fprintf("\tMATLAB Height = %.4E [m]\n", wireHeight);
fprintf("\tDiameter = %.4E [m]\n", wireDiameter);
fprintf("\tFeeding Gap = %.4E [m]\n", gap);
fprintf("\tMinimum Ground Size = %.4E [m]\n", minGroundSize);
fprintf("\tMaximum Ground Size = %.4E [m]\n", maxGroundSize);
