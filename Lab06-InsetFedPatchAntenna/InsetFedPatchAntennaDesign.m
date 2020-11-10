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

f_0 = 2.5e+9; %Central frequency [Hz]
z_0 = 50; %Target input impedance[Ohm]

eps_r_sub = 4.5;
tanDelta = 0.02;
subThiccness = 1.52e-3; %[m]
subLength = 52.5e-3; %[m]
subWidth = 52.5e-3; %[m]

%% ----------------------
%MATH STUFF
%------------------------

lambda = c_0 / (sqrt(eps_0)*f_0);
patchWidth = lambda/2 * sqrt(2/(eps_r_sub + 1));

%effective permittivity
epsEff = (eps_r_sub + 1)/2 + (eps_r_sub - 1)/2 * 1/sqrt(1 + 12*subThiccness/patchWidth);
%effective length
effectiveL = c_0/(2*f_0*sqrt(epsEff));
%deltaL = h/2; %simplified
deltaL = 0.412*subThiccness*((epsEff+0.3)*(patchWidth/subThiccness+0.264))/((epsEff-0.258)*(patchWidth/subThiccness+0.8)); %more accurate

patchLength = effectiveL-2*deltaL;

A = (z_0/60)*sqrt((eps_r_sub + 1)/2)+(eps_r_sub - 1)/(eps_r_sub + 1)*(0.23+0.11/eps_r_sub);
B = 377*pi/(2*z_0*sqrt(eps_r_sub));

feedWidth = subThiccness*(8*exp(A)/(exp(2*A)-2));

if feedWidth > 2*subThiccness
    feedWidth = subThiccness * (2/pi*(B-1-log(2*B-1)+(eps_r_sub-1)/(2*eps_r_sub)*(log(B-1)+0.39-0.61/eps_r_sub)));
end
    
insetWidth = feedWidth / 2;
insetLength = 1e-4*patchLength/2 * (0.001699*eps_r_sub^7 + 0.13761*eps_r_sub^6 - 6.1783*eps_r_sub^5 + 93.187*eps_r_sub^4 - 682.69*eps_r_sub^3 + 2561.9*eps_r_sub^2 - 4043*eps_r_sub + 6697);


%% ----------------------
%OUTPUTS
%------------------------

fprintf("-------------------------------------\n");
fprintf("Inset-Fed Patch Antenna Design Report\n");
fprintf("-------------------------------------\n");

fprintf("\nConstants:\n");
fprintf("\tc_0 = %.4E [m/s]\n", c_0);
fprintf("\teps_0 = %.2f\n", eps_0);
fprintf("\tEta = %.4E [Hz]\n", eta);

fprintf("\nInputs:\n");
fprintf("\tf_0 = %.4E [Hz]\n", f_0);
fprintf("\tWavelength = %.4E [Hz]\n", lambda);
fprintf("\tTarget impedance = %.4E [Ohm]\n", z_0);
fprintf("\tSubstrate epsilon = %.2f\n", eps_r_sub);
fprintf("\tLoss tangent = %.2f\n", tanDelta);
fprintf("\tSubstrate Thicccness = %.4E [m]\n", subThiccness);
fprintf("\tSubstrate Length = %.4E\n", subLength);
fprintf("\tSubstrate Height = %.4E\n", subWidth);


fprintf("\nStuffy stuff:\n");
fprintf("\tPatch Width = %.4E [m]\n", patchWidth);
fprintf("\tPatch Length = %.4E [m]\n", patchLength);
fprintf("\tFeed Width = %.4E [m]\n", feedWidth);
fprintf("\tInset Width = %.4E [m]\n", insetWidth);
fprintf("\tInset Length = %.4E [m]\n", insetLength);

