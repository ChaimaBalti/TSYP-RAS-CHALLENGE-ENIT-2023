function r = RiskOfAccident (i) %sans depandence de score
  global Day_of_the_week;
  global Date;
  global Tcars;
  global T1;
  hour=floor(T1 / 60);
  probGender=[0.39,0.61];
  probDays=[0.136489,0.143715,0.149399,0.150292,0.165719,0.135271,0.119113];
  probTime=[0.016726,0.010880,0.006820,0.006820,0.007389,0.006171,0.017376,0.043196,0.067230,0.045388,0.040598,0.048961,0.056106,0.062683,0.051884,0.070965,0.074781,0.099708,0.077623,0.057486,0.049042,0.032559,0.032640,0.016970];
  probAge=[0.092,0.361,0.182,0.365];
  r= (probGender(Tcars(i,8))*0.5/366+ (1/7)*probDays(Day_of_the_week)/366 + (1/24)*probTime(hour+1)/366 + (1/4)*probAge(Tcars(i,7))/366)/(60);
  if (Tcars(i,6) == Date)
    r=r+0.05*r;
  endif
endfunction
