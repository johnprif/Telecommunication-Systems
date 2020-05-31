fs=10000;
Ts=1/fs;
t=[0:Ts:10];
m=cos(2*pi*t);
Ac=0.7;
fc=500;
x=(Ac+m).*cos(2*pi*fc*t);

figure;
plot(t,x);
title('Plot of AM(Meros 1 e b)');
xlabel('t');
ylabel('x(t)');
