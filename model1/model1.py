import math
import random


height      = 2     # in meters
velocity    = 10    # in m/s
g           = 9.8   # acceleration in m/s^2
cr          = 0.9   # coeficient of restitution, from 0 to 1, where 1 equals perfect elastic collision
counter = 0

for j in range(900):
    velocity = velocity * math.sqrt(1 - math.exp(-2 * g * height / (velocity ** 2)))

    restitution_velocity = cr * velocity * (1 - 0.01 * random.random())

    height =- ((velocity ** 2)/g) * math.log((math.cos(math.atan(restitution_velocity/velocity))))

    counter += 1

    print("#############################")

    print(velocity, restitution_velocity)

    print(height)

    print(counter)
