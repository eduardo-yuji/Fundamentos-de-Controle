%Exemplo 9.5
%polo = -5,42 + 10,6j

g1=tf([1 8], poly([-3 -6 -10]))

Tp = pi/10.6
Wdn = 10.6*3/2
Polonovo = 5.42*1.5

SZc = rad2deg(-angle(-0.13+15.92j)+angle(-5.13+15.92j)+angle(-2.13+15.92j)+angle(1.87+15.92j)) - 180
Zc = (15.92/tand(SZc)) + 8.13

%rlocus(g1)
k1=121
g2=tf(poly([-8 -56.24]),poly([-3 -6 -10]))
%rlocus(g2)
k2=5.28
t1=feedback(k1*g1,1)
t2=feedback(k2*g2,1)

g3=tf(poly([-0.5 -8 -56.24]),poly([-3 -6 -10]))
%rlocus(g3)
k3 = 4.54
t3=feedback(k3*g3,1)

%step(t1,t2,t3)

%Exemplo 9.6
g1=tf(1,poly([0 -6 -10]))
%rlocus(g1)
k1=192
%polo = -1.79 + 3.5j
Ts=pi/(-1.79)
%Wdn = 3.5*

SPc = rad2deg(angle(-3.58+7j)+angle(6.42+7j)) + 180 -360
Pc = (7/tand(-SPc)) + 3.58
g2=tf([1 6],poly([ 0 -6 -10 -28.9]))
%rlocus(g2)
k2=1960
t1=feedback(k1*g1,1)
t2=feedback(k2*g2,1)
%step(t1,t2)

g3=tf([1 0.047], poly([0 -10 -28.9 -0.01]))
k3=1940
t3=feedback(k3*g3,1)
s=tf('s')

step(t1/s,t2/s,t3/s)


