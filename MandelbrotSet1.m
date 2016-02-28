c = -2.1-1.2i;
SetOfC = zeros(1,10000000);
i = 1; 
hold on
while (real(c) <= 0.7)
  while (imag(c) <= 1.2)
    k = 0;                  
    Zn = 0;
    while (k < 1500 && abs(Zn) <= 3)
      Zn = Zn^2 + c;
      k = k + 1;  
      if (k == 1500)
        SetOfC(1,i) = c;
        i = i + 1;
      end
    end
    c = c + 0.005i;
  end
c = c + (0.005 - 2.4i);
end
plot(SetOfC,'.');
plot(1, 1, 'w');
hold off