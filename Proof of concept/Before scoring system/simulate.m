global Tcars;
global Lx;
global T1;
global Date;
size(Tcars)(1);
h1=[];
TGx=[];
TGy=[];

h2=[];
TOx=[];
TOy=[];

h3=[];
TRx=[];
TR_y=[];


%clf;

if size(Tcars)(1)>0
  for i=1:size(Tcars)(1)
    if (Tcars(i,1)>=7)
      %drawnow;
      TGx=[TGx,Tcars(i,2)];
      TGy=[TGy,Tcars(i,3)];
    endif
    if ((Tcars(i,1)>=3)&&(Tcars(i,1)<7))
      TOx=[TOx,Tcars(i,2)];
      TOy=[TOy,Tcars(i,3)];
    endif
    if (Tcars(i,1)<3)
      TRx=[TRx,Tcars(i,2)];
      TR_y=[TR_y,Tcars(i,3)];
    endif
  endfor
endif
hold on ;


if(size(TGx)(1)!=0)
  %drawnow;
  h1=plot(TGx,TGy,'s','MarkerFaceColor','green','MarkerEdgeColor','black','MarkerSize',16);
  drawnow;
end;
if(size(TOx)(1)!=0)
  %drawnow;
  h2=plot(TOx,TOy,'s','MarkerFaceColor',[1, 0.647, 0],'MarkerEdgeColor','black','MarkerSize',16);
  drawnow;
end;
if(size(TRx)(1)!=0)
  %drawnow;
  h3=plot(TRx,TR_y,'s','MarkerFaceColor','red','MarkerEdgeColor','black','MarkerSize',16);
  %drawnow;
end;
%h=rectangle ("Position", [0, 0,80,Lx], "Curvature", [0, 0]);
%set (h, "FaceColor", [0.5, 0.5, 0.5],'EdgeColor',[0.5, 0.5, 0.5]);
line([0,80],[10,10], 'Color', 'black', 'LineStyle', '--', 'LineWidth', 3);
line([0,Lx],[0,0],'color',[0.5, 0.5, 0.5]);
line([0,Lx],[-0.5,-0.50],'color',[0.5, 0.5, 0.5]);


line([0,Lx],[20,20],'color',[0.5, 0.5, 0.5]);
line([0,Lx],[19.5,19.50],'color',[0.5, 0.5, 0.5]);
H=rectangle("Position", [5, -7.5,6,2.5], "Curvature", [0.2, 0.2]);
Hp=rectangle("Position", [15, -7.5,9,2.5], "Curvature", [0.2, 0.2]);
Hg=rectangle("Position", [15, -10,9,2.5], "Curvature", [0.2, 0.2]);




hold off;
[heures,minutes] = convertirMinutes(T1);

h=num2str(heures);
m=num2str(minutes);
%hold on
drawnow;
t1=text(6,-6,h,'FontSize', 30);
drawnow;
t2=text(6.5,-6,'     :    ','FontSize', 30);
drawnow;
t3=text(9,-6,m,'FontSize', 30);
drawnow;
t4=text(16,-6,strcat('Number of the Day:  ',num2str(mod(Date,360))),'FontSize',30);
drawnow;
t5=text(16,-9,strcat('Number of the year:  ',num2str(fix(floor(Date)/360))),'FontSize',30);
hold off;
axis([0 40 -10 20]);
delete(t1);
delete(t2);
delete(t3);
delete(t4);
delete(t5);
axis off;
delete(h1);
delete(h2);
delete(h3);



