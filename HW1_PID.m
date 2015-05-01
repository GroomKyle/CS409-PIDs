function HW1_PID
desV = 100;
actV = 0;
dt = 0.01;
Kp = 0.2;
Ki = 0.05;
Kd = 0.3;

    for i = 1:10
        funcE(i+1) = desV - actV(i);
        
        P(i+1) = funcE(i+1);
        D(i+1) = (funcE(i+1) - funcE(i))/dt;
        Int(i+1) = (funcE(i+1) + funcE(i))*dt/2;
        I(i+1) = sum(Int);
        
        actV(i+1) = Kp*P(i) + Ki * I(i+1) + Kd * D(i);
    end
end