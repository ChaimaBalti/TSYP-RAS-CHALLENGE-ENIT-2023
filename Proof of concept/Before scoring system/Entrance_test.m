%test if there is possibility of a car entering the road
%H=1 if possible from higher line else 0
%L=1 if possible from lower line else 0
function [L,H] = Entrance_test ()
  global ULine;
  global DLine;
  global Tcars ;
  global Cars;
  global s ;
  global Lx;
  global Vmax ;
  same_Uline_condition=(Tcars(:,3)==ULine);
  same_Uline_cars=Tcars(same_Uline_condition,2);
  same_Dline_condition=(Tcars(:,3)==DLine);
  same_Dline_cars=Tcars(same_Dline_condition,2);
  if size(same_Uline_cars)(1)>0
    H=((Lx-max(same_Uline_cars))>Vmax*s);
  else
    H=1;
  endif
  if size(same_Dline_cars)(1)>0
    L=(min(same_Dline_cars)>Vmax*s);
  else
    L=1 ;
  endif
endfunction
