A=2.016;
zeta= 0.125;
wn=2;
wd=1.984;
phi=1.4455;
t=[0:0.1:25];
n=length(t);
x= zeros(1,n);
for k=1:n
    x(k)=A*exp(-zeta*wn*t(k))*sin(wd*t(k)+phi);
end
plot(t,x)
grid on 
xlabel('Time(s)')
ylabel('X(m)')