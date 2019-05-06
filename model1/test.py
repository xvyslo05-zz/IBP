from scipy.integrate import solve_ivp
import matplotlib.pyplot as pyplot

def bounce(t, y):
    dydt0 = y[1]
    dydt1 = -9.81
    print('asdasdas')
    dydt = [dydt0, dydt1]
    return dydt

def situation(t, y):
    dydt1 = -y[1] * -0.8
    print('picovina')

    return dydt1

situation.terminal = True
situation.direction = 1

count = solve_ivp(bounce, [0, 100], [1, 15], events=situation)

print(count.t_events)
print(count.t)
print(count.y)

pyplot.plot(count.t)
pyplot.show()

