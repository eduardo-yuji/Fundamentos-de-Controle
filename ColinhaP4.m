syms s
%kp = limit(500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)), s, 0)
%kv = limit((s)*500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)), s, 0)
%ka = limit((s^2)*500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)), s, 0)
%estep = 1 / (1 + kp)
%eramp = 1 / kv
%eparabol = 1 / ka

% Tp = pi/(wd)
% Ts = pi / sigmad = 4/zeta*wn


%Sistema com realimentação unitária... 15% de ultrapassagem.
g1=tf(1,[1 7 0])
%rlocus(g)
%overshoot em 15%
%k = 45.9
%a) Calcule o erro em regime permanente para uma entrada em rampa unitária.
kv = limit(s*45.9/(s*(s+7)), s, 0)
Eramp = 1 / kv
%b) Projete um compresador de atrasdo de fase para melhorar o erro em
%regime permanente por um fator de 20.
%c) Calcule o erro em regime permanente para uma entrada em rampa unitária
%para seu sistema compensado.
Erampnovo = Eramp / 20 %0,007625
%d) Calcule a melhoria otbtida no erro em regime permanente.
Pc = 0.01
kvnovo = 1/Erampnovo
Zc=(kvnovo*Pc)/kv

%Compense o sistema... para melhorar o erro em regime permanente por umf
%ator de 10, caso o sistema esteja operando com um fator de amortecimento
%de 0.174
g2=tf(1,poly([-1 -2 -10]))
%rlocus(g2)
e = 0.108/10
%kp = limit(1/((s+1)*(s+2)*(s+10)), s, 0)
%e=1/(1+kp)
kp = (1-e)/e

%Zc/Pc = KpN/kpO = 91.59/8.23 = 11.13

%pc = 0.01
%Zc = 11.13pc = 0.111

%Projete um compensador derivativo ideal para resultar em 16% de
%ultrapassagem, com uma redução de três vezes no tempo de acomodação.
g=tf(1,[1 10 24 0])
%rlocus(g)
overshhot = 16%
damping = 0.504
wn = 2.39
%polo = -1.2 + 3.07j
Ts = 4/(damping * wn)
%Ts = 4/polo parte real
Tsnovo = Ts/3
Polonovo = 4/Tsnovo
%polonovo = -3.6 + 6.21j

%k(s+Zc)/s(s+4)(s+6) = 180
%substitui o s por polonovo
SZc = rad2deg(angle(-3.6+6.21j)+angle(0.4+6.21j)+angle(2.4+6.21j))-180
Zc = (6.21/tand(SZc)) + 3.6

%Exemplo 9.6
g1=tf(1,poly([0 -6 -10]))
rlocus(g1)
%20% de ultrapassagem
k1=192 %ganho
%polo = -1.79 + 3.5j
Ts=4/(-1.79)
%Wdn = 3.5*
Tsnovo = Ts/2
%polonovo = -3,58 + 7j

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

%step(t1/s,t2/s,t3/s)