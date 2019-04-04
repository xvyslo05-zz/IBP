clc
clear all

%sirka jamy 4
d=8;
%počet kroku
N=1000;
x1=linspace(-d/2,0,N/2);
x2=linspace(0,d/2,N/2);
x=[x1,x2];
dx=x(2)-x(1);

%definice potencialu trojuhlenikove jamy
alfa=pi/6;
beta=pi/3;
U1=-tan(alfa)*x1;
U2=tan(beta)*x2;
U=[U1,U2];
pot=spdiags(U',0,N,N);

%viz clanek
e=ones(N,1);
%laplacian
Lap=spdiags([e -2*e e], [-1 0 1], N,N)/dx^2;
h=1; m=1;
H=-0.5*(h^2/m)*Lap+pot;
nmodes=3;
[V,E] = eigs(H,nmodes,'sm');
[E,ind]=sort(diag(E));
V=V(:,ind);
Usc = U*max(abs(V(:)))/max(abs(U))

plot(x,V,x,Usc,'--k')
title('Vlnové funkce prvních třech stavů')
xlabel('prostorová souřadnice')
ylabel('nenormalizovaná vlnová funkce')
lgnd_str=[repmat('E=',nmodes,1),num2str(E)]
legend(lgnd_str);

for i=1:nmodes                          % cyklus pro vytvoreni vektoru pravdepodobnosti
    A(i) = V(:,i)'*V(:,i)*dx;       % normovaci konstanta
    pst(:,i) = V(:,i).*V(:,i)/A(i);   % normovana pravdepodobnost
end

figure(2)
Usc = U*max(abs(pst(:)))/max(abs(U))
plot(x,pst,x,Usc,'--k')
legend(lgnd_str);
title('Hustota pravděpodobnosti')
xlabel('prostorová souřadnice')
ylabel('Hustota pravděpodobnosti')
