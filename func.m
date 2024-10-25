function outputs = fun(t,y)


q1 = 7.8, q2 = 8.5, q3 = 4.2, c1=2.7, c2=1.8, s=2.9, c3=1.0, m=9,r = 1.5, a=0.2, b=1.2
q_2=3.80, h=15,  p = 50.3



            outputs = zeros(3,1)
            outputs(1) = y(1)*(1-y(1))*(b*c3 + a*q1 - b*q3 + b*s + c3*y(3) + h*y(2) + p*y(3) + q1*y(3) - q3*y(3) + 2*s*y(3) - b*c3*y(3) - a*q1*y(2) - a*q1*y(3) + b*q3*y(3) - b*s*y(3) - c1*y(2)*y(3) - c3*y(2)*y(3) - q1*y(2)*y(3) + q3*y(2)*y(3) - s*y(2)*y(3) + a*q1*r*y(2) + a*q1*y(2)*y(3) + q1*r*y(2)*y(3) - a*q1*r*y(2)*y(3))
            outputs(2) = y(2)*(y(2)-1)*(h - b*c2 - c2*y(3) + b*c2*y(3) + a*q2*r + q2*r*y(3) - a*q2*r*y(3))*(-y(1))
            outputs(3) = y(3)*(y(3)-1)*(c3 + m + p + q3 + s - 2*c3*y(1) - p*y(1) - q3*y(1) - q3*y(2) - 2*s*y(1) + q3*y(1)*y(2))
  
end



     
