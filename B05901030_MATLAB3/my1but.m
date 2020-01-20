L=3;
fc=0.1;
fs=10;
[b,a]=butter(L,fc,'low');
[H,w]=freqz(b,a,100);
figure(1)
plot(w*fs/(2*pi),20*log(abs(H)));
xlabel('w');
ylabel('20log|H(e(jw)|(dB)');
figure(2)
plot(w*fs/(2*pi),atand(imag(H)/real(H)));
xlabel('w');
ylabel('phase(degree)');
n=1:1:100;
Ts=1/fs;
x=cos(2*pi*(n-1)*Ts);
y=filter(b,a,x);
figure(3)
plot(n,y);
xlabel('n');
ylabel('y[n]');

L=7;
fc=0.1;
fs=10;
[b,a]=butter(L,fc,'low');
[H,w]=freqz(b,a,100);
figure(4)
plot(w*fs/(2*pi),20*log(abs(H)));
xlabel('w');
ylabel('20log|H(e(jw)|(dB)');
figure(5)
plot(w*fs/(2*pi),atand(imag(H)/real(H)));
xlabel('w');
ylabel('phase(degree)');
x=cos(2*pi*(n-1)*Ts);
y=filter(b,a,x);
figure(6)
plot(n,y);
xlabel('n');
ylabel('y[n]');

L=3;
fc=0.5;
fs=10;
[b,a]=butter(L,fc,'low');
[H,w]=freqz(b,a,100);
figure(7)
plot(w*fs/(2*pi),20*log(abs(H)));
xlabel('w');
ylabel('20log|H(e(jw)|(dB)');
figure(8)
plot(w*fs/(2*pi),atand(imag(H)/real(H)));
xlabel('w');
ylabel('phase(degree)');
x=cos(2*pi*(n-1)*Ts);
y=filter(b,a,x);
figure(9)
plot(n,y);
xlabel('n');
ylabel('y[n]');







