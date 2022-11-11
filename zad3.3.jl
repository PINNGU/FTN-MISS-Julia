function difj!(dx,x,para,t)
    alfa,beta,gama = para

    dx[1] = alfa*(x[2] - x[1])
    dx[2] = x[1]*(beta - x[3]) -x[2]
    dx[3] = x[1]*x[2] - gama*x[3]

end

parametri = (10,27,8/3)
time = (0.0,30)
x0y0z0 = [1,0,0]

prob = ODEProblem(difj!,x0y0z0,time,parametri)

sol = solve(prob)

plot(sol)