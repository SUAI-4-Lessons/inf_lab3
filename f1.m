function y = f1(x)
  if (x >= 0 && x < 1)
    y = rectInt(0, x, 0.0005, @(x) exp((-x + 3) ^ 2))
  elseif (x >= 1 && x <= 3)
    func = @(n) (x - 2.0) / n
    y = -2 + getSumInfWithE(0.000001, func, x >= 2)
  elseif (x >= -2)
    y = 0
  else
    error("Аргумент функции не принадлежит области определения функции")
  endif
endfunction
