g=tf(poly([-3 -5]),poly([2 4]));
g=tf([-3 -5],[2 4]);
%rlocus(g)

g=tf(1,[1 -2 3 -6 2 -4])
A=[1 3 2 0]
B=[-2 -6 -4 0]
C=[-det([A(1) A(2) ;B(1) B(2)])/B(1) -det([A(1) A(3) ;B(1) B(3)])/B(1)...
-det([A(1) A(4) ;B(1) B(4)])/B(1) 0]
C=[-8 -12 0 0]
D=[-det([B(1) B(2) ;C(1) C(2)])/C(1) -det([B(1) B(3) ;C(1) C(3)])/C(1)...
-det([B(1) B(4) ;C(1) C(4)])/C(1) 0]
E=[-det([C(1) C(2) ;D(1) D(2)])/D(1) -det([C(1) C(3) ;D(1) D(3)])/D(1)...
-det([C(1) C(4) ;D(1) D(4)])/D(1) 0]
F=[-det([D(1) D(2) ;E(1) E(2)])/E(1) -det([D(1) D(3) ;E(1) E(3)])/E(1)...
-det([D(1) D(4) ;E(1) E(4)])/E(1) 0]
rlocus(g)
roots([1 -2 3 -6 2 -4])
%Exemplo 9.1


%Exercício 9.1

g=tf(1,[1 7 0])
rlocus(g)
%k = 45.9
%a)
kv = limit(s*45.9/(s*(s+7)), s, 0)
eramp = 1 / kv
% eramp = 0,1525

%b)


