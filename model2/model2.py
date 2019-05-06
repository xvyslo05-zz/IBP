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


y0 = [1, 0]

t = numpy.linspace(0, 20, 5000)

y = odeint(model2, y0, t)

pyplot.plot(t, y)

endTime = time.time() - startTime

print(endTime)

text_file = open("model2/python_output.txt", "a")
text_file.write("%.9f\n" % endTime)
text_file.close()

# pyplot.show()

