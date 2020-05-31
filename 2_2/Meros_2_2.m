s1=sqrt(2*Es)/2 + j*sqrt(2*Es)/2;
s2=sqrt(2*Es)/2 - j*sqrt(2*Es)/2;
s3=-sqrt(2*Es)/2 - j*sqrt(2*Es)/2;
s4=-sqrt(2*Es)/2 + j*sqrt(2*Es)/2;

matrix=[];
EsN0=[5,8,10];

for x=EsN0
  Ps=2*erfc(sqrt(x))-(erfc(sqrt(x)))^2;
  matrix=[matrix Ps];
endfor

#x=randi(4);
n=n1+j*n2;
r=s+n;
loop=[1:1:10^6];
#MLD Äi={(norm(r-si))^2 < (norm(r-sj))^2 , i<>j}

for i=loop
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
endfor
