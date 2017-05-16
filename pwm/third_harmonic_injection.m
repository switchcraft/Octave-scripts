%
% Inject a third harmonic on a modulation wave
% in order to improve DC-link utilization.
%
Vamp = 230 * sqrt(2);
k = 200;
f = 50;

t = 0:0.0001:0.03;
y = Vamp*sin(2*pi*f*t) + k*sin(2*pi*3*f*t);

subplot (2, 1, 1);
plot(t,y);
xlabel("Time [ms]")
ylabel("Amplitude [V]")

subplot (2, 1, 2);

%TODO: Læra å bruka fft funksjonen.

freq = 1000*t*1000/2001;

fourier = fft(y);
plot(freq,abs(fourier))

xlabel("Frequency")
ylabel("Amplitude")
