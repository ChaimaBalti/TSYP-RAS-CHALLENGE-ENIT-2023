function Update_Position()
  global Tcars;
  global ULine;
  global DLine;
  global Cars;
  global dt;
  for (i=1:size(Tcars)(1))
    if Tcars(i,3)== ULine
      Tcars(i,2)=Tcars(i,2)-Tcars(i,4)*dt;
    endif
    if Tcars(i,3)== DLine
      Tcars(i,2)=Tcars(i,2)+Tcars(i,4)*dt;
    endif
    Cars(Tcars(i,9),:)=Tcars(i,:);
  endfor
endfunction
