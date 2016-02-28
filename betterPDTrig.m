r = 1;
while r < 4.5;
  Xk = 0.1;
  Yk = 0;
  plotFrom = 899;
  k = 1;
  hold on;
  while k < 1001;      
    Yk = r.*(sin(Xk));   
    k = k+1;   
    if k > plotFrom;
      plot (r,Yk,'*');
    end
    Xk = Yk;   
  end
  hold off;
  r = r + 0.01;
end
