t = 0:0.01:10
tp = rem.(t,5)

y1 = 2*tp
y2 = 2
y3 = -2*tp .+ 10

ys = y1 .* (tp .< 2) .+ y2 .* ((tp .>= 2) .& (tp .< 4)) .+ y3 .* (tp .>= 4)
using Plots
plot(t,ys,xticks = 1:10)