/*
Bakalarska prace
Robin Vyslouzil
xvyslo05@stud.fit.vutbr.cz
Obsluzna funkce skakajiciho micku pro nastroj MATLAB
*/

function dh = new_height(t, res)
        dh(1) = res(2);
        dh(2) = -9.81;
        dh = dh(:);
