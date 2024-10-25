clear
clc 
echo on

syms q1 q2 q3 c1 c2 r s c3 m a b q_2 h x y z p

% (1,1,1)
a1 = q1*r-c1+s
b1 = q2*r-c2+q_2
c1 = q3-s-c3
% (1,1,0)
a2 = q1*r*a-c1*b
b2 = q2*r*a-c2*b
c2 = -m+q3
% (1,0,1)
a3 = q1-c1+s
b3 = q_2-h
c3 = -q3-s-c3
% (1,0,0)
a4 = q1*a-c1*b
b4 = -h
c4 = -m-q3
% (0,1,1)
a5 = -p-h
b5 = q_2
c5 = -c3+p-q3
% (0,1,0)
a6 = -h
b6 = 0
c6 = -m
% (0,0,1)
a7 = -p
b7 = q_2
c7 = -c3+p-q3
% (0,0,0)
a8 = 0
b8 = 0
c8 = -q3-m


% 体育企业群体
G11 = y*z*a1 + y*(1-z)*a2 + (1-y)*z*a3 + (1-z)*(1-y)*a4
G12 = y*z*a5 + y*(1-z)*a6 + (1-y)*z*a7 + (1-y)*(1-z)*a8
G_ave = x * G11 + (1-x) * G12
% 复制动态方程
G(x) = (G11-G_ave)*x
simplify(G(x))


% 用户群体
S11 = x*z*b1 + x*(1-z)*b2 + (1-x)*z*b5 + (1-x)*(1-z)*b6
S12 = x*z*b3 + x*(1-z)*b4 + (1-x)*z*b7 + (1-x)*(1-z)*b8
S_ave = y*S11 + (1-y)*S12
%复制动态方程
S(y) = (S11-S_ave)*y
simplify(S(y))


%监管群体
F11 = x*y*c1 + x*(1-y)*c3 + (1-x)*y*c5 + (1-x)*(1-y)*c7
F12 = x*y*c2 + x*(1-y)*c4 + (1-x)*y*c6 + (1-x)*(1-y)*c8
F_ave = z*F11 + (1-z)*F12
%复制动态方程
F(z) = (F11-F_ave)*z
simplify(F(z))

JAC = [diff(G(x),x) diff(G(x),y) diff(G(x),z);
       diff(S(y),x) diff(S(y),y) diff(S(y),z);
       diff(F(z),x) diff(F(z),y) diff(F(z),z)]

