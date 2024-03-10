% Driveline Parameters
d = struct('T1', 400, 'W1', 300, 'T2', 200, 'W2', 500, 'T3', 100, 'W3', 1000); % Nm, rad/s

% Vehicle and Transmission Parameters
vmass = 1370; % kg
Rdyn = 0.3; % m
itot = 10.2;
Imot = 0.9 ;  %kg*m^2
Itrans = 1.2; %kg*m^2
mr = ((Imot+Itrans)*(itot^2))/(Rdyn^2);
lamba = 1+(mr/vmass);

% Stiffness and Damping Parameters
kM = 13000; % Nms/rad  
dM = 6.5;  % Nms/rad
kr = 201.5; 
dr = 206;

% Air and Rolling Resistance Parameters
fr = 0.019;
cw = 0.31;
A = 2.15; % m^2
Rho = 1.2; % kg/m^3
g = 9.81;
F_L = cw*A*(Rho/2); % Air resistance
F_R = fr*vmass*g; % Rolling resistance

% Simplified Vehicle Inertia
I_veh_red = vmass * Rdyn^2 / itot^2;

% WLTP Data
filename = 'WLTP.xlsx'; % File name for WLTP
data = readmatrix(filename); % Read the matrix from the file
wltp_st = [data(:,1), data(:,2)]; % Time-WLTP combination

