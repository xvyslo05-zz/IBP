from scipy.misc import derivative
from scipy.integrate import odeint
import matplotlib.pyplot as pyplot
import numpy as np
import time

start_time = time.time()

position = 10
velocity = 15
cr = -0.8

down = True

def bounce(y, t, down):
  dydt0 = y[1]
  dydt1 = -9.81

  if(y[0] <= 2 and down):
    dydt0 = -dydt0
    dydt1 = -dydt1 * cr
    down = False

    dydt = [dydt0, dydt1, down]
    return dydt

t = np.linspace(0, 10)

y0 = [position, velocity]

z = odeint(bounce, y0, t, args=(down,))

print(position)
