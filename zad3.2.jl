function difeq(dx,x,para,t)
    A,B = para;

    dx[1] = u(t) + A* +x[3]
    dx[2] = x[3]
    dx[3] = x[2] - B * x[1]
end

function u(t)
    tp = rem(t,5)

    u = 3*tp * (tp < 1) + 3 * ((tp >= 1) & (tp < 3)) + (-3/2*tp + 15/2) * ((tp >= 3) & (tp < 5))
end

A = 2
B = 1
para = A,B

x0y0 = [-1,1,0.5]

time = (0.0,15.0)

prob = ODEProblem(difeq,x0y0,time,para)

sol = solve(prob)

plot(sol)