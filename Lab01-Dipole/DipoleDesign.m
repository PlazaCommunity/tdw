clear all;
clc;
%-------------------
%Physical constants
%-------------------
epsilon_r = 1.0;
c0 = 3E+8;

%----
%Data
%----
centralFrequency = 1.0E+9;

%------------
%stuffy stuff
%------------
lambda = c0/(sqrt(epsilon_r)*centralFrequency);

dipoleLength = c0/(2*lambda);

dipoleDiameter = 0.006738*lambda;

feedingGap = 0.025*lambda;

fprintf('--------------------------------------------\n');
fprintf('Half-wavelength Dipole Antenna Design Report\n');
fprintf('--------------------------------------------\n');
fprintf('Input:\n');
fprintf('\tCentral Frequency \t\tf=%.eE [Hz]\n', centralFrequency);
fprintf('\tMedium Permittivity \t%.2f\n', epsilon_r);
fprintf('Output:\n');
fprintf('\tDipole Length \t\t\tL=%.4E [m]\n', dipoleLength);
fprintf('\tDipole Diameter \t\td=%.4E [m]\n', dipoleDiameter);
fprintf('\tFeeding Gap \t\t\tg=%.4E [m]\n', feedingGap);
fprintf('--------------------------------------------\n');