from scipy.integrate import solve_ivp
import numpy as np
import matplotlib.pyplot as plt

def ball(t, y):
    return y

def hit_ground(t, y):
    if(ball(t, y) == 0):
        return ball(t, [0, -y[1]*-0.8])
    else:
        return ball(t, [y[1], -9.81])

hit_ground.terminal = False
hit_ground.direction = -1

sol = solve_ivp(hit_ground, (0, 10), [0, 15], max_step=0.001)
print(sol)

plt.plot(sol.t, sol.y[0])
plt.show()
