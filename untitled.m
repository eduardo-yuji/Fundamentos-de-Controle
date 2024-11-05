syms s
g=tf(1,(poly([-3 -5 -7])))
%rlocus(g)
k1=87.7
kp = limit(1/((s+3)*(s+5)*(s+7)), s, 0)

g1=tf(poly([-21.05]),poly([-3 -5 -7]))
%rlocus(g1)
k2= 5.3

t1=feedback(k1*g1,1)
t2=feedback(k2*g2,1)
step(t1,t2)