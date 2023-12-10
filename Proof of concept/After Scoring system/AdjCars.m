function s = AdjCars(Karhba) %10 nbre of adj cars max, colone1=score, colone2=distance,
  global Tcars;
  s=ones(10,2)*inf;
  for (i=1:size(Tcars)(1))
    if Tcars(i,9)!=Karhba(9)
      d=sqrt((Tcars(i,2)-Karhba(2))^2 + (Tcars(i,3)-Karhba(3))^2);
      if (d<10)&&(d>0)
        s(i,1)=Tcars(i,1);
        s(i,2)=d;
      endif
    endif
  endfor
endfunction
