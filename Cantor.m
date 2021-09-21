function Cantor(A, B, pas, nbIter)
    hold on;
    plot([A(1); B(1)], [A(2); B(2)], 'b');
    
    if nbIter > 0
        V = (B - A) / 3;
        Vpas = pas/sqrt(sum(V.^2)) * MatRot(pi/2)*V;
        
        A1 = A + V;
        A2 = A1 + V;
        
        Cantor(A + Vpas, A1 + Vpas, pas, nbIter-1);
        Cantor(A2 + Vpas, B + Vpas, pas, nbIter-1);
    end
end