%carefull with this you need to put it before you update the colors of the car
function Add_cars ()
  global Tcars;
  global Cars;
  global Vmax;
  global T2;
  global T1;
  global Lx;
  global Date;
  global ULine;
  global DLine;
  [Down,Up]=Entrance_test();
  p=p(T1);
  if Up
    if B(p) %if true then yes a car would enter
      if (Date>7);
        if B(0.995) %if true then yes a regular car would enter
          i=randi([1, size(Cars)(1)]);
          while ismember(i,Tcars(:,9))
            i=randi([1, size(Cars)(1)]);
          endwhile
          Tcars=[Tcars;[Cars(i,1),Lx,ULine,rand()*Vmax,Cars(i,5),Cars(i,6),Cars(i,7),Cars(i,8),Cars(i,9)]];
        else %if true then a new car would enter
          Cars=[Cars;[rand()*10,Lx,15,rand()*Vmax,0,0,randi([1,4]),randi([1,2]),size(Cars)(1)+1]];
          Tcars=[Tcars;[Cars(size(Cars)(1),:)]];
        endif
      else
      Cars=[Cars;[rand()*10,Lx,15,rand()*Vmax,0,0,randi([1,4]),randi([1,2]),size(Cars)(1)+1]];
      Tcars=[Tcars;[Cars(size(Cars)(1),:)]];
      endif
    endif
  endif
  if Down
    if B(p) %if true then yes a car would enter
      if (Date>7);
        if B(0.995) %if true then yes a regular car would enter
          i=randi([1, size(Cars)(1)]);
          while ismember(i,Tcars(:,9))
            i=randi([1, size(Cars)(1)]);
          endwhile
          Tcars=[Tcars;[Cars(i,1),0,5,rand()*Vmax,Cars(i,5),Cars(i,6),Cars(i,7),Cars(i,8),Cars(i,9)]];
        else %if true then a new car would enter
          Cars=[Cars;[rand()*10,0,5,rand()*Vmax,0,0,randi([1,4]),randi([1,2]),size(Cars)(1)+1]];
          Tcars=[Tcars;[Cars(size(Cars)(1),:)]];
        endif
      else
        Cars=[Cars;[rand()*10,0,5,rand()*Vmax,0,0,randi([1,4]),randi([1,2]),size(Cars)(1)+1]];
        Tcars=[Tcars;[Cars(size(Cars)(1),:)]];
      endif
    endif
  endif
endfunction
