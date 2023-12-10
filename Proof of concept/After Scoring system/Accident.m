function b=Accident()
  global Number_Accident;
  global Tcars;
  global Cars;
  global T1;
  global Date;
  b=0;
  for (i=1:size(Tcars)(1))
    prob=B(RiskOfAccident(i));
    if prob
      Number_Accident+=1;
      b=1;
      Tcars(i,5)=Date;
      Cars(Tcars(i,9),:)=Tcars(i,:);
    endif
  endfor;
endfunction
