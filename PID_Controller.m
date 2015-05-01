function PID_Controller
    actV = oldR - oldR2;
    funcE = desV - actV;
    motR = oldR + Kp * (funcE - oldE) + Ki * ((funcE + oldE)/2) + Kd * (e - 2 * oldE + oldE2);
    motR = min(motR, 100.0);
    motR = max(motR, -100.0);
    oldR2 = oldR;
    oldR = motR;
    oldE2 = oldE;
    oldE = funcE;
end
