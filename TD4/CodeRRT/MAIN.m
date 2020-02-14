%% Configurations
% Options de cartes:
%       bench_june1.mat
%       bench_june2
%       bench_june3
%       bench_redundant_1
%       bench_redundant_2
%       bench_redundant_3
%       grid_map
%       no_obs_map
%       RSE12

%% Question 1

clear all;
clc;
carte = struct('name','bench_june1.mat','start_point',[-15.5 -5.5],'goal_point',[7 -3.65]);
%--- Quantité d'itérations
max_iter =  8e3;
% max_iter =  5e3;

result = rrt(carte, max_iter,0,cputime*1000,'FNSimple2D');
% result = rrt_star(carte, max_iter,0,cputime*1000,'FNSimple2D');
% result = rrt(carte, max_iter,0,cputime*1000,'FNSimple2D');

%% Question 2
clear all;
clc;
carte = struct('name','RSE12.mat','start_point',[-18.5 -5.5],'goal_point',[18 -3.65]);
% benchmark2D('RSE12.mat',[-18.5 -5.5],[18 -3.65],'rrt','FNSimple2D',5000)
benchmark2D('RSE12.mat',[-18.5 -5.5],[18 -3.65],'rrt','FNSimple2D_Obst',5000)