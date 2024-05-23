syms s

kp = limit(500*(s+2)*(s+5)/((s+8)*(s+10)*(s+12)), s, 0)
kv = limit(s*(10*(s+20)*(s+30))/(s*(s+25)*(s+35)), s, 0)
ka = limit((s^2)*(10*(s+20)*(s+30))/(s^2*(s+25)*(s+35)*(s+50)) , s, 0)
estep = 1 / (1 + kp)
eramp = 1 / kv
eparabol = 1 / ka
