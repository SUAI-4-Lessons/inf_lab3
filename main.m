x = -2:0.1:3
y1 = arrayfun(@f1, x)
definition_anfun

y2 = arrayfun(f2, x)

plot(x, y1, x, y2)

legend('f1',' f2')
