clc;clear all
%%
xh0 = [0 5]'
P0kh = [0.01 0; 0 1]
u0 = -2
y1 = pi/6
s = 20
d = 40
dt = 0.5
Fk_1 = [1 dt; 0 1]
Lk_1 = eye(2,2)
G = [0 dt]'
Q = 0.1*eye(2,2)
Rk = 0.01
%%
x1c = Fk_1 * xh0 + G * u0
Pkc = Fk_1 * P0kh*Fk_1' + Lk_1*Q*Lk_1'
%Hk = [s/()] 
%%
Hk = [s./((d-x1c(1,1)).^2 + s.^2) 0]
Mk = 1
%%
Kk = Pkc*Hk'*(Hk*Pkc*Hk'+Mk*Rk*Mk')^-1
%%
xkh = x1c+Kk*(y1 - atan(s/(d - x1c(1))))

Pkh = (eye(2,2) - Kk*Hk)*Pkc
