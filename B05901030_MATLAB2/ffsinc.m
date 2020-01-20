for i=-500:500
    x(i+501)=sin(pi*i*100/500)/(pi*i*100/500);
end
    x(501)=1;
    axis=-500:1:500;
    figure(1),stem(axis,x,'filled');
   
XDFT=fft(x);
MDFT=abs(XDFT);
SDFT=fftshift(MDFT);
figure(2),plot(axis,SDFT);
set(gca,'xtick',[-100 100]);


    