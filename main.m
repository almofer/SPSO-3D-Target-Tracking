clc;
clear;
close all;

%% Problem Definition

target = createTarget();

nVar = 3;
VarMin = -10;
VarMax = 10;

CostFunction = @(x) costFunction(x, target);

%% PSO Parameters

MaxIt = 500;
nPop = 50;

w = 1;
wdamp = 0.99;
c1 = 2;
c2 = 2;

VelMax = 0.1 * (VarMax - VarMin);
VelMin = -VelMax;

%% Initialize Swarm

[particle, GlobalBest] = initializeSwarm( ...
    nPop, nVar, VarMin, VarMax, CostFunction);

BestCost = zeros(MaxIt,1);

%% Main Loop

for it = 1:MaxIt

    for i = 1:nPop

        [particle(i), GlobalBest] = updateParticle( ...
            particle(i), ...
            GlobalBest, ...
            w, c1, c2, ...
            VelMin, VelMax, ...
            VarMin, VarMax, ...
            CostFunction);

    end

    BestCost(it) = GlobalBest.Cost;

    fprintf('Iteration %d : Best Cost = %.6f\n', ...
        it, BestCost(it));

    w = w * wdamp;

    plotSwarm(particle, target);

end

disp('Optimization Finished');
disp(GlobalBest.Position);