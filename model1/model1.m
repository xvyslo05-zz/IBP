% Copyright (c) 2016, Daniel Frey
% All rights reserved.

% This is the problem regarding a ball bouncing including air drag
% These variables were to be set in the workspace
% Youd want to comment these out before submission
clear all
h_i=2; % Height in meters
v_t=10; % Terminal velocity in meters per second
g=9.8; % Acceleration due to gravity in meters per sec^2
C_R=0.9; % Coefficient of restitution


% Part (a) compute the sequence of bounces
h(1)=h_i; % The first height
b=1; %Initialize bounce number
for b=1:3 % Loop through three bounces
    %The equations in the loop come right from the
    %problem statement
    v_impact(b)=v_t*sqrt(1-exp(-2*g*h(b)/(v_t^2)));
    v_r(b)=C_R*v_impact(b)*(1-0.01*rand());
    h(b+1)=-((v_t^2)/g)*log(cos(atan(v_r(b)/v_t)));
end
sprintf('The height of the third bounce is %0.3f meters.', h(4))

% Part (b) Make a nice picture
close all
plot([0 length(h)],zeros(1,2),'k','LineWidth',2) % plot the floor
hold on
ylim([-0.05*h_i 1.2*h_i]); % set the vertical limits
% Plot the first drop as a half parabola
traj=@(x) h(1).*(x+0.5).*(x-0.5)./((0+0.5).*(0-0.5));
plot(0:0.05:0.5,traj(0:0.05:0.5),'ro','MarkerSize',15)
% Plot each bounce as a full parabola
for b=1:length(h)-1
    traj=@(x) h(b+1).*(x-(b-0.5)).*(x-(b+0.5))./((b-(b-0.5)).*(b-(b+0.5)));
    plot((b-0.5):0.05:(b+0.5),traj((b-0.5):0.05:(b+0.5)),'ro','MarkerSize',15)
end
