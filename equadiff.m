figure; hold on;
Intervalle = [.0001; 8];

for orb = 1 : 10
    PointInitial = [orb*.1; 1];
    [T, X] = ode45('systemED', Intervalle, PointInitial);
    plot(X(:, 1), X(:, 2));
end