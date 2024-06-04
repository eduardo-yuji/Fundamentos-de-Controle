syms K
%Exercicio 8.1 página 7
s=-7+9j;
G=(s+2)*(s+4)/(s*(s+3)*(s+6))
M=abs(G)
Theta=(180/pi)*angle(G)

%abs(-5+9j)
%rad2deg(angle(-5+9j))
%abs(-3+9j)
%rad2deg(angle(-3+9j))
%abs(-7+9j)
%rad2deg(angle(-7+9j))
%abs(-4+9j)
%rad2deg(angle(-4+9j))
%abs(-1+9j)
%rad2deg(angle(-1+9j))
%10,29/119,05



%Exercicio 8.2 página 16
s=-3+0j;
G1=(s+2)/(s^2+4*s+13)
M=abs(G1)
Theta=(180/pi)*angle(G1)
K=1/M
rlocus(tf([1 2],[1 4 13]))




%Exemplo 8.2 Página 24
syms s
G1=(s+3)/(s*(s+1)*(s+2)*(s+4))
%alphaa = (0-1-2-4)-(-3) / 4-1
%alphaa = (-7+3)/3 = -1,333
%para k = 0 thetaa = (2k-1)pi / 4-1 = pi/3 = 60°
%para k = 1 thetaa = 3pi/3 - pi
%para k = 2 thetaa = 5pi/3 - pi

%Exercício 8.3

%G1=tf([1],[])
%rlocus(G1)

%Exemplo 8.8

%Exercicio 8.6
%wn = frequency
g=tf([1],poly([-2 -4 -6]))
rlocus(g)
t=feedback(g,1)
%step(t)


%aula 14
g1=tf([1],poly([-2 -1 -10]))
rlocus(g1)
k1= 164
t1 = feedback(k1*g1,1)
%step(t1)
g2=tf([1 0.1],poly([0 -2 -1 -10]))
%rlocus(g2)
k2=15
t2 = feedback(k2*g2,1)
step(t2)
