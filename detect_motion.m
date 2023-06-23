function detect_motion(Y_mag,t)
motion_detected = 0;
t_detected = 0;
for i = 1:length(Y_mag)
    for j = 1:3
        if Y_mag(i,j) > 0.9
            motion_detected = 1;
            t_detected = t(i);
            return;
        end
    end
end
if motion_detected == 1
    fprintf('Motion Detected at t = %5.5 \n',t_detected);
else
    disp('No Motion');
end
end