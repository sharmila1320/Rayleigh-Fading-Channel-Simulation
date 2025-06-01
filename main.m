% Rayleigh Fading Simulation
clc; clear;

N = 1000;              % Number of time samples
fs = 100;              % Sampling rate (arbitrary)
t = (0:N-1)/fs;        % Time vector

% Generate Rayleigh fading channel (complex Gaussian noise)
h_real = randn(1, N);
h_imag = randn(1, N);
h = (1/sqrt(2)) * (h_real + 1j * h_imag);

% Envelope (magnitude)
envelope = abs(h);

% Phase
phase = angle(h);

% Plot envelope
figure;
plot(t, envelope, 'b');
xlabel('Time (s)');
ylabel('Envelope |h(t)|');
title('Rayleigh Fading Envelope');
grid on;

% Plot phase
figure;
plot(t, phase, 'r');
xlabel('Time (s)');
ylabel('Phase (radians)');
title('Rayleigh Fading Phase');
grid on;
