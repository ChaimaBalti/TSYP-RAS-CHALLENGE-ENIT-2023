function Update_Speed()
  global Number_Speeding;
  global dt;
  global Date;
  global Vmax;
  global Amax;
  global Lx;
  global Tcars;
  global Cars;
  for (i=1:size(Tcars)(1))
    %calcul de risque de depassement de vitesse
    Risk=-0.005*Tcars(i,1)+0.051;
    if mean(Tcars(:,1))>7    %here after the scoring systeme the driver will be alerted and it will affect its decision so reducing the risk
      Risk-=0.5*Risk;
    elseif mean(Tcars(:,1))>3
      Risk-=0.3*Risk;
    elseif mean(Tcars(:,1))<=3
      Risk-=0.2*Risk;
    endif
    u=0;
    if B(Risk)
      Number_Speeding+=1;
      u=0.0144;
    endif
    v1=Tcars(i,4)+randi([-1,1,1,1,1,1,1,1,1,1])*rand()*Amax*dt;
    next=distance(Tcars(i,:));
    d=min(next./(2*dt));
    if (d<Vmax*2*dt)
      v1=Tcars(i,4)-rand()*Amax*dt;
    endif
    va=min([v1,Vmax*(1+u)]);
    v=max([va,Tcars(i,4)-Amax*dt,0.05]);
    if v>Vmax
      Tcars(i,6)=Date;
    endif
    Tcars(i,4)=v;
    Cars(Tcars(i,9),:)=Tcars(i,:);
  endfor
endfunction
