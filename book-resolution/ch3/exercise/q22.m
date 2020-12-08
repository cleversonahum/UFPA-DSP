initialization() {
  xnm1 = 0;
  xnm2 = 0;
  xnm3 = 0;
  ynm1 = 0;
  ynm2 = 0;
  ynm3 = 0;
}

ProcessSample() {
  xn = readFromADConverter()
  yn = 1.76004*ynm1-1.18289*ynm2+0.27806*ynm3+0.018099*xn+0.054297*xnm1+0.054297*xnm2+0.18099*xnm3;
  writeToDACConverter(yn)
  ynm3 = ynm2
  ynm2 = ynm1
  ynm1 = yn
  xnm3 = xnm2
  xnm2 = xnm1
  xnm1 = xn  
}