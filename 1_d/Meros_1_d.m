fs=10000;
Ts=1/fs;
t=[0:Ts:10];
m=cos(2*pi*t);
Ac=2;
fc=500;
x=(Ac+m).*cos(2*pi*fc*t);
env=abs(hilbert(x))-2;

figure;
plot(t,env);
title('Plot of AM, m(t) from perivalousa(x(t))(Meros 1 d)');
xlabel('t');
ylabel('m(t)');
