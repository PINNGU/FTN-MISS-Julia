function difjedn!(dx,x,para,t)
    m,c,k = para
    f = cos(t)
    g = 9.81

    dx[1] = x[2]
    dx[2] = 1/m * (f + m*g - k*x[1] - c*x[2])
end

x0 = [0,0]
time = (0.0,20.0)
parametri = (5,10,20)

prob = ODEProblem(difjedn!,x0,time,parametri)

sol = solve(prob)

plot(sol)