function d=distance(Karhba)
  global Tcars;
  d=inf;
  for (i=1:size(Tcars)(1))
    if ((Tcars(i,9)!=Karhba(9))&&(Tcars(i,3)==Karhba(3)))
      if ((Tcars(i,2)<Karhba(2))&&(Karhba(3)==15))
        d=min(d,sqrt((Tcars(i,2)-Karhba(2))^2));
      endif
      if ((Tcars(i,2)>Karhba(2))&&(Karhba(3)==5))
        d=min(d,sqrt((Tcars(i,2)-Karhba(2))^2));
      endif
    endif
  endfor
endfunction
