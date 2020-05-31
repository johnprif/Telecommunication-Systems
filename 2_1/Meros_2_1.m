#s1=sqrt(2*Es)/2 + j*sqrt(2*Es)/2;
#s2=sqrt(2*Es)/2 - j*sqrt(2*Es)/2;
#s3=-sqrt(2*Es)/2 - j*sqrt(2*Es)/2;
#s4=-sqrt(2*Es)/2 + j*sqrt(2*Es)/2;
#Es/N0=5;
#Eb=Es/2;
#Ps=2*erfc(sqrt(2*Eb/N0))-(erfc(sqrt(2*Eb/N0)))^2;
matrix=[];
EsN0=[5,8,10];

for x=EsN0
  Ps=2*erfc(sqrt(x))-(erfc(sqrt(x)))^2;
  matrix=[matrix Ps];
  #plot(x,Ps);
  #disp(x);
endfor

figure;
plot(EsN0,matrix);
title('Calculating SER');
xlabel('Es/N0');
ylabel('Ps');
