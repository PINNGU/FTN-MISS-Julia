t = 0:0.01:10
tp = rem.(t,2)

y = (0.4 * t)  .* (tp .< 1) .+ 0 .* (tp .>= 1)

plot(t,y,xlabel = "t",ylabel = "y",color = :blue,lw = 2)

y1 = 4 .* (tp .< 1) .+ 0 .* (tp .>= 1)


plot!(t,y1,ls = :dash)