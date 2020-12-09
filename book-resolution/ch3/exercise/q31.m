% initial conditions
xnm1 = 0
xnm2 = 0
xnm3 = 0
while 1:
   x = readAD()
   y = 0.06* (x + 0.96*xnm1 - 0.58*xnm2 - 0.1*xnm3) + 0.19xnm1 + 0.19xnm2 + 0.06*xnm3 
end