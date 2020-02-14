function [ u ] = BicycleToPointControl( xTrue,xGoal )
%Computes a control to reach a pose for bicycle
%   xTrue is the robot current pose : [ x y theta ]'
%   xGoal is the goal point
%   u is the control : [v phi]'

Kr=	30	;
Ka=	2.3	;

error = xGoal - xTrue;
rho = norm(error(1:2));
alfa = AngleWrap(atan2(error(2), error(1)) - xTrue(3));

u(1) = Kr * rho;
u(2) = Ka * alfa;    
end

