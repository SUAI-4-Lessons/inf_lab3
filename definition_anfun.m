# create anonymous function from lab 2 

f2 = @(x) (x < 0) .* 0 + (0 <= x & x < (pi / 4)) .* tan(x) + (x >= pi / 4) .* 1
