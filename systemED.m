function Xprime = systemED(t, X);
    A = [1 0; 0 -1];
    Xprime = A*X+X(1)*X(2)*[-1; 1];