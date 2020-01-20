Ts=0.002;
f1=100;
M=1000;
L=16;
fc=0.1;
n=1:1:M;
[b,a]=butter(L,fc,'low');
x=cos(2*pi*(n-1)*Ts)+2*cos(2*pi*f1*(n-1)*Ts);
figure(1)
plot(n,x);
y=filter(b,a,x);
figure(2)
plot(n,y);
xlabel('n');
ylabel('y[n]');

[d,c]=butter(L,[0.25,0.5],'bandpass');
y=filter(d,c,x);
figure(3)
plot(n,y);
xlabel('n');
ylabel('y[n]');




