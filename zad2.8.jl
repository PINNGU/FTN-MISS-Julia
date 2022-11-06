t = 0:0.01:4
tp = rem.(t,2)
y1 = 2 * tp
y2 = -2*tp .+ 4

y12 = y1 .* (tp .< 1) .+ y2 .* (tp .>= 1)

ykrug = sqrt.((1 .- (tp .-1).^2))
ys = min.(y12,ykrug)
plot(t,y12)
plot!(t,ykrug)
plot!(t,ys,lw = 2)