    function [dh] = new_height(t, x)
        dh(1) = x(2)
        dh(2) = -9.81
        