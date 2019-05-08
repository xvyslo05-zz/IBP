from scipy.integrate import solve_ivp
import matplotlib.pyplot as pyplot

def bounce(t, y):
    if(y[0] <= 0):
      dydt1 = -y[1] * -0.8
    else:
      dydt1 = -9.81

    dydt0 = y[1]

    dydt = [dydt0, dydt1]
    print(y[0])
    print(dydt)
    return dydt

def situation(t, y):
    dydt1 = -y[1] * -0.8

    # print('bounce')
    # print(dydt1)
    return dydt1

situation.terminal = True
situation.direction = 1

count = solve_ivp(bounce, [0, 6], [10, 15], events=situation)

print(count.t_events)
print(count.t)
print(count.y)

pyplot.plot(count.y)
pyplot.show()

