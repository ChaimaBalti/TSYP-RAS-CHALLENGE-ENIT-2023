function Delete_cars()
  global Tcars;
  global ULine;
  global DLine;
  global Lx;
  if size(Tcars)(1)>0
    for i=1:size(Tcars)(1)
      if size(Tcars)(1)>=i
        if (Tcars(i,3)==ULine)&&(Tcars(i,2)<=1)
          Tcars = Tcars([1:i-1, i+1:end], :);
        endif
      endif
      if size(Tcars)(1)>=i
        if (Tcars(i,3)==DLine)&&(Tcars(i,2)>=Lx-1)
          Tcars = Tcars([1:i-1, i+1:end], :);
        endif
      endif
    endfor
  endif
endfunction
