from scipy.integrate import odeint
import matplotlib.pyplot as pyplot
import numpy as np
import math
import time

start = time.time()


def stiff(y, t):
  dy = -50*(y - math.cos(t))
  return dy


t = np.linspace(0, 1, 1000)

y0 = 1

solve = odeint(stiff, y0, t, hmax=1.974/50)

end = time.time() - start


text_file = open("model3/python_output.txt", "a")
text_file.write("%.9f\n" % end)
text_file.close()

# pyplot.plot(solve, t)

# pyplot.show()
