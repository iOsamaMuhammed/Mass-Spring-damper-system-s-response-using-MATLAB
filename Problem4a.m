w=2;
wn=2;
fo =1;
tf = 10;
t= linspace(0,tf,100);
zeta=[0.1,0.25,0.5,0.75,0.9];
col = ['b','k','r','g','y'];
for i= 1:length(zeta)
    
    wd(i) = wn^2*(1-zeta(i)^2)^0.5;
    theta(i) = atan((2*zeta(i)*wn*w)/(wn^2-w^2));
    X(i) = fo/((wn^2-w^2)^2+(2*zeta(i)*wn*w)^2)^0.5;
    
    for j = 1:length(t)
        x(i,j) = X(i)*cos(w*t(j)-theta(i));
    end
end

figure 
for k = 1:length(zeta)
    name{k}= ['\zeta = ' num2str(zeta(k))];
    h(k)= plot (t, x(k,:));
    hold on
end 
grid on 
legend (h,name);
xlabel('t')
ylabel ('displacement')
title ('system response at different \zeta')
