% Parameters
fc = 2.4e9; c = 3e8;
t = 0:0.01:5;
dt = t(2)-t(1);

% Motion parameters
v = 200 + 20*t;    % Velocity increases with time
a = 20;            % Constant acceleration
theta = pi/4;      % 45 degrees

% First-order equation: dθe/dt = 2πfc*(v/c)*cos(θ)
theta_e1 = zeros(size(t));
for i = 2:length(t)
    derivative = 2*pi*fc * (v(i)/c) * cos(theta);
    theta_e1(i) = theta_e1(i-1) + derivative * dt;
end

% Second-order equation: d²θe/dt² = 2πfc*(a/c)*cos(θ)
theta_e2 = zeros(size(t));
d_theta_dt = zeros(size(t));
for i = 2:length(t)
    second_derivative = 2*pi*fc * (a/c) * cos(theta);
    d_theta_dt(i) = d_theta_dt(i-1) + second_derivative * dt;
    theta_e2(i) = theta_e2(i-1) + d_theta_dt(i) * dt;
end

% plot
figure;
plot(t, theta_e1, 'b-', t, theta_e2, 'r--', 'LineWidth', 2);
xlabel('Time (s)'); ylabel('Phase Error (rad)');
legend('1st Order Model', '2nd Order Model');
title('Doppler Phase Error Differential Equations');
grid on;

fprintf('Simulation completed successfully!\n');