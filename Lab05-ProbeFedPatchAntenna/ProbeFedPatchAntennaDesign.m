clear;
clc;

%% ----------------------
%CONSTANTS
%------------------------

c_0 = 3e+8; %Speed of light [m/s]
eps_0 = 1; %Dielectric constant of the medium
eta = 120 * pi; %Free space impedance [Ohm]

%% ----------------------
%INPUTS
%------------------------

f_0 = 3e+9; %Central frequency [Hz]
z_0 = 50; %Target input impedance[Ohm]

eps_sub = 2.2;
subThiccness = 2.87e-3; %[m]
deltaL = subThiccness/2;

eps_coax = 2.2;
coaxHeight = 0.005; %[m]
coaxInnerDiameter = 10.4e-3; %[m]

%% ----------------------
%MATH STUFF
%------------------------

lambda = c_0 / (sqrt(eps_0));
length = c_0 / (2 * f_0 * sqrt(eps_sub)) - (2 * deltaL);
width = 1.5 * length;
feedPointY = width/2;
feedPointX = length / pi * acos( sqrt( z_0 * 2 * pi * width / (eta * lambda) * (1 - ((2*pi*subThiccness/lambda)^2)/24) ) );
coaxOuterDiameter = coaxInnerDiameter * exp(2*pi*z_0*sqrt(eps_coax)/eta);


%% ----------------------
%OUTPUTS
%------------------------

fprintf("-------------------------------------\n");
fprintf("Probe-Fed Patch Antenna Design Report\n");
fprintf("-------------------------------------\n");

fprintf("\nConstants:\n");
fprintf("\tc_0 = %.4E [m/s]\n", c_0);
fprintf("\teps_0 = %.2f\n", eps_0);

fprintf("\nInputs:\n");
fprintf("\tf_0 = %.4E [Hz]\n", f_0);
fprintf("\tWavelength = %.4E [Hz]\n", lambda);
fprintf("\tEta = %.4E [Hz]\n", eta);
fprintf("\tTarget impedance = %.4E [Ohm]\n", z_0);
fprintf("\tSubstrate epsilon = %.2f\n", eps_sub);
fprintf("\tCoaxial epsilon = %.2f\n", eps_coax);
fprintf("\tSubstrate Thicccness = %.4E [m]\n", subThiccness);
fprintf("\tDelta L = %.4E [m]\n", deltaL);
fprintf("\tCoaxial height = %.4E [m]\n", coaxHeight);
fprintf("\tCoaxial inner diameter = %.4E [m]\n", coaxInnerDiameter);

fprintf("\nStuffy stuff:\n");
fprintf("\tLength = %.4E [m]\n", length);
fprintf("\tWidth = %.4E [m]\n", width);
fprintf("\tFeed Point Y = %.4E [m]\n", feedPointY);
fprintf("\tFeed Point X = %.4E [m]\n", feedPointX);
fprintf("\tCoaxial outer diameter = %.4E [m]\n", coaxOuterDiameter);
