%{
SetX = zeros(1,1000);
SetY = zeros(1,1000);
SetX(1,1) = 0.1;
SetY(1,1) = 0;
i = 2;
hold on 
while (i < 12000) 
  SetX(1,i) = SetX(1,i-1);
  SetY(1,i) = SetX(1,i) + r*SetX(1,i).*(1-SetX(1,i));
  SetX(1,i+1) = SetY(1,i);
  SetY(1,i+1) = SetY(1,i);
  plot(SetX,SetY,'-*g'); 
  i = i+2; 
end
hold off 
%}