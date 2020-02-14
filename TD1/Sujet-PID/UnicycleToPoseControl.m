function [ u ] = UnicycleToPoseControl( xTrue,xGoal )
%Computes a control to reach a pose for unicycle
%   xTrue is the robot current pose : [ x y theta ]'
%   xGoal is the goal point
%   u is the control : [v omega]'

Kr = 5;
Ka = 5;
Kb = 5;
alfamax = 1.2;

Kr = Kr;
Ka =  Ka;
Kb = Kb;
alfamax = alfamax;


error = xGoal - xTrue;
rho = norm(error(1:2));
alfa = AngleWrap(atan2(error(2), error(1)) - xTrue(3));
beta = error(3);

u(1) = Kr * rho;
if abs(alfa) > alfamax
   u(1) = 0; 
end

if rho > 0.05
    u(2) = Ka * alfa;
else
    u(2) = Kb * beta;
end    
end

