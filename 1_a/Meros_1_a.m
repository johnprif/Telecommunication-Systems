fs=10000;
Ts=1/fs;
t=[0:Ts:10];
m=cos(2*pi*t);

figure;
plot(t,m);
title('Plot of AM signal(Meros 1 a)');
xlabel('t');
ylabel('m(t)');

