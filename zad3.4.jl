function F(t)
    tp = rem(t,3)

    F = 4*tp * (tp < 1) + 4 * ((tp >= 1) & (tp < 2)) + 0 * ((tp >= 2) & (tp < 3))
end

function difjed!(dx,x,para,t)

    A,B,C = para

    dx[1] = x[2]
    dx[2] = (1/2 * (C*((x[4] - x[2])) - (4*x[1]) +(B*(x[3]-x[1])) + F(t)))
    dx[3] = x[4]
    dx[4] = -3*x[4] - C*((x[4] - x[2]) - B*(x[3] - x[1]))

end

para = (12,8,4)
time = (0.0,9.0)
x0y0 = [0,0,0,0]

prob = ODEProblem(difjed!,x0y0,time,para)

sol = solve(prob)

plot(sol)