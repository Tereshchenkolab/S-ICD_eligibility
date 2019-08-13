
[b,a] = butter(4,[0.2/(fs/2) 40/(fs/2)]); %8th order band pass filter with cutoff frequency of 0.2-40 Hz
denoised = filtfilt(b,a,ECG3Lead(:,1)); %change the lead number to filter different signals. pretty sure you can only filter one lead at a time
                                            %otherwise the input gets overloaded

% this is just to see the result of the filtering
plot(ECG3Lead(:,1));
figure;
plot(denoised);