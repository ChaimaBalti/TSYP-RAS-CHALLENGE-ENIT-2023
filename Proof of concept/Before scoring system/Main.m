%clear all;
%clc;
%Main
global Number_Accident;
global Number_Speeding;
%Number_Accident=0;
%Number_Speeding=0;
global Lx;
Lx=40;
global Date=1;
global Day_of_the_week=1;
global ULine=15;
global DLine=5;
global dt;
dt=1;
global s;
s=2;
global Vmax;
Vmax=1;
global Amax;
Amax=0.2;
global Cars;
%Cars=[rand()*10,0,ULine,rand()*Vmax,0,0,randi([1,4]),randi([1,2]),1];
global Tcars;
%Tcars=Cars(1,:);
global T1=0 ;
global T2=1439 ;
End_of_the_year=360*10;

for (Date=1:End_of_the_year)
  Date
  T1=0;
  while (T1<T2)
    %updating speed and position for the cars
    Update_Speed();
    Update_Position();
    Accident();
    %adding the new cars
    Add_cars() ;
    Delete_cars();
    %simulate() ;
    T1+=dt;
    %updating score for the cars
    if T1==T2
      Update_Score();
    end;
  endwhile
  Day_of_the_week=mod(Date, 7)+1;
endfor
