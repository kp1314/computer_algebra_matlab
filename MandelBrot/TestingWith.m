%Testing with the Mandelbrot Set
c = -2.1-1.2i;
maxReal = 0.7;
maxImag = 1.2;
stepSize = 0.005;
n = max(maxReal + 2.1,maxImag + 1.2);
depth = 512;
iterationCounter = zeros(n/512,n/512);
while (real(c) < maxReal) 
  while (imag(c) < maxImag)
    Zn = 0;
    for k = 1:depth
      Zn = Zn.^2 + c;
      iterationCounter(abs(Zn) < 2) = k;
    end
    c = c + 0.005i;
  end
  c = c + (0.005 - 2.4i);
end
disp(iterationCounter)
image(iterationCounter)
axis image
