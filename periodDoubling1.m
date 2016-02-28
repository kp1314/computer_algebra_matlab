r = 1;
while r < 4.5;
  Xk = zeros(1,1000);
  Xk(1,1) = 0.1;
%  plotFrom = 799;
  k = 1;
   hold on;
  while k < 1001;
    Xk(1,k+1) = r*Xk(1,k).*(1-Xk(1,k));
    k = k+1;
   
%    if k > plotFrom;
      plot (r,Xk(1,k),'*');
%    end

  end
  r = r + 0.01;
  hold off;
end
