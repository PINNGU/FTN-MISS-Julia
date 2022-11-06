t = 0:0.01:2pi

ysin = sin.(t)

tp = rem.(t,1)

y = ysin  .* (tp .<= 0.5) .+ 0 .* (tp .> 0.5)

plot(t,ysin,color = :red,label = "sin(t)",ls = :dash,xlabel = "t",ylabel = "y")
plot!(t,y,color = :darkblue,label = "y(t)")