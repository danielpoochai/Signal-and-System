N=1001;
T=100;
N1=500;
Tw=50;
Ts=0.2;
x=[];
w=[];
y=[];

for i=-N1:N1
    x(i+N1+1)=sin(pi*i*Ts)/(i*pi*Ts);
end
x(N1+1)=1;

for j=-N1:N1
    if (j*Ts<=Tw/2)&&(j*Ts>=-1*Tw/2)
        w(j+N1+1)=(1+cos(2*pi*j*Ts/Tw))/2;
    else
        w(j+N1+1)=0;
    end
end
axis=-N1:1:N1;
figure(3),stem(axis,w,'filled');

for k=-N1:N1
    y(k+N1+1)=w(k+N1+1)*x(k+N1+1);
end
figure(4),stem(axis,y,'filled');
YDFT=fft(y,1001);
YDFT=abs(YDFT);
YDFT=fftshift(YDFT);
figure(5);plot(axis,YDFT);
set(gca,'xtick',[-100,100]);


    
        