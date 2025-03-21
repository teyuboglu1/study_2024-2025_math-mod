model lr3

Real y11(start=52000);
Real y21(start=49000);
parameter Real a = 0.36;
parameter Real b = 0.48;
parameter Real c = 0.49;
parameter Real d = 0.37;

Real y12(start=52000);
Real y22(start=49000);
parameter Real a2 = 0.11;
parameter Real b2 = 0.68;
parameter Real c2 = 0.6;
parameter Real d2 = 0.15;

equation
  der(y11) = -a*y11 - b*y21 + sin(time+1)+1;
  der(y21) = -c*y11 - d*y21 + cos(time+2)+1.1;
  
equation
  der(y12) = -a2*y12 - b2*y22 + sin(5*time)+1.1;
  der(y22) = -c2*y12*y22 - d2*y22 + cos(5*time)+1;
  
end lr3;