function [ u ] = BicycleToPathControl( xTrue, Path )
%Computes a control to follow a path for bicycle
%   xTrue is the robot current pose : [ x y theta ]'
%   Path is set of points defining the path : [ x1 x2 ... ;
%                                               y1 y2 ...]
%   u is the control : [v phi]'

persistent id xGoal;

if xTrue == [0;0;0]
    id = 1;
    xGoal = Path(:,1);
end

error = Path(:,id) - xTrue;
rho = norm(error(1:2));

if rho < 0.5
    xGoal = Path(:, id);
    id = id + 1;
    id = min(id, size(Path,2));
else
    diff = Path(:, id) - Path(:, id-1);
    diff = diff/norm(diff);
    
    error = xGoal - xTrue;
    goalDist = norm(error(1:2));
    
    while goalDist <  0.5
        xGoal = xGoal + 0.01*diff;
        error = xGoal - xTrue;
        goalDist = norm(error(1:2));
    end
end

Kr = 100;
Ka = 2.3;

error = xGoal - xTrue;
rho = norm(error(1:2));
alfa = AngleWrap(atan2(error(2), error(1)) - xTrue(3));

u(1) = Kr * rho;
u(2) = Ka * alfa;
end
