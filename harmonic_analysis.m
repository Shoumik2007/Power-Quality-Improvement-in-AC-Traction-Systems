% Harmonic analysis for railway traction model

t = out.current_signal.Time;
i = squeeze(out.current_signal.Data);

% Remove startup transient
idx = t > 8;
t_ss = t(idx);
i_ss = i(idx);

% Sampling frequency
Fs = 10000;

% FFT
N = length(i_ss);

Y = fft(i_ss);
P2 = abs(Y/N);
P1 = P2(1:floor(N/2)+1);
P1(2:end-1) = 2*P1(2:end-1);

f = Fs*(0:floor(N/2))/N;

figure;
plot(f, P1);
xlim([0 1000]);
grid on;
xlabel('Frequency (Hz)');
ylabel('Current Magnitude');
title('Supply Current Harmonic Spectrum');

% THD
fundamental = 50;
harmonics = 2:20;

[~,idx_fund] = min(abs(f-fundamental));
I1 = P1(idx_fund);

Iharm = zeros(length(harmonics),1);

for h = harmonics
    target_freq = h*fundamental;
    [~, idx] = min(abs(f- target_freq));
    Iharm = [Iharm; P1(idx)];
end

current_THD = sqrt(sum(Iharm.^2))/I1 *100;

%Display of current THD
disp('current_THD(%):');
disp(current_THD);

t = out.current_signal.Time;
i = abs(squeeze(out.current_signal.Data));

v = abs(squeeze(out.ac_voltage.Data));

idx = t > 1.5;

i_ss = i(idx);
v_ss = v(idx);


Vrms = rms(v_ss);
Irms = rms(i_ss);

P_active = abs(mean(v_ss .* i_ss));







PF = P_active/(Vrms*Irms);

disp(['AC Voltage RMS = ', num2str(Vrms)]);
disp(['AC Current RMS = ', num2str(Irms)]);

% Display additional metrics
disp(['Power Factor = ', num2str(PF)]);

%% AC current waveform
figure
plot(out.current_signal.Time, out.current_signal.Data, 'LineWidth', 1.2)
xlim([8 8.1])
grid on
xlabel('Time (s)')
ylabel('Current (A)')
title('Current on secondary')




