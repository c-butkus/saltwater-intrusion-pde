%% Saltwater Intrusion
clear 
clc
% Parameters:
k = 2; %m/d, hydraulic conductivity
n = 0.2; %effective porosity
S = 0.1; %storage coefficient
H = 45; %m, thickness of aquifer
zb = -45; %m, bottom of aquifer
zt = 0; %m, top of aquifer
L = 1000; %m, length of cross section
W = 1; %m, width of cross section normal to plane of flow
vs = 0.025; %dimensionless density
T = k*(zt-zb); %transmissivity of freshwater
tau = k*vs*(zt-zb); %transmissivity of saltwater

%% stepping
dx  = 10; %m
xf = L;
dt = 0.5; %yr
tf = 500; %yrs

x = 0; %coastline
h0 = 0.05; %m, head at x=0
zeta = -2; %m

%% boundary conditions
Q0 = 0.1; %m2/d, uniform flow towards coast
zeta0 = -Q0/(k*vs); %boundary condition at the coast obtained with Glover’s formula
%at
t = 0;
Q = -0.05; %m2/d, discharge of the gallery
%at
x = 0;
h0 = 0.05; %m, head of freshwater zone fixed
zeta0 = -2; %m, interface

%% for equation 1:
% set up matrix
m = xf/dx + 1; %space steps
n = tf/dt + 1; % time steps

M = speye(m,m);
for i = 1:m
    for j = 1:m
        if i == j
            M(i,j) = -2*(T*dt/(dx^2*S))+1;
        elseif i-1==j
            M(i,j) = T*dt/(dx^2*S);
        elseif i+1 ==j
            M(i,j) = T*dt/(dx^2*S);
        end
    end
    
end 

h=h0*ones(m,1); %initial condition: at x=0, h=0.05
h_all = zeros(m,n);
h_all(:,1) = 0.5;
for t = 2:n
    hnew = M*h;
    h_all(:, t) = hnew';
    h = hnew;
end
