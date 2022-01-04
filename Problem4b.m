wn=2;
w=[0.1,0.5,1,2,4,8];
zeta = 0.2;
fo =1;
tf = 1;
t= linspace(0,tf,100);
col = ['b','k','r','g','y'];
for i= 1:length(w)
    theta(i) = atan((2*zeta*wn*w(i))/(wn^2-w(i)^2));
    X(i) = fo/((wn^2-w(i)^2)^2+(2*zeta*wn*w(i))^2)^0.5;
    for j = 1:length(t)
        x(i,j) = X(i)*cos(w(i)*t(j)-theta(i));
    end
end

figure 
for k = 1:length(w)
    name{k}= ['\omega = ' num2str(w(k))];
    h(k)= plot (t, x(k,:));
    hold on
end 
grid on 
legend (h,name);
xlabel('t')
ylabel ('displacement')
title ('system response at different \Omega')
