pkg load communications;
Es=1;
N=10^6;
s1=sqrt(2*Es)/2 + j*sqrt(2*Es)/2;
s2=sqrt(2*Es)/2 - j*sqrt(2*Es)/2;
s3=-sqrt(2*Es)/2 - j*sqrt(2*Es)/2;
s4=-sqrt(2*Es)/2 + j*sqrt(2*Es)/2;
sis=[s1,s2,s3,s4];
EsN0=[5,8,10];
ser=[];
count=0;
rPs=[];

for x=EsN0
  
  k=10^(1/10)*x;
  Ps=2*qfunc(sqrt(k))-(qfunc(sqrt(k)))^2;
  rPs=[rPs Ps];
  
  sigma=1/(2*k);
  for j=1:N
    x=randi(4);
    if x==1
      s=s1;
    elseif x==2
      s=s2;
    elseif x==3
      s=s3;
    else
      s=s4;
    endif
    n1=randn*sigma;
    n2=randn*sigma;
    n=n1+i*n2;
    r=s+n;
    
    min=100;
    place=0;
    for l=1:4
      temp=r-sis(l); 
      if temp<min
        min=temp;
        place=l;
      endif
    endfor 
    s_temp=sis(place); 
    if floor(real(s_temp))!=floor(real(s)) || floor(imag(s_temp))!=floor(imag(s))
      count+=1;
    endif
  endfor
    ser=[ser (count/N)];
endfor

printf('Theoritical SER Ps=%d and Approach Ps=%d for Es/N0=5 db',rPs(1),ser(1));
printf('||Theoritical SER Ps=%d and Approach Ps=%d for Es/N0=8 db',rPs(2),ser(2));
printf('||Theoritical SER Ps=%d and Approach Ps=%d for Es/N0=10 db',rPs(3),ser(3));



