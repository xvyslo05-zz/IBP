# @TODO: scipy zakomponovat!!


import math
import random
import pprint

height      = 2     # in meters
velocity    = 10    # in m/s
g           = 9.8   # acceleration in m/s^2
cr          = 0.9   # coeficient of restitution, from 0 to 1, where 1 equals perfect elastic collision



pprint.pprint(['#', 'velocity', 'restitution_velocity', 'height'])
for j in range(20):
    velocity = velocity * math.sqrt(1 - math.exp(-2 * g * height / (velocity ** 2)))

    restitution_velocity = cr * velocity * (1 - 0.01 * random.random())

    height =- ((velocity ** 2)/g) * math.log((math.cos(math.atan(restitution_velocity/velocity))))

    result = [j, velocity, restitution_velocity, height]

    pprint.pprint(result)

    if height < 0.0000000001 :
      print("END OF SIMULATION")
      break
