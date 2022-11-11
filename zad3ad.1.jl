function difjedn!(dx,x,para,t)
    m,c1,c2,k = para
    f = sin(t)

    dx[1] = x[2]
    dx[2] = 1/m * (f - k*x[1] - x[2]*(c1 + c2))
end

x0 = [0,0]
time = (0.0,10.0)
parametri = (10,20,20,40)

prob = ODEProblem(difjedn!,x0,time,parametri)

sol = solve(prob)

plot(sol)
