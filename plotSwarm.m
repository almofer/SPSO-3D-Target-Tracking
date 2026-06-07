function plotSwarm(particle, target)

clf;
hold on;
grid on;

for i = 1:length(particle)

    p = particle(i).Position;

    plot3(p(1), p(2), p(3), 'b.');

end

plot3(target(1), target(2), target(3), ...
    'r*', 'MarkerSize', 12);

xlabel('X');
ylabel('Y');
zlabel('Z');

axis equal;
drawnow;

end