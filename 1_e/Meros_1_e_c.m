fs=10000;
Ts=1/fs;
t=[0:Ts:10];
m=cos(2*pi*t);
Ac=0.7;
fc=500;
x=(Ac+m).*cos(2*pi*fc*t);
env=abs(hilbert(x));

figure;
plot(t,env);
title('Plot of AM, perivalousa(Meros 1 e c)');
xlabel('t');
ylabel('x(t)');
