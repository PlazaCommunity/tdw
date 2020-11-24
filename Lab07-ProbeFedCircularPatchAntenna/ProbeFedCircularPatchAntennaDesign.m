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

f_0 = 10e+9; %Central frequency [Hz]
z_0 = 50; %Target input impedance[Ohm]

eps_sub = 2.2;
subThiccness = 1.588e-3; %[m]
deltaL = subThiccness/2;

gPlaneLength = 30e-3; %[m]
gPlaneWidth = 30e-3; %[m]

%% ----------------------
%MATH STUFF
%------------------------

fringeRadius = (8.791e+9)/(f_0*sqrt(eps_sub));
effectiveRadius = (fringeRadius*0.01) / sqrt( 1+200*subThiccness / (pi*eps_sub*fringeRadius)*(log(pi*fringeRadius/(200*subThiccness))+1.7726));
feedRadius = effectiveRadius / 3;


%% ----------------------
%OUTPUTS
%------------------------

fprintf("----------------------------------------------\n");
fprintf("Probe-Fed Circular Patch Antenna Design Report\n");
fprintf("----------------------------------------------\n");

fprintf("\nConstants:\n");
fprintf("\tc_0 = %.4E [m/s]\n", c_0);
fprintf("\teps_0 = %.2f\n", eps_0);

fprintf("\nInputs:\n");
fprintf("\tf_0 = %.4E [Hz]\n", f_0);
fprintf("\tTarget impedance = %.2f [Ohm]\n", z_0);
fprintf("\tSubstrate epsilon = %.2f\n", eps_sub);
fprintf("\tSubstrate Thicccness = %.4E [m]\n", subThiccness);
fprintf("\tGroundplane Length = %.4E [m]\n", gPlaneLength);
fprintf("\tGroundplane Width = %.4E [m]\n", gPlaneWidth);

fprintf("\nStuffy stuff:\n");
fprintf("\tRadius = %.4E [m]\n", effectiveRadius);
fprintf("\tFeed Radius = %.4E [m]\n", feedRadius);