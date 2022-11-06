t = 0:0.5:9
t2 = 0:0.01:3pi

ysin = 2sin.(t*pi/3)

y1 = min.(ysin,1)
y2 = max.(y1,-1)

scatter(t,ysin,label = "sin",color = :blue)
plot!(t,y2,color = :red,lw = 1)