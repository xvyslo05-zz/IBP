# This is the problem regarding a ball bouncing including air drag
# These variables were to be set in the workspace
# You'd want to comment these out before submission

h_i = 2# Height in meters
v_t = 10# Terminal velocity in meters per second
g = 9.8# Acceleration due to gravity in meters per sec^2
C_R = 0.9# Coefficient of restitution


# Part (a) compute the sequence of bounces
h(1).lvalue = h_i# The first height
b = 1#Initialize bounce number
for b in mslice[1:3]:# Loop through three bounces
    #The equations in the loop come right from the
    #problem statement
    v_impact(b).lvalue = v_t * sqrt(1 - exp(-2 * g * h(b) / (v_t ** 2)))
    v_r(b).lvalue = C_R * v_impact(b) * (1 - 0.01 * rand())
    h(b + 1).lvalue = -((v_t ** 2) / g) * log(cos(atan(v_r(b) / v_t)))

sprintf(mstring('The height of the third bounce is %0.3f meters.'), h(4))

    # Part (b) Make a nice picture

plot(mcat([0, length(h)]), zeros(1, 2), mstring('k'), mstring('LineWidth'), 2)# plot the floor
hold(mstring('on'))
ylim(mcat([-0.05 * h_i, 1.2 * h_i]))# set the vertical limits
# Plot the first drop as a half parabola
traj = lambda x: h(1) *elmul* (x + 0.5) *elmul* (x - 0.5) /eldiv/ ((0 + 0.5) *elmul* (0 - 0.5))
plot(mslice[0:0.05:0.5], traj(mslice[0:0.05:0.5]), mstring('ro'), mstring('MarkerSize'), 15)
# Plot each bounce as a full parabola
for b in mslice[1:length(h) - 1]:
    traj = lambda x: h(b + 1) *elmul* (x - (b - 0.5)) *elmul* (x - (b + 0.5)) /eldiv/ ((b - (b - 0.5)) *elmul* (b - (b + 0.5)))
    plot(mslice[(b - 0.5):0.05:(b + 0.5)], traj(mslice[(b - 0.5):0.05:(b + 0.5)]), mstring('ro'), mstring('MarkerSize'), 15)

