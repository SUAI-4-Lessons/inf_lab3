##
# 'y' - это нахождение кусочно заданной функции вида:
# ```latex
# \begin{equation}
# y(x) = \begin{cases}
#    0, -2 \le x < 0; \\
#   \int\limits^{x}_0 e^{(-x + 3)^2}dx  , 0 \le x < 1; \\
#   -2 + \sum\limits_{n=0}^{\infty} \frac{(-1)^n (x-2)^{n + 1}}{
# (n + 1)!} , 1 \le x \le 3 
# \end{cases}
# \end{equation}
# ```
#
# -- x - значение аргумента x
#
# Ответом является значение данной функции, если x - входит
# в область определения, иначе будет ошибка
#
# Author: Pankov Vasya <pank@pank.su>
##
function y = f1(x)
  # x - скаляр?
  validateattributes(x, {"numeric"}, {"scalar"})

  if (x >= 0 && x < 1)
    y = rectInt(0, x, 0.0005, @(x) exp((-x + 3) ^ 2))
  elseif (x >= 1 && x <= 3)
    func = @(n) (x - 2.0) / n
    y = -2 + getSumInfWithE(0.000001, func, x >= 2)
  elseif (x >= -2 && x < 0)
    y = 0
  else
    error("Аргумент функции не принадлежит области определения функции")
  endif
endfunction
