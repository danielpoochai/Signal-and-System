function y = my1conv(x1,x2)
op1=[x1(1) zeros(1,length(x2)-1)];
op2=[x1;zeros(1,2*length(x1)-1)']';
A=toeplitz(op2,op1);
y=A*x2;
stem(y,'filled');
end
