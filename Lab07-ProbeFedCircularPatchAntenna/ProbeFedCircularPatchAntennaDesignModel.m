% Create a patchMicrostripCircular antenna
% Generated by MATLAB(R) 9.7 and Antenna Toolbox 4.1.
% Generated on: 24-Nov-2020 11:59:21

%% Antenna Properties 
% Design antenna at frequency 10000000000Hz
antennaObject = design(patchMicrostripCircular,10000000000);
% Properties changed 
antennaObject.Height = 0.001588;
antennaObject.Radius = 0.0056;
antennaObject.GroundPlaneLength = 0.03;
antennaObject.FeedOffset = [-0.0028 0];
% Update substrate properties 
antennaObject.Substrate.Name = 'Material';
antennaObject.Substrate.EpsilonR = 2.2;
antennaObject.Substrate.LossTangent = 0;
antennaObject.Substrate.Thickness = 0.001588;
% show for patchMicrostripCircular
figure;
show(antennaObject) 

