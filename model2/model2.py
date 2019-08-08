#
# Bakalarska prace
# Robin Vyslouzil
# xvyslo05@stud.fit.vutbr.cz
# Model kruhoveho testu pro nastroj SciPy
#

import numpy
import time
from scipy.integrate import quad
from scipy.integrate import odeint
import matplotlib.pyplot as pyplot

startTime = time.time()

def model2(y, t):
    dxdt = y[1]
    dydt = -y[0]

    result = [dxdt, dydt]

    return result


y0 = [100, 0]

t = numpy.linspace(0, 10000, 5000)

y = odeint(model2, y0, t)

pyplot.plot(t, y)

endTime = time.time() - startTime

print(endTime)


# pyplot.show()

