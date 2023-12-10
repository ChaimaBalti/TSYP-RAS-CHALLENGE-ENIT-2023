function Update_Score()
  global Cars;
  global Tcars;
  global T1;
  global Date;
  for i=1:size(Cars)(1)
  %on a supposer que Tout les score initialement suit la "loi khi deux"
    if Cars(i,5)+180==Date
      Cars(i,1)=min(10,Cars(i,1)+1);
      Cars(i,5)=0;
    endif
    if Cars(i,6) +180 == Date
      Cars(i,1)=min(10,Cars(i,1)+0.5);
      Cars(i,6)=0;
    endif
    if (Cars(i,5)==Date)
      Cars(i,1)=max(0,Cars(i,1)-2);
      Cars(i,5)=0;
    endif
    if (Cars(i,6) == Date)
      Cars(i,1)=max(0,Cars(i,1)-1);
      Cars(i,6)=0;
    endif
    for j=1:size(Tcars)(1)
      if (i==Tcars(j,9))
        Tcars(j,:)==Cars(i,:);
      endif
    endfor
  endfor
endfunction
