from scipy.misc import derivative
from scipy.integrate import odeint
from scipy.integrate import solve_ivp
import matplotlib.pyplot as pyplot
import numpy as np
import time

start_time = time.time()

position = 0.1
velocity = 15
cr = -0.8
force = 10000

def bounce(y, t):

    dydt0 = y[1]
    dydt1 = -9.81


    if(y[0] <= 0):
      dydt1 += (force / (1 + np.exp(y[0]/0.001)))*cr


    dydt = [dydt0, -dydt1]
    return dydt


t = np.linspace(0, 10, 1000)

y0 = [position, velocity]

z = odeint(bounce, y0, t, hmax=0.01)


print("--- %s seconds ---" % (time.time() - start_time))

pyplot.plot(t, z[:, 0], 'r', label='position(t)')


pyplot.grid()
pyplot.legend(loc='best')
pyplot.show()



