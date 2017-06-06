# Reactive power example plot
# Eirik Haustveit, 2017

clear;
clf;

t = 0:0.0001:0.04;
f = 50;

v = 230*sqrt(2)*sin(2*pi*f*t);


i_r = 200*sin(2*pi*f*t);
i_c = 200*sin(2*pi*f*t + pi/3);

p = v.*i_r;
s = v.*i_c;

subplot(2,2,1);

hold on;
plot(t,v);

plot(t,i_r);


subplot(2,2,2);

plot(t,p);


subplot(2,2,3);

hold on;

plot(t,v);

plot(t,i_c);


subplot(2,2,4);

plot(t,s);
