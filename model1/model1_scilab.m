function dh = new_height(t, x)
    dh = x(2)
endfunction
function dv = new_velocity(t, x)
    dv = -9.81
endfunction

height = 10
velocity = 15

x = [height;velocity]

t = linspace(0, 10, 21)

t0 = 0

[y, rt] = ode("root", x, t0, t, 1e-3, 1e-6, new_height, 1, new_velocity)
