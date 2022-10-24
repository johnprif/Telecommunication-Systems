fs=10000;
Ts=1/fs;
t=[0:Ts:10];
m=cos(2*pi*t);

figure;
plot(t,m);
title('Plot of AM signal(Meros 1 a)');
xlabel('t');
ylabel('m(t)');

%{-----------------------------------------------------}%

fs=10000;
Ts=1/fs;
t=[0:Ts:10];
m=cos(2*pi*t);
Ac=2;
fc=500;
x=(Ac+m).*cos(2*pi*fc*t);

figure;
plot(t,x);
title('Plot of AM(Meros 1 b)');
xlabel('t');
ylabel('x(t)');

%{-----------------------------------------------------}%

fs=10000;
Ts=1/fs;
t=[0:Ts:10];
m=cos(2*pi*t);
Ac=2;
fc=500;
x=(Ac+m).*cos(2*pi*fc*t);
env=abs(hilbert(x));

figure;
plot(t,env);
title('Plot of AM, perivalousa(Meros 1 c)');
xlabel('t');
ylabel('x(t)');

%{-----------------------------------------------------}%

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

%{-----------------------------------------------------}%

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

%{-----------------------------------------------------}%

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



