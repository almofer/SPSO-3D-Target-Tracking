function [particle, GlobalBest] = updateParticle( ...
    particle, GlobalBest, ...
    w, c1, c2, ...
    VelMin, VelMax, ...
    VarMin, VarMax, ...
    CostFunction)

particle.Velocity = ...
    w * particle.Velocity ...
    + c1 * rand(size(particle.Position)) ...
    .* (particle.Best.Position - particle.Position) ...
    + c2 * rand(size(particle.Position)) ...
    .* (GlobalBest.Position - particle.Position);

particle.Velocity = max(particle.Velocity, VelMin);
particle.Velocity = min(particle.Velocity, VelMax);

particle.Position = particle.Position + particle.Velocity;

particle.Position = max(particle.Position, VarMin);
particle.Position = min(particle.Position, VarMax);

particle.Cost = CostFunction(particle.Position);

if particle.Cost < particle.Best.Cost

    particle.Best.Position = particle.Position;
    particle.Best.Cost = particle.Cost;

    if particle.Best.Cost < GlobalBest.Cost
        GlobalBest = particle.Best;
    end

end

end