tmpnom = conv([1,-1],[1,1]);
nom = 0.0976*conv(tmpnom,tmpnom);
tmpd1 = conv([1,-0.3575-0.5889i],[1,-0.3575+0.5889i]);
tmpd2 = conv([1,-0.7686-0.3338i],[1,-0.7686+0.3338i]);
denom = conv(tmpd1,tmpd2);
[r,p,k] = residuez (nom,denom);
for n = 1:100
    x(n) = r(1)*p(1)^n + r(2)*p(2)^n + r(3)*p(3)^n + r(4)*p(4)^n;
end
figure(1),stem(x);
axis([0,100,-0.4,0.4])
title('figure of x[n]');
figure(2),zplane(nom,denom);
title('X(z) on z-plane');
k = 10000;
[h,w] = freqz(nom,denom,k);
m = abs(h);
figure(3),plot(m);
title('Magnitude response of X(z)');
p = angle(h)/180*pi;
figure(4),plot(p);
title('Phase response of X(z)');
z = [1 1 -1 -1];
p = [-0.3575-0.5889i -0.3575+0.5889i -0.7686-0.3338i -0.7686+0.3338i];
sos = zp2sos(z,p,1);
a1 = sos(1, 4:6);
a2 = sos(2, 4:6);
b1 = sos(1, 1:3);
b2 = sos(2, 1:3);
[x1,w] = freqz(0.0976*b1,a1,k);
xm1 = abs(x1);
figure(5),plot(xm1);
title('Magnitude response of X1(z)');
[x2,w]=freqz(b2,a2,k);
xm2 = abs(x2);
figure(6),plot(xm2);
title('Magnitude response of X2(z)');
imp = [1 zeros(1, 9999)];
impr = filter(b,a,imp);
figure(7),stem(impr(1:100));
title('Impulese response of the system');

