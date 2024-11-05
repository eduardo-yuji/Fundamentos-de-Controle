%Exemplo 9.3
g=tf(1,[1 10 24 0])
rlocus(g)

rad2deg(angle(-3.6+6.21j)+angle(0.4+6.21j)+angle(2.4+6.21j))

% Seis (6)(06)
g=tf([1 6],[1 10 31 30])
rlocus(g)

rad2deg(-angle(1.36+4.64j)+angle(-2.64+4.64j)+angle(-1.66+4.64j)+angle(0.36+4.64j)) 

g2=tf(poly([-6 -7.19]),[1 10 31 30])
rlocus(g2)