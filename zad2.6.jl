t = 0:0.1:15
tp = rem.(t,3)

y1 = 3*tp
y2 = -3tp .+ 9
y3 = 3

y =  y1 .* (tp .< 1) .+ 3 .* ((tp .>= 1) .& (tp .< 2)) .+ y2 .* (tp .>= 2)

plot(t,y,color = :blue)